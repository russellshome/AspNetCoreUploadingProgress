// Copyright © 2017 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

function humanFileSize(size) {
    var i = Math.floor(Math.log(size) / Math.log(1024));
    return (size / Math.pow(1024, i)).toFixed(2) * 1 + ' ' + ['B', 'kB', 'MB', 'GB', 'TB'][i];
};

function uploadFiles(inputId) {
    var input = document.getElementById(inputId);
    var files = input.files;
    var formData = new FormData();
    var totalFileSize = 0;
    for (var i = 0; i != files.length; i++) {
        formData.append("files", files[i]);
        totalFileSize += files[i].size;
    }
    var allowedFileSize = $(input).data("maxupload");
    if (totalFileSize > allowedFileSize) {
        alert("Max size exceeded. " +
            "Selected: " + humanFileSize(totalFileSize) +
            ", Allowed: " + humanFileSize(allowedFileSize)
        );
    } else {
        $(input).attr("disabled", "disabled");
        $.ajax({
            url: "/uploader/gettrackerid",
            type: "POST",
            success: function (id) {
                formData.append("id", id);
                startUpdatingProgressIndicator(id)
                $.ajax({
                    url: "/uploader",
                    data: formData,
                    processData: false,
                    contentType: false,
                    type: "POST",
                    success: function () {
                        $("#bar").css({ width: "100%" });
                        $("#label").html("100%");
                        stopUpdatingProgressIndicator(id);
                        $(input).removeAttr("disabled");
                    }
                }).fail(function (jqXHR, textStatus) {
                    alert("Request failed: " + textStatus + " " + jqXHR.statusText);
                    stopUpdatingProgressIndicator(id);
                    $(input).removeAttr("disabled");
                });
            }
        });
    }
}

var intervalId;

function startUpdatingProgressIndicator(id) {
    $("#progress").show();

    intervalId = setInterval(
        function () {
            // We use the POST requests here to avoid caching problems (we could use the GET requests and disable the cache instead)
            $.post(
                "/uploader/progressbyid",
                { id: id },
                function (progress) {
                    $("#bar").css({ width: progress + "%" });
                    $("#label").html(progress + "%");
                }
            );
        },
        10
    );
}

function stopUpdatingProgressIndicator() {
    clearInterval(intervalId);
}
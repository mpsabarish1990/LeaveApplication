//function openDialog(url) {
//    var options = SP.UI.$create_DialogOptions();
//    options.url = url;
//    options.height = 700;
//    options.dialogReturnValueCallback = function () {
//        window.location.href = window.location.href;
//    };
//    SP.UI.ModalDialog.showModalDialog(options);
//}

function openDialog(url) {
    var options = {
        url: url,
        width: 800
    };
    options.dialogReturnValueCallback = function () {
        window.location.href = window.location.href;
    };
    SP.SOD.execute('sp.ui.dialog.js', 'SP.UI.ModalDialog.showModalDialog', options);
}

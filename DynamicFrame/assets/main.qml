import bb.cascades 1.0

Page {
    Container {
        TextField {
            id: appLabel
            text: "Hello World"
            textStyle.base: SystemDefaults.TextStyles.BigText
        }
    }
    onCreationCompleted: {
        Application.thumbnail.connect(onThumbnail) 
    }
    function onThumbnail() {
        activeFrame.update(appLabel.text);
    }
}
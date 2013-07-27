#include "applicationui.hpp"
#include "ActiveFrameQML.h"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

ApplicationUI::ApplicationUI(bb::cascades::Application *app) :
        QObject(app) {

    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    ActiveFrameQML *activeFrame = new ActiveFrameQML();
    Application::instance()->setCover(activeFrame);

    qml->setContextProperty("activeFrame", activeFrame);

    AbstractPane *root = qml->createRootObject<AbstractPane>();
    app->setScene(root);
}

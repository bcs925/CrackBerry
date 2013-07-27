#include "ActiveFrameQML.h"

#include <bb/cascades/SceneCover>
#include <bb/cascades/Container>
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>

using namespace bb::cascades;

ActiveFrameQML::ActiveFrameQML(QObject *parent)
    : SceneCover(parent)
{
    QmlDocument *qml = QmlDocument::create("asset:///AppCover.qml")
            .parent(parent);
    Container *mainContainer = qml->createRootObject<Container>();
    setContent(mainContainer);

    m_coverLabel = mainContainer->findChild<Label*>("TheLabel");
    m_coverLabel->setParent(mainContainer);
}

void ActiveFrameQML::update(QString appText) {

    m_coverLabel->setText(appText);
}

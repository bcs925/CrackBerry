#include <bb/cascades/Application>
#include "applicationui.hpp"
#include <Qt/qdeclarativedebug.h>

using namespace bb::cascades;

Q_DECL_EXPORT int main(int argc, char **argv)
{
    Application app(argc, argv);
     new ApplicationUI(&app);

    return Application::exec();
}

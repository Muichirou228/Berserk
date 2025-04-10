QT += quick sql

SOURCES += \
    Home.cpp \
    database.cpp

resources.files = Home.qml
resources.prefix = /$${TARGET}
RESOURCES += \
        resources \
        Berserk.jpg \
        home.png \
        SignUpSignIn.qml \
        rules1.png \
        guts.png \
        Dahor.png \
        Tekur.png \
        back.png \
        enter.png \
        tick.png \
        menu.png \
        admin.png \
        Enter.qml \
        Lessons.qml \
        lessons.png \
        LessonRectangle.qml


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Berserk.jpg \
    Dahor.png \
    Enter.qml \
    Home.qml \
    LessonRectangle.qml \
    Lessons.qml \
    SignUpSignIn.qml \
    Tekur.png \
    admin.png \
    back.png \
    catnap.ico \
    enter.png \
    guts.png \
    home.png \
    lessons.png \
    menu.png \
    rules1.png \
    tick.png

RC_ICONS = catnap.ico

HEADERS += \
    database.h

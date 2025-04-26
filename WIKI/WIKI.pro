QT += quick sql

SOURCES += \
    Home.cpp \
    database.cpp \
    testmanager.cpp

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
        LessonRectangle.qml \
        Lesson1.qml \
        cardstypes.png \
        cardexample.png \
        Lesson2.qml \
        cardsontable.png \
        opennotopencard.png \
        movecard.png \
        Lesson3.qml \
        test.png \
        Tests.qml \
        TestRectangle.qml \
        TestInProcess.qml \
        QuestionPage.qml \
        backtest.png \
        nexttest.png

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    .gitignore \
    Berserk.jpg \
    Dahor.png \
    Enter.qml \
    Home.qml \
    Lesson1.qml \
    Lesson2.qml \
    Lesson3.qml \
    LessonRectangle.qml \
    Lessons.qml \
    QuestionPage.qml \
    SignUpSignIn.qml \
    Tekur.png \
    TestInProcess.qml \
    TestRectangle.qml \
    Tests.qml \
    admin.png \
    back.png \
    backtest.png \
    cardexample.png \
    cardsontable.png \
    cardstypes.png \
    catnap.ico \
    enter.png \
    guts.png \
    home.png \
    lessons.png \
    menu.png \
    movecard.png \
    nexttest.png \
    opennotopencard.png \
    rules1.png \
    test.png \
    tick.png

RC_ICONS = catnap.ico

HEADERS += \
    database.h \
    testmanager.h

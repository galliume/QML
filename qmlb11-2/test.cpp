#include "test.h"

Test::Test(QObject *parent) : QObject(parent)
{
    connect(&m_Timer, &QTimer::timeout, this, &Test::timeout);
    m_Timer.setInterval(1000);
    m_Display = "Starting";
    qInfo() << m_Display;

    emit notice(QVariant(m_Display));
}

int Test::number()
{
       qInfo() << " number";
       return 42;
}

void Test::work(QVariant data)
{
    bool ok;
    int numIn = data.toInt(&ok);
    int numOut = 0;

    if (!ok) {
        qWarning() << "not a valid number";
    } else {
        int numRand = QRandomGenerator::global()->bounded(100);
        numOut = numIn * numRand;
        qInfo() << "in : " << numIn;
        qInfo() << "random : " << numRand;
        qInfo() << "out : " << numOut;
    }

    emit status(QVariant(numOut));
}

void Test::timeout()
{
    m_Display = QDateTime::currentDateTime().toString();

    qInfo() << m_Display;

    emit notice(QVariant(m_Display));
}

void Test::bark()
{
    qInfo() << " bark bark bark";
}

void Test::start()
{
    m_Display = "Starting...";
    qInfo() << m_Display;

    emit notice(QVariant(m_Display));
    m_Timer.start();
}

void Test::stop()
{
    m_Timer.stop();
    m_Display = "Stopping...";
    qInfo() << m_Display;

    emit notice(QVariant(m_Display));
}

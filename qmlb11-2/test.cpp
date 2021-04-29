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

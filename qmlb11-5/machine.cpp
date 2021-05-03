#include "machine.h"

Machine::Machine(QObject *parent) : QObject(parent)
{
    m_Timer.setInterval(1000);
    connect(&m_Timer, &QTimer::timeout, this, &Machine::timeout);
}

int Machine::value()
{
    qInfo() << " returning value";
    return m_Value;
}

void Machine::setValue(int data)
{
    m_Value = data;
}

void Machine::start()
{
    setValue(0);
    m_Timer.start();
    emit started();
}

void Machine::stop()
{
    m_Timer.stop();
    emit stopped();
}

void Machine::pause()
{
    m_Timer.stop();
    emit paused();
}

void Machine::resume()
{
    m_Timer.start();
    emit resumed();
}

void Machine::timeout()
{
    m_Value++;
    emit progress();

    if (m_Value > 99) stop();
}

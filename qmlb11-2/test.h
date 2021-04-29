#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QDebug>
#include <QTimer>
#include <QDateTime>
#include <QVariant>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

    int number();


signals:

    void notice(QVariant data);

private slots:
    void timeout();

public slots:
    void bark();
    void start();
    void stop();

private:
    QTimer m_Timer;
    QString m_Display;
};

#endif // TEST_H

#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QDebug>
#include <QTimer>
#include <QDateTime>
#include <QVariant>
#include <QRandomGenerator>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

    int number();

signals:
    void status(QVariant data);
    void notice(QVariant data);

private slots:
    void timeout();

public slots:
    void bark();
    void start();
    void stop();
    void work(QVariant data);

private:
    QTimer m_Timer;
    QString m_Display;
};

#endif // TEST_H

#ifndef LOGIC_H
#define LOGIC_H

#include <QObject>
#include <QString>

class Logic: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString data READ getText WRITE setText NOTIFY dataChanged)

public:
    Q_INVOKABLE Logic();
    Q_INVOKABLE int setChar(QString s);
    Q_INVOKABLE void chooseWord();
    Q_INVOKABLE void resetError();
    Q_INVOKABLE QString retWord();
    ~Logic();
    QString getText();
    void setText(QString str);
private:
    QString* words;
    QString data;
    QString word;
    int score;
    int errors;
signals:
    void dataChanged();
};

#endif // LOGIC_H


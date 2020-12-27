#include "logic.h"
#include <QDebug>
#include <QTime>

Logic::Logic(): QObject()
{
    errors =0;
    score = 0;
    words = new QString[20];
    words[0] = "азбука";
    words[1] = "выхухоль";
    words[2] = "калькулятор";
    words[3] = "монитор";
    words[4] = "ноутбук";
    words[5] = "азбука";
    words[6] = "пингвин";
    words[7] = "университет";
    words[8] = "интернет";
    words[9] = "зубочистка";
    words[10] = "профилакторий";
    words[11] = "лечебница";
    words[12] = "пистолет";
    words[13] = "компьютер";
    words[14] = "микрофон";
    words[15] = "магнитофон";
    words[16] = "преподаватель";
    words[17] = "кухня";
    words[18] = "деньги";
    words[19] = "кошелек";
}

Logic::~Logic()
{
    delete[] words;
}

QString Logic::getText()
{
    return data;
}

void Logic::setText(QString str)
{
   data = str;
}
int Logic::setChar(QString s)
{
    int j = 0;
    bool check  = false;
    while ((j = word.indexOf(s, j)) != -1) {
        qDebug() << "Found s tag at index position" << j;
        check = true;
        data.replace(j,1,s);
        ++score;
        ++j;
    }
    qDebug() << "Errors" << errors;
    qDebug() << "score" << score;
    if (!check)
        errors++;

    if (errors > 6){
        return -1;
    }
    if (score == data.size())
        return 1;
    emit dataChanged();
    return -5-errors;
}


void Logic::chooseWord()
{
    qsrand(QTime::currentTime().msecsSinceStartOfDay());
    word = words[qrand()%20];

    data = word;
    for (int i=0; i < word.size(); ++i)
        data[i] ='*';
    qDebug() << "word " <<word<< endl;
    qDebug() << "data " <<data<< endl;
}

void Logic::resetError()
{
    score = 0;
    errors =0;
}

QString Logic::retWord()
{
    return word;
}


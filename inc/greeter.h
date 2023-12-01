#include <QString>
#include <QObject>

class GreeterProxy : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE void setPassword(QString password) {m_password = password;}
private:
    QString m_password;
};

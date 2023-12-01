#include <QString>
#include <QLightDM/Greeter>

class GreeterProxy : public QObject
{
    Q_OBJECT
public:
    GreeterProxy();
    ~GreeterProxy();
    Q_INVOKABLE void setPassword(QString password);
private:
    QLightDM::Greeter* m_greeter;
    QString m_password;
};

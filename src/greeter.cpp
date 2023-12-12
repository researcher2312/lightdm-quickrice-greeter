#include "greeter.h"
#include <iostream>

GreeterProxy::GreeterProxy()
{
    m_greeter = new QLightDM::Greeter();
    m_greeter->connectToDaemonSync();
}

GreeterProxy::~GreeterProxy()
{
    delete m_greeter;
}

void GreeterProxy::authenticate()
{
    sendResponse(m_password);
}

//pointer!
void GreeterProxy::sendResponse(QString &response)
{
    m_greeter->respond(response);
}

void GreeterProxy::setPassword(QString password)
{
    m_password = password;
    std::cerr << m_password.toStdString();
}

---
title: "Protecting Change With 2FA"
date: 2020-08-15T14:40:44+10:00
draft: false
---

## Using 2FA to protect mutative actions

The application uses an external system to apply changes to say, a user's profile data. Items such as "nickname", "favourite colour" etc are stored in the external system (it doesn't matter how or where).

Changes to the profile data are protected against naughtiness using multi-factor authentication. The second factor could be an SMS text, an authenticator app (such as Google Authenticator) or even a one-time passcode sent to the user's email.

### READ or COMPUTE are not mutative

Non-mutative actions are not protected using the second factor. These actions, such as VIEW are protected using the credentials factor. The username / password factor is considered to be sufficient protection for READ operations, but a second factor is considered necessary to guard against potentially site-wide harm that may be caused by a bad actor exploiting a mutative process.

### Non-refutability as a non-physical screen

The second factor, while not providing complete protection (inasmuch as anything can provide _added_ protection) can be used to warn users that their identity has been proven, and the likelihood of that user performing a naughty action is increased considerably because they used the second factor to confirm their identity to the system.

![Flow Diagram](./images/Protecting-a-CHANGE-with-2FA.svg)

```mermaid

sequenceDiagram
  participant USER as User
  participant UI as User Interface
  participant ACT as User Interaction
  participant API as API
  participant IDP as Identitity Provider
  participant BACKEND as Backend System
  UI ->> USER: DISPLAY "Home"
  USER ->> ACT: CLICK "Changes"
  UI ->> USER: DISPLAY "Changes"
  USER ->> ACT: CLICK "New Change"
  UI ->> API: SUBMIT CHANGE REQUEST
  activate API
  API -->> IDP: Is User Authenticated?
  activate IDP
  alt "NOT AUTHENTICATED"
    API ->> IDP: CHALLENGE 2FA
    IDP -->> USER: DELIVER 2nd FACTOR
    UI ->> USER: PROMPT 2nd FACTOR
    USER ->> ACT: ENTER 2nd FACTOR
    ACT ->> API: AUTHENTICATE
    API ->> IDP: VALIDATE 2nd FACTOR
    deactivate IDP
    alt AUTHENTICATION UNSUCCESSFUL
        IDP ->> API: RESPOND "INVALID"
        API ->> UI: Authentication Unsuccessful
        UI ->> USER: SHOW "Authentication Unsuccessful"
    end
  else AUTHENTICATION SUCCESSFUL
    API ->> BACKEND: SUBMIT CHANGE
    activate BACKEND
    BACKEND ->> BACKEND: PROCESS CHANGE
    alt CHANGE SUCCESSFUL
        BACKEND ->> API: RESPONSE "SUCCEEDED"
        API ->> UI: RESPONSE "SUCCEEDED"
        UI ->> USER: SHOW "Change Successful"
    else CHANGE UNSUCCESSFUL
        BACKEND ->> API: RESPONSE "FAILED"
        deactivate BACKEND
        API ->> UI: RESPONSE "FAILED"
        deactivate API
        UI ->> USER: SHOW "Change Unsuccessful"
    end
  end

```

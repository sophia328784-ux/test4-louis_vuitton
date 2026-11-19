package com.linkplay.bonjour.presenter;

/* JADX INFO: loaded from: classes2.dex */
public interface IUartPresenter {
    void connectionSuccessful(UartPresenter uartPresenter);

    void heartbeatTimeout();

    void onException(Exception exc, int i2);

    void receivedMessage(String str);
}

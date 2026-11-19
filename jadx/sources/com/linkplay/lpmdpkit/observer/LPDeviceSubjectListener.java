package com.linkplay.lpmdpkit.observer;

/* JADX INFO: loaded from: classes2.dex */
public interface LPDeviceSubjectListener {
    void notifyAccountStatusObserver(LPNotification lPNotification);

    void notifyDataObserver(LPNotification lPNotification);

    void notifyDeviceInfoObserver(LPNotification lPNotification);

    void notifyInternetStatusObserver(LPNotification lPNotification);

    void notifyMediaInfoObserver(LPNotification lPNotification);

    void notifyPassthroughObserver(LPNotification lPNotification);

    void register(LPDeviceBaseObservable lPDeviceBaseObservable);

    void unregister(LPDeviceBaseObservable lPDeviceBaseObservable);
}

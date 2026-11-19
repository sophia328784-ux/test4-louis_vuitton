package com.linkplay.lpmdpkit.observer;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceObserverManager implements LPDeviceSubjectListener {
    private static LPDeviceObserverManager instance;
    CopyOnWriteArrayList<LPDeviceBaseObservable> listenerList = new CopyOnWriteArrayList<>();

    private LPDeviceObserverManager() {
    }

    public static LPDeviceObserverManager getInstance() {
        if (instance == null) {
            synchronized (LPDeviceObserverManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPDeviceObserverManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyAccountStatusObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPDeviceAccountStatusObservable) {
                ((LPDeviceAccountStatusObservable) lPDeviceBaseObservable).updateAccountStatus(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyDataObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPDeviceDataObservable) {
                ((LPDeviceDataObservable) lPDeviceBaseObservable).updateData(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyDeviceInfoObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPDeviceInfoObservable) {
                ((LPDeviceInfoObservable) lPDeviceBaseObservable).updateDeviceInfo(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyInternetStatusObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPInternetAccessChangeObservable) {
                ((LPInternetAccessChangeObservable) lPDeviceBaseObservable).updateInternetStatus(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyMediaInfoObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPDeviceMediaInfoObservable) {
                ((LPDeviceMediaInfoObservable) lPDeviceBaseObservable).updateMediaInfo(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void notifyPassthroughObserver(LPNotification lPNotification) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null) {
            return;
        }
        for (LPDeviceBaseObservable lPDeviceBaseObservable : copyOnWriteArrayList) {
            if (lPDeviceBaseObservable instanceof LPDevicePassthroughObservable) {
                ((LPDevicePassthroughObservable) lPDeviceBaseObservable).updatePassthrough(lPNotification);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void register(LPDeviceBaseObservable lPDeviceBaseObservable) {
        if (this.listenerList == null) {
            this.listenerList = new CopyOnWriteArrayList<>();
        }
        if (this.listenerList.contains(lPDeviceBaseObservable)) {
            return;
        }
        this.listenerList.add(lPDeviceBaseObservable);
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceSubjectListener
    public void unregister(LPDeviceBaseObservable lPDeviceBaseObservable) {
        CopyOnWriteArrayList<LPDeviceBaseObservable> copyOnWriteArrayList = this.listenerList;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0 || !this.listenerList.contains(lPDeviceBaseObservable)) {
            return;
        }
        this.listenerList.remove(lPDeviceBaseObservable);
    }
}

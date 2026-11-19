package com.linkplay.passthrough;

/* JADX INFO: loaded from: classes2.dex */
public interface LPPassthroughListener {
    void connectionStateChanged(boolean z);

    void onException(Exception exc, int i2);

    void passThroughMessageCome(String str);
}

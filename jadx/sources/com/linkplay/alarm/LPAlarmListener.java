package com.linkplay.alarm;

/* JADX INFO: loaded from: classes2.dex */
public interface LPAlarmListener {
    void onFail(Exception exc);

    void onSuccess(String str);
}

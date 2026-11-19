package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public interface BatchOptOutResultListener {

    public enum ErrorPolicy {
        IGNORE,
        CANCEL
    }

    ErrorPolicy onError();

    void onSuccess();
}

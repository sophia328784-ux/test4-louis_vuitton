package com.linkplay.request;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestCallback {
    void onFailure(Exception exc);

    void onSuccess();
}

package com.linkplay.lpmdpkit.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface CheckLoginStatusCallback {
    void gotoLogin();

    void onError(Exception exc);

    void openHomePage();
}

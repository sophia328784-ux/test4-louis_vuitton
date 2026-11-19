package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;

/* JADX INFO: loaded from: classes3.dex */
public interface UnregisterCallback {

    public static class Error extends ApiCallback<Void> {
    }

    public static class Success extends ApiCallback<Void> {
        public Success(ApiCallback.Holder<Void> holder) {
            super(holder);
        }
    }

    void onUnregisterError(Error error);

    void onUnregisterSuccess(Success success);
}

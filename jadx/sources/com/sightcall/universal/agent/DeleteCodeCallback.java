package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;

/* JADX INFO: loaded from: classes3.dex */
public interface DeleteCodeCallback {

    public static class Success extends ApiCallback<Void> {
        final Code code;

        public Success(ApiCallback.Holder<Void> holder, Code code) {
            super(holder);
            this.code = code;
        }

        public Code code() {
            return this.code;
        }
    }

    void onDeleteCodeError(Error error);

    void onDeleteCodeSuccess(Success success);

    public static class Error extends ApiCallback<Void> {
        final Code code;

        public Error(Code code) {
            this.code = code;
        }

        public Code code() {
            return this.code;
        }

        public Error(ApiCallback.Holder<Void> holder, Code code) {
            super(holder);
            this.code = code;
        }
    }
}

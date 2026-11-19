package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface ResendCodeCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Pincode>> {
        final Code code;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Pincode>> holder, Code code) {
            super(holder);
            this.code = code;
        }

        public Code code() {
            return this.code;
        }
    }

    void onResendCodeError(Error error);

    void onResendCodeSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Pincode>> {
        final Code code;

        public Error(Code code) {
            this.code = code;
        }

        public Code code() {
            return this.code;
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Pincode>> holder, Code code) {
            super(holder);
            this.code = code;
        }
    }
}

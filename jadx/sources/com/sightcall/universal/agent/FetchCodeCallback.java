package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface FetchCodeCallback {

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

    void onFetchCodeError(Error error);

    void onFetchCodeSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Pincode>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Pincode>> holder) {
            super(holder);
        }
    }
}

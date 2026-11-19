package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface CreateCodeCallback {

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

    void onCreateCodeError(Error error);

    void onCreateCodeSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Pincode>> {
        final CreateCode code;

        public Error(CreateCode createCode) {
            this.code = createCode;
        }

        public CreateCode code() {
            return this.code;
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Pincode>> holder, CreateCode createCode) {
            super(holder);
            this.code = createCode;
        }
    }
}

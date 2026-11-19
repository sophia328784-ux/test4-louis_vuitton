package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface RequestTemporaryTokenCallback {

    public static class Error extends ApiCallback<JsonApi.Wrapper<TemporaryToken>> {
        final TemporaryToken temporaryToken;

        public Error(ApiCallback.Holder<JsonApi.Wrapper<TemporaryToken>> holder, TemporaryToken temporaryToken) {
            super(holder);
            this.temporaryToken = temporaryToken;
        }

        public TemporaryToken temporaryToken() {
            return this.temporaryToken;
        }
    }

    public static class Success extends ApiCallback<JsonApi.Wrapper<TemporaryToken>> {
        final TemporaryToken temporaryToken;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<TemporaryToken>> holder, TemporaryToken temporaryToken) {
            super(holder);
            this.temporaryToken = temporaryToken;
        }

        public TemporaryToken temporaryToken() {
            return this.temporaryToken;
        }
    }

    void onRequestTemporaryTokenError(Error error);

    void onRequestTemporaryTokenSuccess(Success success);
}

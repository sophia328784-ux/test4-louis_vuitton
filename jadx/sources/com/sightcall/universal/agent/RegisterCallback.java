package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface RegisterCallback {

    public static class Error extends ApiCallback {
        public Error(ApiCallback.Holder holder) {
            super(holder);
        }
    }

    public static class Success extends ApiCallback<JsonApi.Wrapper<Identity>> {
        final Agent agent;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder, Agent agent) {
            super(holder);
            this.agent = agent;
        }

        public Agent agent() {
            return this.agent;
        }
    }

    void onRegisterError(Error error);

    void onRegisterSuccess(Success success);
}

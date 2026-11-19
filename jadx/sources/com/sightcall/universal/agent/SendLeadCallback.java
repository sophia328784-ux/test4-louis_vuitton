package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface SendLeadCallback {

    public static class Error extends ApiCallback<JsonApi.Wrapper<Lead>> {
        final Lead lead;

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Lead>> holder, Lead lead) {
            super(holder);
            this.lead = lead;
        }

        public Lead lead() {
            return this.lead;
        }
    }

    public static class Success extends ApiCallback<JsonApi.Wrapper<Lead>> {
        final Lead lead;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Lead>> holder, Lead lead) {
            super(holder);
            this.lead = lead;
        }

        public Lead lead() {
            return this.lead;
        }
    }

    void onSendLeadError(Error error);

    void onSendLeadSuccess(Success success);
}

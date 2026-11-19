package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface AcceptConsentCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Identity>> {
        final Consent consent;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder, Consent consent) {
            super(holder);
            this.consent = consent;
        }

        public Consent consent() {
            return this.consent;
        }
    }

    void onAcceptConsentError(Error error);

    void onAcceptConsentSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Identity>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder) {
            super(holder);
        }
    }
}

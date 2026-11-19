package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface UpdateIdentityCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Identity>> {
        private final JsonApi.Wrapper<Identity> body;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder, JsonApi.Wrapper<Identity> wrapper) {
            super(holder);
            this.body = wrapper;
        }

        public JsonApi.Wrapper<Identity> body() {
            return this.body;
        }
    }

    void onUpdateIdentityError(Error error);

    void onUpdateIdentitySuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Identity>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder) {
            super(holder);
        }
    }
}

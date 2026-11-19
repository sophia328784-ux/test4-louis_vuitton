package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface RequestNotificationTestCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> {
        public Success(ApiCallback.Holder<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> holder) {
            super(holder);
        }
    }

    void onRequestNotificationTestError(Error error);

    void onRequestNotificationTestSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> holder) {
            super(holder);
        }
    }
}

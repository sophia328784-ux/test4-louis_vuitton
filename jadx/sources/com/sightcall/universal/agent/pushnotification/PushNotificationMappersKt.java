package com.sightcall.universal.agent.pushnotification;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"createUpdatePushNotificationRequest", "Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;", "token", "", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PushNotificationMappersKt {
    public static final UpdatePushNotificationRequest createUpdatePushNotificationRequest(String str) {
        str.getClass();
        return new UpdatePushNotificationRequest(new UpdatePushNotificationRequest.Data(null, null, new UpdatePushNotificationRequest.Data.Attributes(str), 3, null));
    }
}

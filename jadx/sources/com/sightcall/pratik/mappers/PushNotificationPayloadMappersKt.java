package com.sightcall.pratik.mappers;

import android.os.Bundle;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.pratik.ConstantsKt;
import com.sightcall.pratik.MeetingNotificationType;
import com.sightcall.pratik.MeetingNotificationUserAction;
import com.sightcall.pratik.PushNotificationPayload;
import com.sightcall.pratik.PushNotificationPayloadMeetingDismiss;
import com.sightcall.pratik.PushNotificationPayloadMeetingRequest;
import com.sightcall.pratik.PushNotificationPayloadMeetingRequestCanceled;
import com.sightcall.pratik.PushNotificationPayloadSdf;
import defpackage.rp0;
import defpackage.v40;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0003*\u0004\u0018\u00010\u0004H\u0002\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u0004\u001a\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\f\u001a\u0004\u0018\u00010\r*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tH\u0002\u001a\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u0016\u0010\u0012\u001a\u00020\u0004*\u00020\u000b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014¨\u0006\u0015"}, d2 = {"toMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "Landroid/os/Bundle;", "toPushNotificationPayload", "Lcom/sightcall/pratik/PushNotificationPayload;", "toPushNotificationPayloadSdf", "Lcom/sightcall/pratik/PushNotificationPayloadSdf;", "", "toPushNotificationPayloadMeetingRequest", "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;", "toPushNotificationPayloadMeetingRequestCanceled", "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;", "toPushNotificationPayloadMeetingDismissNotifications", "Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;", "findMeetingType", "Lcom/sightcall/pratik/MeetingNotificationType;", "toBundle", "action", "Lcom/sightcall/pratik/MeetingNotificationUserAction;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PushNotificationPayloadMappersKt {
    private static final MeetingNotificationType findMeetingType(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get("type");
        MeetingNotificationType.MeetingRequest meetingRequest = MeetingNotificationType.MeetingRequest.INSTANCE;
        if (Intrinsics.c(str, meetingRequest.getType())) {
            return meetingRequest;
        }
        MeetingNotificationType.MeetingDismissNotifications meetingDismissNotifications = MeetingNotificationType.MeetingDismissNotifications.INSTANCE;
        if (Intrinsics.c(str, meetingDismissNotifications.getType())) {
            return meetingDismissNotifications;
        }
        MeetingNotificationType.MeetingRequestCanceled meetingRequestCanceled = MeetingNotificationType.MeetingRequestCanceled.INSTANCE;
        if (Intrinsics.c(str, meetingRequestCanceled.getType())) {
            return meetingRequestCanceled;
        }
        return null;
    }

    public static final Bundle toBundle(PushNotificationPayloadMeetingRequest pushNotificationPayloadMeetingRequest, MeetingNotificationUserAction meetingNotificationUserAction) {
        pushNotificationPayloadMeetingRequest.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("type", pushNotificationPayloadMeetingRequest.getType());
        bundle.putString("title", pushNotificationPayloadMeetingRequest.getTitle());
        bundle.putString("body", pushNotificationPayloadMeetingRequest.getBody());
        bundle.putString("meetingId", pushNotificationPayloadMeetingRequest.getMeetingId());
        bundle.putString("participantId", pushNotificationPayloadMeetingRequest.getParticipantId());
        bundle.putString("denyUrl", pushNotificationPayloadMeetingRequest.getDenyUrl());
        bundle.putString("userAction", meetingNotificationUserAction != null ? meetingNotificationUserAction.getUserAction() : null);
        return bundle;
    }

    public static /* synthetic */ Bundle toBundle$default(PushNotificationPayloadMeetingRequest pushNotificationPayloadMeetingRequest, MeetingNotificationUserAction meetingNotificationUserAction, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            meetingNotificationUserAction = null;
        }
        return toBundle(pushNotificationPayloadMeetingRequest, meetingNotificationUserAction);
    }

    private static final HashMap<String, String> toMap(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        Set<String> setKeySet = bundle.keySet();
        HashMap<String, String> map = new HashMap<>();
        Iterator<String> it = setKeySet.iterator();
        final rp0 rp0Var = new rp0(map, bundle, 3);
        it.forEachRemaining(new Consumer() { // from class: tq0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                rp0Var.invoke(obj);
            }
        });
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit toMap$lambda$0$0(HashMap map, Bundle bundle, String str) {
        if (str != null && str.hashCode() == 1195647136 && str.equals(ConstantsKt.NotificationIdExtra)) {
            map.put(str, String.valueOf(bundle.getInt(str, 0)));
        } else {
            map.put(str, bundle.getString(str, ""));
        }
        return Unit.f71739a;
    }

    public static final PushNotificationPayload toPushNotificationPayload(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        PushNotificationPayloadSdf pushNotificationPayloadSdf = toPushNotificationPayloadSdf(map);
        if (pushNotificationPayloadSdf != null) {
            return pushNotificationPayloadSdf;
        }
        MeetingNotificationType meetingNotificationTypeFindMeetingType = findMeetingType(map);
        if (Intrinsics.c(meetingNotificationTypeFindMeetingType, MeetingNotificationType.MeetingDismissNotifications.INSTANCE)) {
            return toPushNotificationPayloadMeetingDismissNotifications(map);
        }
        if (Intrinsics.c(meetingNotificationTypeFindMeetingType, MeetingNotificationType.MeetingRequest.INSTANCE)) {
            return toPushNotificationPayloadMeetingRequest(map);
        }
        if (Intrinsics.c(meetingNotificationTypeFindMeetingType, MeetingNotificationType.MeetingRequestCanceled.INSTANCE)) {
            return toPushNotificationPayloadMeetingRequestCanceled(map);
        }
        if (meetingNotificationTypeFindMeetingType == null) {
            return null;
        }
        v40.g();
        return null;
    }

    public static final PushNotificationPayloadMeetingDismiss toPushNotificationPayloadMeetingDismissNotifications(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get("type");
        String str2 = map.get("meetingId");
        if (str == null || str2 == null) {
            return null;
        }
        return new PushNotificationPayloadMeetingDismiss(str, str2);
    }

    public static final PushNotificationPayloadMeetingRequest toPushNotificationPayloadMeetingRequest(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get("type");
        String str2 = map.get("title");
        String str3 = map.get("body");
        String str4 = map.get("meetingId");
        String str5 = map.get("participantId");
        String str6 = map.get("denyUrl");
        String str7 = map.get("userAction");
        String str8 = map.get("participantDisplayName");
        String str9 = map.get("meetingTitle");
        if (str == null || str2 == null || str3 == null || str4 == null || str5 == null || str6 == null) {
            return null;
        }
        String strJ = StringsKt.J(str2, "\"", "'");
        String strJ2 = StringsKt.J(str3, "\"", "'");
        if (str7 == null) {
            str7 = "";
        }
        if (str8 == null) {
            str8 = "";
        }
        return new PushNotificationPayloadMeetingRequest(str, strJ, strJ2, str4, str5, str6, str7, str8, str9 == null ? "" : str9);
    }

    public static final PushNotificationPayloadMeetingRequestCanceled toPushNotificationPayloadMeetingRequestCanceled(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get("type");
        String str2 = map.get("title");
        String str3 = map.get("body");
        String str4 = map.get("meetingId");
        String str5 = map.get("participantId");
        if (str == null || str2 == null || str3 == null || str4 == null || str5 == null) {
            return null;
        }
        return new PushNotificationPayloadMeetingRequestCanceled(str, StringsKt.J(str2, "\"", "'"), StringsKt.J(str3, "\"", "'"), str4, str5);
    }

    public static final PushNotificationPayloadSdf toPushNotificationPayloadSdf(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get(ConfigurationName.DOWNLOAD_PLUGIN_URL);
        String str2 = map.get("urlHash");
        String str3 = map.get("sessionId");
        if (str == null || str2 == null || str3 == null) {
            return null;
        }
        return new PushNotificationPayloadSdf(str, str2, str3);
    }

    public static final PushNotificationPayload toPushNotificationPayload(Bundle bundle) {
        return toPushNotificationPayload(toMap(bundle));
    }
}

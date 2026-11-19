package com.sightcall.pratik;

import com.google.gson.annotations.SerializedName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;", "Lcom/sightcall/pratik/PushNotificationPayload;", "type", "", "meetingId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getMeetingId", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PushNotificationPayloadMeetingDismiss extends PushNotificationPayload {

    @SerializedName("meetingId")
    private final String meetingId;

    @SerializedName("type")
    private final String type;

    public PushNotificationPayloadMeetingDismiss(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.type = str;
        this.meetingId = str2;
    }

    public static /* synthetic */ PushNotificationPayloadMeetingDismiss copy$default(PushNotificationPayloadMeetingDismiss pushNotificationPayloadMeetingDismiss, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pushNotificationPayloadMeetingDismiss.type;
        }
        if ((i2 & 2) != 0) {
            str2 = pushNotificationPayloadMeetingDismiss.meetingId;
        }
        return pushNotificationPayloadMeetingDismiss.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMeetingId() {
        return this.meetingId;
    }

    public final PushNotificationPayloadMeetingDismiss copy(String type, String meetingId) {
        type.getClass();
        meetingId.getClass();
        return new PushNotificationPayloadMeetingDismiss(type, meetingId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PushNotificationPayloadMeetingDismiss)) {
            return false;
        }
        PushNotificationPayloadMeetingDismiss pushNotificationPayloadMeetingDismiss = (PushNotificationPayloadMeetingDismiss) other;
        return Intrinsics.c(this.type, pushNotificationPayloadMeetingDismiss.type) && Intrinsics.c(this.meetingId, pushNotificationPayloadMeetingDismiss.meetingId);
    }

    public final String getMeetingId() {
        return this.meetingId;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.meetingId.hashCode() + (this.type.hashCode() * 31);
    }

    public String toString() {
        return d21.l("PushNotificationPayloadMeetingDismiss(type=", this.type, ", meetingId=", this.meetingId, ")");
    }
}

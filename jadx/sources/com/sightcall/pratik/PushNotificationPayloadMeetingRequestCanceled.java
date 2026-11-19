package com.sightcall.pratik;

import com.google.gson.annotations.SerializedName;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;", "Lcom/sightcall/pratik/PushNotificationPayload;", "type", "", "title", "body", "meetingId", "participantId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getTitle", "getBody", "getMeetingId", "getParticipantId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PushNotificationPayloadMeetingRequestCanceled extends PushNotificationPayload {

    @SerializedName("body")
    private final String body;

    @SerializedName("meetingId")
    private final String meetingId;

    @SerializedName("participantId")
    private final String participantId;

    @SerializedName("title")
    private final String title;

    @SerializedName("type")
    private final String type;

    public PushNotificationPayloadMeetingRequestCanceled(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.type = str;
        this.title = str2;
        this.body = str3;
        this.meetingId = str4;
        this.participantId = str5;
    }

    public static /* synthetic */ PushNotificationPayloadMeetingRequestCanceled copy$default(PushNotificationPayloadMeetingRequestCanceled pushNotificationPayloadMeetingRequestCanceled, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pushNotificationPayloadMeetingRequestCanceled.type;
        }
        if ((i2 & 2) != 0) {
            str2 = pushNotificationPayloadMeetingRequestCanceled.title;
        }
        if ((i2 & 4) != 0) {
            str3 = pushNotificationPayloadMeetingRequestCanceled.body;
        }
        if ((i2 & 8) != 0) {
            str4 = pushNotificationPayloadMeetingRequestCanceled.meetingId;
        }
        if ((i2 & 16) != 0) {
            str5 = pushNotificationPayloadMeetingRequestCanceled.participantId;
        }
        String str6 = str5;
        String str7 = str3;
        return pushNotificationPayloadMeetingRequestCanceled.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBody() {
        return this.body;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMeetingId() {
        return this.meetingId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getParticipantId() {
        return this.participantId;
    }

    public final PushNotificationPayloadMeetingRequestCanceled copy(String type, String title, String body, String meetingId, String participantId) {
        type.getClass();
        title.getClass();
        body.getClass();
        meetingId.getClass();
        participantId.getClass();
        return new PushNotificationPayloadMeetingRequestCanceled(type, title, body, meetingId, participantId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PushNotificationPayloadMeetingRequestCanceled)) {
            return false;
        }
        PushNotificationPayloadMeetingRequestCanceled pushNotificationPayloadMeetingRequestCanceled = (PushNotificationPayloadMeetingRequestCanceled) other;
        return Intrinsics.c(this.type, pushNotificationPayloadMeetingRequestCanceled.type) && Intrinsics.c(this.title, pushNotificationPayloadMeetingRequestCanceled.title) && Intrinsics.c(this.body, pushNotificationPayloadMeetingRequestCanceled.body) && Intrinsics.c(this.meetingId, pushNotificationPayloadMeetingRequestCanceled.meetingId) && Intrinsics.c(this.participantId, pushNotificationPayloadMeetingRequestCanceled.participantId);
    }

    public final String getBody() {
        return this.body;
    }

    public final String getMeetingId() {
        return this.meetingId;
    }

    public final String getParticipantId() {
        return this.participantId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.participantId.hashCode() + fc.b(fc.b(fc.b(this.type.hashCode() * 31, 31, this.title), 31, this.body), 31, this.meetingId);
    }

    public String toString() {
        String str = this.type;
        String str2 = this.title;
        String str3 = this.body;
        String str4 = this.meetingId;
        String str5 = this.participantId;
        StringBuilder sbS = fc.s("PushNotificationPayloadMeetingRequestCanceled(type=", str, ", title=", str2, ", body=");
        cj.C(sbS, str3, ", meetingId=", str4, ", participantId=");
        return n00.r(str5, ")", sbS);
    }
}

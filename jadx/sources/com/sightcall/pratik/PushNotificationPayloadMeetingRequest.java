package com.sightcall.pratik;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002BS\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0004HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0004HÆ\u0003Jg\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0006\u0010#\u001a\u00020$J\u0014\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0083\u0004J\n\u0010)\u001a\u00020$HÖ\u0081\u0004J\n\u0010*\u001a\u00020\u0004HÖ\u0081\u0004J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020$R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010¨\u00060"}, d2 = {"Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;", "Lcom/sightcall/pratik/PushNotificationPayload;", "Landroid/os/Parcelable;", "type", "", "title", "body", "meetingId", "participantId", "denyUrl", "userAction", "participantDisplayName", "meetingTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getTitle", "getBody", "getMeetingId", "getParticipantId", "getDenyUrl", "getUserAction", "getParticipantDisplayName", "getMeetingTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PushNotificationPayloadMeetingRequest extends PushNotificationPayload implements Parcelable {
    public static final Parcelable.Creator<PushNotificationPayloadMeetingRequest> CREATOR = new Creator();

    @SerializedName("body")
    private final String body;

    @SerializedName("denyUrl")
    private final String denyUrl;

    @SerializedName("meetingId")
    private final String meetingId;

    @SerializedName("meetingTitle")
    private final String meetingTitle;

    @SerializedName("participantDisplayName")
    private final String participantDisplayName;

    @SerializedName("participantId")
    private final String participantId;

    @SerializedName("title")
    private final String title;

    @SerializedName("type")
    private final String type;

    @SerializedName("userAction")
    private final String userAction;

    public PushNotificationPayloadMeetingRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        str7.getClass();
        this.type = str;
        this.title = str2;
        this.body = str3;
        this.meetingId = str4;
        this.participantId = str5;
        this.denyUrl = str6;
        this.userAction = str7;
        this.participantDisplayName = str8;
        this.meetingTitle = str9;
    }

    public static /* synthetic */ PushNotificationPayloadMeetingRequest copy$default(PushNotificationPayloadMeetingRequest pushNotificationPayloadMeetingRequest, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pushNotificationPayloadMeetingRequest.type;
        }
        if ((i2 & 2) != 0) {
            str2 = pushNotificationPayloadMeetingRequest.title;
        }
        if ((i2 & 4) != 0) {
            str3 = pushNotificationPayloadMeetingRequest.body;
        }
        if ((i2 & 8) != 0) {
            str4 = pushNotificationPayloadMeetingRequest.meetingId;
        }
        if ((i2 & 16) != 0) {
            str5 = pushNotificationPayloadMeetingRequest.participantId;
        }
        if ((i2 & 32) != 0) {
            str6 = pushNotificationPayloadMeetingRequest.denyUrl;
        }
        if ((i2 & 64) != 0) {
            str7 = pushNotificationPayloadMeetingRequest.userAction;
        }
        if ((i2 & 128) != 0) {
            str8 = pushNotificationPayloadMeetingRequest.participantDisplayName;
        }
        if ((i2 & 256) != 0) {
            str9 = pushNotificationPayloadMeetingRequest.meetingTitle;
        }
        String str10 = str8;
        String str11 = str9;
        String str12 = str6;
        String str13 = str7;
        String str14 = str5;
        String str15 = str3;
        return pushNotificationPayloadMeetingRequest.copy(str, str2, str15, str4, str14, str12, str13, str10, str11);
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

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDenyUrl() {
        return this.denyUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUserAction() {
        return this.userAction;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getParticipantDisplayName() {
        return this.participantDisplayName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMeetingTitle() {
        return this.meetingTitle;
    }

    public final PushNotificationPayloadMeetingRequest copy(String type, String title, String body, String meetingId, String participantId, String denyUrl, String userAction, String participantDisplayName, String meetingTitle) {
        pq0.z(type, title, body, meetingId, participantId);
        denyUrl.getClass();
        userAction.getClass();
        return new PushNotificationPayloadMeetingRequest(type, title, body, meetingId, participantId, denyUrl, userAction, participantDisplayName, meetingTitle);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PushNotificationPayloadMeetingRequest)) {
            return false;
        }
        PushNotificationPayloadMeetingRequest pushNotificationPayloadMeetingRequest = (PushNotificationPayloadMeetingRequest) other;
        return Intrinsics.c(this.type, pushNotificationPayloadMeetingRequest.type) && Intrinsics.c(this.title, pushNotificationPayloadMeetingRequest.title) && Intrinsics.c(this.body, pushNotificationPayloadMeetingRequest.body) && Intrinsics.c(this.meetingId, pushNotificationPayloadMeetingRequest.meetingId) && Intrinsics.c(this.participantId, pushNotificationPayloadMeetingRequest.participantId) && Intrinsics.c(this.denyUrl, pushNotificationPayloadMeetingRequest.denyUrl) && Intrinsics.c(this.userAction, pushNotificationPayloadMeetingRequest.userAction) && Intrinsics.c(this.participantDisplayName, pushNotificationPayloadMeetingRequest.participantDisplayName) && Intrinsics.c(this.meetingTitle, pushNotificationPayloadMeetingRequest.meetingTitle);
    }

    public final String getBody() {
        return this.body;
    }

    public final String getDenyUrl() {
        return this.denyUrl;
    }

    public final String getMeetingId() {
        return this.meetingId;
    }

    public final String getMeetingTitle() {
        return this.meetingTitle;
    }

    public final String getParticipantDisplayName() {
        return this.participantDisplayName;
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

    public final String getUserAction() {
        return this.userAction;
    }

    public int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.type.hashCode() * 31, 31, this.title), 31, this.body), 31, this.meetingId), 31, this.participantId), 31, this.denyUrl), 31, this.userAction);
        String str = this.participantDisplayName;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.meetingTitle;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        String str = this.type;
        String str2 = this.title;
        String str3 = this.body;
        String str4 = this.meetingId;
        String str5 = this.participantId;
        String str6 = this.denyUrl;
        String str7 = this.userAction;
        String str8 = this.participantDisplayName;
        String str9 = this.meetingTitle;
        StringBuilder sbS = fc.s("PushNotificationPayloadMeetingRequest(type=", str, ", title=", str2, ", body=");
        cj.C(sbS, str3, ", meetingId=", str4, ", participantId=");
        cj.C(sbS, str5, ", denyUrl=", str6, ", userAction=");
        cj.C(sbS, str7, ", participantDisplayName=", str8, ", meetingTitle=");
        return n00.r(str9, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        dest.getClass();
        dest.writeString(this.type);
        dest.writeString(this.title);
        dest.writeString(this.body);
        dest.writeString(this.meetingId);
        dest.writeString(this.participantId);
        dest.writeString(this.denyUrl);
        dest.writeString(this.userAction);
        dest.writeString(this.participantDisplayName);
        dest.writeString(this.meetingTitle);
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PushNotificationPayloadMeetingRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PushNotificationPayloadMeetingRequest createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PushNotificationPayloadMeetingRequest(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PushNotificationPayloadMeetingRequest[] newArray(int i2) {
            return new PushNotificationPayloadMeetingRequest[i2];
        }
    }
}

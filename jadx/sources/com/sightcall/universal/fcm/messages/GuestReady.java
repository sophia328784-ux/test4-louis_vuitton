package com.sightcall.universal.fcm.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class GuestReady implements Parcelable {
    public static final Parcelable.Creator<GuestReady> CREATOR = new Parcelable.Creator<GuestReady>() { // from class: com.sightcall.universal.fcm.messages.GuestReady.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GuestReady createFromParcel(Parcel parcel) {
            return new GuestReady(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GuestReady[] newArray(int i2) {
            return new GuestReady[i2];
        }
    };
    public static final String KEY = "guest-ready";

    @Json(name = "case-report-id")
    private String caseReportId;

    @Json(name = "guest-uid")
    private String guestUid;

    @Json(name = "pincode")
    private String pincode;

    @Json(name = "rtcc-jwtauth")
    private String rtccJwtAuth;

    @Json(name = "rtcc-token")
    private String rtccToken;

    @Json(name = "usecase")
    private int usecaseId;

    public GuestReady(Parcel parcel) {
        this.pincode = parcel.readString();
        this.usecaseId = parcel.readInt();
        this.guestUid = parcel.readString();
        this.rtccToken = parcel.readString();
        this.caseReportId = parcel.readString();
        this.rtccJwtAuth = parcel.readString();
    }

    public String caseReportId() {
        return this.caseReportId;
    }

    public boolean correspondsTo(com.sightcall.universal.agent.Code code) {
        return code != null && this.pincode.equals(code.value()) && String.valueOf(this.usecaseId).equals(code.usecaseId());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getRtccJwtAuth() {
        return this.rtccJwtAuth;
    }

    public String guestUid() {
        return this.guestUid;
    }

    public String pincode() {
        return this.pincode;
    }

    public String rtccToken() {
        return this.rtccToken;
    }

    public int usecaseId() {
        return this.usecaseId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.pincode);
        parcel.writeInt(this.usecaseId);
        parcel.writeString(this.guestUid);
        parcel.writeString(this.rtccToken);
        parcel.writeString(this.caseReportId);
        parcel.writeString(this.rtccJwtAuth);
    }

    public boolean correspondsTo(GuestReady guestReady) {
        return guestReady != null && this.pincode.equals(guestReady.pincode) && this.usecaseId == guestReady.usecaseId;
    }

    public GuestReady() {
    }
}

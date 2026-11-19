package com.linecorp.linesdk.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.linecorp.linesdk.internal.pkce.PKCECode;

/* JADX INFO: loaded from: classes2.dex */
class LineAuthenticationStatus implements Parcelable {
    public static final Parcelable.Creator<LineAuthenticationStatus> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PKCECode f36162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36163c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f36164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Status f36165f = Status.INIT;

    /* JADX INFO: renamed from: com.linecorp.linesdk.auth.internal.LineAuthenticationStatus$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineAuthenticationStatus> {
        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationStatus createFromParcel(Parcel parcel) {
            LineAuthenticationStatus lineAuthenticationStatus = new LineAuthenticationStatus();
            lineAuthenticationStatus.f36165f = Status.INIT;
            lineAuthenticationStatus.f36162b = (PKCECode) parcel.readParcelable(PKCECode.class.getClassLoader());
            lineAuthenticationStatus.f36163c = parcel.readString();
            lineAuthenticationStatus.f36165f = Status.values()[parcel.readByte()];
            lineAuthenticationStatus.d = parcel.readString();
            lineAuthenticationStatus.f36164e = parcel.readString();
            return lineAuthenticationStatus;
        }

        @Override // android.os.Parcelable.Creator
        public final LineAuthenticationStatus[] newArray(int i2) {
            return new LineAuthenticationStatus[i2];
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Status {
        private static final /* synthetic */ Status[] $VALUES;
        public static final Status INIT;
        public static final Status INTENT_HANDLED;
        public static final Status INTENT_RECEIVED;
        public static final Status STARTED;

        static {
            Status status = new Status("INIT", 0);
            INIT = status;
            Status status2 = new Status("STARTED", 1);
            STARTED = status2;
            Status status3 = new Status("INTENT_RECEIVED", 2);
            INTENT_RECEIVED = status3;
            Status status4 = new Status("INTENT_HANDLED", 3);
            INTENT_HANDLED = status4;
            $VALUES = new Status[]{status, status2, status3, status4};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f36162b, i2);
        parcel.writeString(this.f36163c);
        parcel.writeByte((byte) this.f36165f.ordinal());
        parcel.writeString(this.d);
        parcel.writeString(this.f36164e);
    }
}

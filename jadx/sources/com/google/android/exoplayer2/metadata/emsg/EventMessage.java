package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class EventMessage implements Metadata.Entry {
    public static final Parcelable.Creator<EventMessage> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28217c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f28218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f28219f;
    public int g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.emsg.EventMessage$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<EventMessage> {
        @Override // android.os.Parcelable.Creator
        public final EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final EventMessage[] newArray(int i2) {
            return new EventMessage[i2];
        }
    }

    static {
        Format.Builder builder = new Format.Builder();
        builder.f28151a = "application/id3";
        new Format(builder);
        Format.Builder builder2 = new Format.Builder();
        builder2.f28151a = "application/x-scte35";
        new Format(builder2);
        CREATOR = new AnonymousClass1();
    }

    public EventMessage(Parcel parcel) {
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28216b = string;
        this.f28217c = parcel.readString();
        this.d = parcel.readLong();
        this.f28218e = parcel.readLong();
        this.f28219f = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && EventMessage.class == obj.getClass()) {
            EventMessage eventMessage = (EventMessage) obj;
            if (this.d == eventMessage.d && this.f28218e == eventMessage.f28218e && Util.a(this.f28216b, eventMessage.f28216b) && Util.a(this.f28217c, eventMessage.f28217c) && Arrays.equals(this.f28219f, eventMessage.f28219f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.g == 0) {
            String str = this.f28216b;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f28217c;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j2 = this.d;
            int i2 = (iHashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.f28218e;
            this.g = Arrays.hashCode(this.f28219f) + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31);
        }
        return this.g;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f28216b + ", id=" + this.f28218e + ", durationMs=" + this.d + ", value=" + this.f28217c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28216b);
        parcel.writeString(this.f28217c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f28218e);
        parcel.writeByteArray(this.f28219f);
    }

    public EventMessage(String str, String str2, long j2, long j3, byte[] bArr) {
        this.f28216b = str;
        this.f28217c = str2;
        this.d = j2;
        this.f28218e = j3;
        this.f28219f = bArr;
    }
}

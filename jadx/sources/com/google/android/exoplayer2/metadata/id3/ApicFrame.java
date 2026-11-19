package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28234c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f28236f;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.ApicFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ApicFrame> {
        @Override // android.os.Parcelable.Creator
        public final ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ApicFrame[] newArray(int i2) {
            return new ApicFrame[i2];
        }
    }

    public ApicFrame(Parcel parcel) {
        super("APIC");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28234c = string;
        this.d = parcel.readString();
        this.f28235e = parcel.readInt();
        this.f28236f = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ApicFrame.class == obj.getClass()) {
            ApicFrame apicFrame = (ApicFrame) obj;
            if (this.f28235e == apicFrame.f28235e && Util.a(this.f28234c, apicFrame.f28234c) && Util.a(this.d, apicFrame.d) && Arrays.equals(this.f28236f, apicFrame.f28236f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (527 + this.f28235e) * 31;
        String str = this.f28234c;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return Arrays.hashCode(this.f28236f) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": mimeType=" + this.f28234c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28234c);
        parcel.writeString(this.d);
        parcel.writeInt(this.f28235e);
        parcel.writeByteArray(this.f28236f);
    }

    public ApicFrame(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f28234c = str;
        this.d = str2;
        this.f28235e = i2;
        this.f28236f = bArr;
    }
}

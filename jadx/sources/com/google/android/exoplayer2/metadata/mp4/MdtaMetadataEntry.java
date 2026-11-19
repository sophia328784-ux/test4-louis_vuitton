package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import defpackage.d21;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f28260c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28261e;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MdtaMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public final MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final MdtaMetadataEntry[] newArray(int i2) {
            return new MdtaMetadataEntry[i2];
        }
    }

    public MdtaMetadataEntry(Parcel parcel) {
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28259b = string;
        this.f28260c = parcel.createByteArray();
        this.d = parcel.readInt();
        this.f28261e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MdtaMetadataEntry.class == obj.getClass()) {
            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
            if (this.f28259b.equals(mdtaMetadataEntry.f28259b) && Arrays.equals(this.f28260c, mdtaMetadataEntry.f28260c) && this.d == mdtaMetadataEntry.d && this.f28261e == mdtaMetadataEntry.f28261e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f28260c) + fc.b(527, 31, this.f28259b)) * 31) + this.d) * 31) + this.f28261e;
    }

    public final String toString() {
        String str;
        byte[] bArr = this.f28260c;
        int i2 = this.f28261e;
        if (i2 == 1) {
            int i3 = Util.f28451a;
            str = new String(bArr, Charsets.f33477a);
        } else if (i2 == 23) {
            int i4 = Util.f28451a;
            Assertions.a(bArr.length == 4);
            str = String.valueOf(Float.intBitsToFloat((bArr[3] & 255) | (bArr[0] << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8)));
        } else if (i2 != 67) {
            str = Util.g(bArr);
        } else {
            int i5 = Util.f28451a;
            Assertions.a(bArr.length == 4);
            str = String.valueOf(bArr[3] | (bArr[0] << 24) | (bArr[1] << 16) | (bArr[2] << 8));
        }
        return d21.p(new StringBuilder("mdta: key="), this.f28259b, ", value=", str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28259b);
        parcel.writeByteArray(this.f28260c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f28261e);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i2, int i3) {
        this.f28259b = str;
        this.f28260c = bArr;
        this.d = i2;
        this.f28261e = i3;
    }
}

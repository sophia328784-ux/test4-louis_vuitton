package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28256c;
    public final byte[] d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.PrivFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<PrivFrame> {
        @Override // android.os.Parcelable.Creator
        public final PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PrivFrame[] newArray(int i2) {
            return new PrivFrame[i2];
        }
    }

    public PrivFrame(Parcel parcel) {
        super("PRIV");
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28256c = string;
        this.d = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PrivFrame.class == obj.getClass()) {
            PrivFrame privFrame = (PrivFrame) obj;
            if (Util.a(this.f28256c, privFrame.f28256c) && Arrays.equals(this.d, privFrame.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f28256c;
        return Arrays.hashCode(this.d) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f28250b + ": owner=" + this.f28256c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28256c);
        parcel.writeByteArray(this.d);
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f28256c = str;
        this.d = bArr;
    }
}

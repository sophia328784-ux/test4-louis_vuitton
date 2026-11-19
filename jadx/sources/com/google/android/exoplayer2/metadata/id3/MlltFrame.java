package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28253c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f28255f;
    public final int[] g;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.id3.MlltFrame$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MlltFrame> {
        @Override // android.os.Parcelable.Creator
        public final MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final MlltFrame[] newArray(int i2) {
            return new MlltFrame[i2];
        }
    }

    public MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f28253c = parcel.readInt();
        this.d = parcel.readInt();
        this.f28254e = parcel.readInt();
        int[] iArrCreateIntArray = parcel.createIntArray();
        int i2 = Util.f28451a;
        this.f28255f = iArrCreateIntArray;
        this.g = parcel.createIntArray();
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MlltFrame.class == obj.getClass()) {
            MlltFrame mlltFrame = (MlltFrame) obj;
            if (this.f28253c == mlltFrame.f28253c && this.d == mlltFrame.d && this.f28254e == mlltFrame.f28254e && Arrays.equals(this.f28255f, mlltFrame.f28255f) && Arrays.equals(this.g, mlltFrame.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.g) + ((Arrays.hashCode(this.f28255f) + ((((((527 + this.f28253c) * 31) + this.d) * 31) + this.f28254e) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f28253c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f28254e);
        parcel.writeIntArray(this.f28255f);
        parcel.writeIntArray(this.g);
    }

    public MlltFrame(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f28253c = i2;
        this.d = i3;
        this.f28254e = i4;
        this.f28255f = iArr;
        this.g = iArr2;
    }
}

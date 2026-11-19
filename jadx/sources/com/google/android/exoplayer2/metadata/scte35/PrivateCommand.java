package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f28272c;
    public final byte[] d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.scte35.PrivateCommand$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<PrivateCommand> {
        @Override // android.os.Parcelable.Creator
        public final PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PrivateCommand[] newArray(int i2) {
            return new PrivateCommand[i2];
        }
    }

    public PrivateCommand(Parcel parcel) {
        this.f28271b = parcel.readLong();
        this.f28272c = parcel.readLong();
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i2 = Util.f28451a;
        this.d = bArrCreateByteArray;
    }

    @Override // com.google.android.exoplayer2.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
        sb.append(this.f28271b);
        sb.append(", identifier= ");
        return o60.j(this.f28272c, " }", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f28271b);
        parcel.writeLong(this.f28272c);
        parcel.writeByteArray(this.d);
    }
}

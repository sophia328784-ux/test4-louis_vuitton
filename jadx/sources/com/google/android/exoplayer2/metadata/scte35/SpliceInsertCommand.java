package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.o60;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f28274c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28276f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f28277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f28278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f28279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f28280k;
    public final int l;
    public final int m;
    public final int n;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<SpliceInsertCommand> {
        @Override // android.os.Parcelable.Creator
        public final SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SpliceInsertCommand[] newArray(int i2) {
            return new SpliceInsertCommand[i2];
        }
    }

    public static final class ComponentSplice {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28281a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28282b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f28283c;

        public ComponentSplice(int i2, long j2, long j3) {
            this.f28281a = i2;
            this.f28282b = j2;
            this.f28283c = j3;
        }
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.f28273b = parcel.readLong();
        this.f28274c = parcel.readByte() == 1;
        this.d = parcel.readByte() == 1;
        this.f28275e = parcel.readByte() == 1;
        this.f28276f = parcel.readByte() == 1;
        this.g = parcel.readLong();
        this.f28277h = parcel.readLong();
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.f28278i = Collections.unmodifiableList(arrayList);
        this.f28279j = parcel.readByte() == 1;
        this.f28280k = parcel.readLong();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
    }

    @Override // com.google.android.exoplayer2.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.g);
        sb.append(", programSplicePlaybackPositionUs= ");
        return o60.j(this.f28277h, " }", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f28273b);
        parcel.writeByte(this.f28274c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f28275e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f28276f ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.g);
        parcel.writeLong(this.f28277h);
        List list = this.f28278i;
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ComponentSplice componentSplice = (ComponentSplice) list.get(i3);
            parcel.writeInt(componentSplice.f28281a);
            parcel.writeLong(componentSplice.f28282b);
            parcel.writeLong(componentSplice.f28283c);
        }
        parcel.writeByte(this.f28279j ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f28280k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
    }
}

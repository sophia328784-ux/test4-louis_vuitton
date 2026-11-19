package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f28284b;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<SpliceScheduleCommand> {
        @Override // android.os.Parcelable.Creator
        public final SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SpliceScheduleCommand[] newArray(int i2) {
            return new SpliceScheduleCommand[i2];
        }
    }

    public static final class ComponentSplice {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28286b;

        public ComponentSplice(int i2, long j2) {
            this.f28285a = i2;
            this.f28286b = j2;
        }
    }

    public static final class Event {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f28287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f28288b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f28289c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f28290e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f28291f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f28292h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f28293i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f28294j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f28295k;

        public Event(Parcel parcel) {
            this.f28287a = parcel.readLong();
            this.f28288b = parcel.readByte() == 1;
            this.f28289c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList.add(new ComponentSplice(parcel.readInt(), parcel.readLong()));
            }
            this.f28291f = Collections.unmodifiableList(arrayList);
            this.f28290e = parcel.readLong();
            this.g = parcel.readByte() == 1;
            this.f28292h = parcel.readLong();
            this.f28293i = parcel.readInt();
            this.f28294j = parcel.readInt();
            this.f28295k = parcel.readInt();
        }
    }

    public SpliceScheduleCommand(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new Event(parcel));
        }
        this.f28284b = Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        List list = this.f28284b;
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            Event event = (Event) list.get(i3);
            parcel.writeLong(event.f28287a);
            parcel.writeByte(event.f28288b ? (byte) 1 : (byte) 0);
            parcel.writeByte(event.f28289c ? (byte) 1 : (byte) 0);
            parcel.writeByte(event.d ? (byte) 1 : (byte) 0);
            List list2 = event.f28291f;
            int size2 = list2.size();
            parcel.writeInt(size2);
            for (int i4 = 0; i4 < size2; i4++) {
                ComponentSplice componentSplice = (ComponentSplice) list2.get(i4);
                parcel.writeInt(componentSplice.f28285a);
                parcel.writeLong(componentSplice.f28286b);
            }
            parcel.writeLong(event.f28290e);
            parcel.writeByte(event.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(event.f28292h);
            parcel.writeInt(event.f28293i);
            parcel.writeInt(event.f28294j);
            parcel.writeInt(event.f28295k);
        }
    }
}

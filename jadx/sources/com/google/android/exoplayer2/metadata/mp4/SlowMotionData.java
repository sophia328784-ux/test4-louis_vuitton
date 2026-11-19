package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SlowMotionData implements Metadata.Entry {
    public static final Parcelable.Creator<SlowMotionData> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f28266b;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.mp4.SlowMotionData$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<SlowMotionData> {
        @Override // android.os.Parcelable.Creator
        public final SlowMotionData createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Segment.class.getClassLoader());
            return new SlowMotionData(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final SlowMotionData[] newArray(int i2) {
            return new SlowMotionData[i2];
        }
    }

    public static final class Segment implements Parcelable {
        public static final Parcelable.Creator<Segment> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28267b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f28268c;
        public final int d;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.metadata.mp4.SlowMotionData$Segment$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<Segment> {
            @Override // android.os.Parcelable.Creator
            public final Segment createFromParcel(Parcel parcel) {
                return new Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final Segment[] newArray(int i2) {
                return new Segment[i2];
            }
        }

        public Segment(long j2, long j3, int i2) {
            Assertions.a(j2 < j3);
            this.f28267b = j2;
            this.f28268c = j3;
            this.d = i2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Segment.class == obj.getClass()) {
                Segment segment = (Segment) obj;
                if (this.f28267b == segment.f28267b && this.f28268c == segment.f28268c && this.d == segment.d) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Long.valueOf(this.f28267b), Long.valueOf(this.f28268c), Integer.valueOf(this.d));
        }

        public final String toString() {
            int i2 = Util.f28451a;
            Locale locale = Locale.US;
            StringBuilder sbQ = pq0.q(this.f28267b, "Segment: startTimeMs=", ", endTimeMs=");
            sbQ.append(this.f28268c);
            sbQ.append(", speedDivisor=");
            sbQ.append(this.d);
            return sbQ.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f28267b);
            parcel.writeLong(this.f28268c);
            parcel.writeInt(this.d);
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.f28266b = list;
        boolean z = false;
        if (!list.isEmpty()) {
            long j2 = list.get(0).f28268c;
            for (int i2 = 1; i2 < list.size(); i2++) {
                if (list.get(i2).f28267b < j2) {
                    z = true;
                    break;
                }
                j2 = list.get(i2).f28268c;
            }
        }
        Assertions.a(!z);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.f28266b.equals(((SlowMotionData) obj).f28266b);
    }

    public final int hashCode() {
        return this.f28266b.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.f28266b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(this.f28266b);
    }
}

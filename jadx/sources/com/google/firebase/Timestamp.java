package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.b21;
import defpackage.d21;
import defpackage.pq0;
import defpackage.tr;
import java.time.Instant;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000bB\u0011\b\u0017\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0007\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/google/firebase/Timestamp;", "", "Landroid/os/Parcelable;", "", "seconds", "", "nanoseconds", "<init>", "(JI)V", "Ljava/util/Date;", "date", "(Ljava/util/Date;)V", "Ljava/time/Instant;", "time", "(Ljava/time/Instant;)V", "Companion", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Timestamp implements Comparable<Timestamp>, Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f34351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34352c;
    public static final Companion d = new Companion(null);
    public static final Parcelable.Creator<Timestamp> CREATOR = new Timestamp$Companion$CREATOR$1();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/Timestamp$Companion;", "", "Landroid/os/Parcelable$Creator;", "Lcom/google/firebase/Timestamp;", "CREATOR", "Landroid/os/Parcelable$Creator;", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final void a(Companion companion, long j2, int i2) {
            companion.getClass();
            if (i2 < 0 || i2 >= 1000000000) {
                b21.n(pq0.k(i2, "Timestamp nanoseconds out of range: "));
            } else if (-62135596800L > j2 || j2 >= 253402300800L) {
                b21.n(d21.g(j2, "Timestamp seconds out of range: "));
            }
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.Timestamp$compareTo$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends PropertyReference1Impl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f34353b = new AnonymousClass1(Timestamp.class, "seconds", "getSeconds()J", 0);

        @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
        public final Object get(Object obj) {
            return Long.valueOf(((Timestamp) obj).f34351b);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.Timestamp$compareTo$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass2 extends PropertyReference1Impl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass2 f34354b = new AnonymousClass2(Timestamp.class, "nanoseconds", "getNanoseconds()I", 0);

        @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
        public final Object get(Object obj) {
            return Integer.valueOf(((Timestamp) obj).f34352c);
        }
    }

    public Timestamp(Date date) {
        date.getClass();
        Companion companion = d;
        companion.getClass();
        long time = date.getTime() / 1000;
        int time2 = (int) ((date.getTime() % 1000) * 1000000);
        Pair pair = time2 < 0 ? new Pair(Long.valueOf(time - 1), Integer.valueOf(time2 + 1000000000)) : new Pair(Long.valueOf(time), Integer.valueOf(time2));
        long jLongValue = ((Number) pair.f71705b).longValue();
        int iIntValue = ((Number) pair.f71706c).intValue();
        Companion.a(companion, jLongValue, iIntValue);
        this.f34351b = jLongValue;
        this.f34352c = iIntValue;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Timestamp timestamp) {
        Timestamp timestamp2 = timestamp;
        timestamp2.getClass();
        Function1[] function1Arr = {AnonymousClass1.f34353b, AnonymousClass2.f34354b};
        for (int i2 = 0; i2 < 2; i2++) {
            Function1 function1 = function1Arr[i2];
            int iA = ComparisonsKt.a((Comparable) function1.invoke(this), (Comparable) function1.invoke(timestamp2));
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        int iA;
        if (obj != this) {
            if (obj instanceof Timestamp) {
                Timestamp timestamp = (Timestamp) obj;
                Function1[] function1Arr = {AnonymousClass1.f34353b, AnonymousClass2.f34354b};
                for (int i2 = 0; i2 < 2; i2++) {
                    Function1 function1 = function1Arr[i2];
                    iA = ComparisonsKt.a((Comparable) function1.invoke(this), (Comparable) function1.invoke(timestamp));
                    if (iA != 0) {
                        if (iA == 0) {
                        }
                    }
                }
                iA = 0;
                if (iA == 0) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j2 = this.f34351b;
        return (((((int) j2) * 1369) + ((int) (j2 >> 32))) * 37) + this.f34352c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Timestamp(seconds=");
        sb.append(this.f34351b);
        sb.append(", nanoseconds=");
        return tr.k(sb, this.f34352c, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeLong(this.f34351b);
        parcel.writeInt(this.f34352c);
    }

    public Timestamp(long j2, int i2) {
        Companion.a(d, j2, i2);
        this.f34351b = j2;
        this.f34352c = i2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Timestamp(Instant instant) {
        this(instant.getEpochSecond(), instant.getNano());
        instant.getClass();
    }
}

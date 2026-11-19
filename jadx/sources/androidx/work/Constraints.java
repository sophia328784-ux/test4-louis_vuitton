package androidx.work;

import android.net.NetworkRequest;
import android.net.Uri;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B1\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tB;\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u000bB_\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\b\u0010\u0012Bg\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\b\u0010\u0015B\u0011\b\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0000¢\u0006\u0004\b\b\u0010\u0017¨\u0006\u001a"}, d2 = {"Landroidx/work/Constraints;", "", "Landroidx/work/NetworkType;", "requiredNetworkType", "", "requiresCharging", "requiresBatteryNotLow", "requiresStorageNotLow", "<init>", "(Landroidx/work/NetworkType;ZZZ)V", "requiresDeviceIdle", "(Landroidx/work/NetworkType;ZZZZ)V", "", "contentTriggerUpdateDelayMillis", "contentTriggerMaxDelayMillis", "", "Landroidx/work/Constraints$ContentUriTrigger;", "contentUriTriggers", "(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V", "Landroidx/work/impl/utils/NetworkRequestCompat;", "requiredNetworkRequestCompat", "(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V", "other", "(Landroidx/work/Constraints;)V", "ContentUriTrigger", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Constraints {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Constraints f20225j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NetworkType f20226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NetworkRequestCompat f20227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f20228c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f20229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f20230f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f20231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set f20232i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/work/Constraints$Companion;", "", "Landroidx/work/Constraints;", "NONE", "Landroidx/work/Constraints;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/Constraints$ContentUriTrigger;", "", "Landroid/net/Uri;", "uri", "", "isTriggeredForDescendants", "<init>", "(Landroid/net/Uri;Z)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ContentUriTrigger {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f20233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f20234b;

        public ContentUriTrigger(Uri uri, boolean z) {
            uri.getClass();
            this.f20233a = uri;
            this.f20234b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!ContentUriTrigger.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) obj;
            return Intrinsics.c(this.f20233a, contentUriTrigger.f20233a) && this.f20234b == contentUriTrigger.f20234b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f20234b) + (this.f20233a.hashCode() * 31);
        }
    }

    static {
        new Companion(null);
        f20225j = new Constraints(null, false, false, false, 15, null);
    }

    public Constraints(NetworkRequestCompat networkRequestCompat, NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set set, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(networkRequestCompat, (i2 & 2) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) == 0 ? z4 : false, (i2 & 64) != 0 ? -1L : j2, (i2 & 128) == 0 ? j3 : -1L, (i2 & 256) != 0 ? EmptySet.f71770b : set);
    }

    public final NetworkRequest a() {
        return (NetworkRequest) this.f20227b.f20548a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Constraints.class.equals(obj.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.f20228c == constraints.f20228c && this.d == constraints.d && this.f20229e == constraints.f20229e && this.f20230f == constraints.f20230f && this.g == constraints.g && this.f20231h == constraints.f20231h && Intrinsics.c(a(), constraints.a()) && this.f20226a == constraints.f20226a) {
            return Intrinsics.c(this.f20232i, constraints.f20232i);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((((((this.f20226a.hashCode() * 31) + (this.f20228c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f20229e ? 1 : 0)) * 31) + (this.f20230f ? 1 : 0)) * 31;
        long j2 = this.g;
        int i2 = (iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f20231h;
        int iHashCode2 = (this.f20232i.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31;
        NetworkRequest networkRequestA = a();
        return iHashCode2 + (networkRequestA != null ? networkRequestA.hashCode() : 0);
    }

    public final String toString() {
        return "Constraints{requiredNetworkType=" + this.f20226a + ", requiresCharging=" + this.f20228c + ", requiresDeviceIdle=" + this.d + ", requiresBatteryNotLow=" + this.f20229e + ", requiresStorageNotLow=" + this.f20230f + ", contentTriggerUpdateDelayMillis=" + this.g + ", contentTriggerMaxDelayMillis=" + this.f20231h + ", contentUriTriggers=" + this.f20232i + ", }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3) {
        this(networkType, z, false, z2, z3);
        networkType.getClass();
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4) {
        this(networkType, z, z2, z3, z4, -1L, 0L, null, 192, null);
        networkType.getClass();
    }

    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set set, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4, (i2 & 32) != 0 ? -1L : j2, (i2 & 64) != 0 ? -1L : j3, (i2 & 128) != 0 ? EmptySet.f71770b : set);
    }

    public Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set<ContentUriTrigger> set) {
        networkType.getClass();
        set.getClass();
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.f20227b = new NetworkRequestCompat(defaultConstructorMarker, 1, defaultConstructorMarker);
        this.f20226a = networkType;
        this.f20228c = z;
        this.d = z2;
        this.f20229e = z3;
        this.f20230f = z4;
        this.g = j2;
        this.f20231h = j3;
        this.f20232i = set;
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3);
    }

    public Constraints(NetworkRequestCompat networkRequestCompat, NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set<ContentUriTrigger> set) {
        networkRequestCompat.getClass();
        networkType.getClass();
        set.getClass();
        this.f20227b = networkRequestCompat;
        this.f20226a = networkType;
        this.f20228c = z;
        this.d = z2;
        this.f20229e = z3;
        this.f20230f = z4;
        this.g = j2;
        this.f20231h = j3;
        this.f20232i = set;
    }

    public Constraints(Constraints constraints) {
        constraints.getClass();
        this.f20228c = constraints.f20228c;
        this.d = constraints.d;
        this.f20227b = constraints.f20227b;
        this.f20226a = constraints.f20226a;
        this.f20229e = constraints.f20229e;
        this.f20230f = constraints.f20230f;
        this.f20232i = constraints.f20232i;
        this.g = constraints.g;
        this.f20231h = constraints.f20231h;
    }
}

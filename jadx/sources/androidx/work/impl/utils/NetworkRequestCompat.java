package androidx.work.impl.utils;

import androidx.work.Logger;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0005B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/utils/NetworkRequestCompat;", "", "wrapped", "<init>", "(Ljava/lang/Object;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NetworkRequestCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f20547b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f20548a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/utils/NetworkRequestCompat$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Logger.b("NetworkRequestCompat");
    }

    public /* synthetic */ NetworkRequestCompat(Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkRequestCompat) && Intrinsics.c(this.f20548a, ((NetworkRequestCompat) obj).f20548a);
    }

    public final int hashCode() {
        Object obj = this.f20548a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return o60.r(new StringBuilder("NetworkRequestCompat(wrapped="), this.f20548a, ')');
    }

    public NetworkRequestCompat(Object obj) {
        this.f20548a = obj;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NetworkRequestCompat() {
        DefaultConstructorMarker defaultConstructorMarker = null;
        this(defaultConstructorMarker, 1, defaultConstructorMarker);
    }
}

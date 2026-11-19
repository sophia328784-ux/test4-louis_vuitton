package androidx.compose.runtime;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/JoinedKey;", "", "left", "right", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class JoinedKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8010b;

    public JoinedKey(Object obj, Object obj2) {
        this.f8009a = obj;
        this.f8010b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JoinedKey)) {
            return false;
        }
        JoinedKey joinedKey = (JoinedKey) obj;
        return Intrinsics.c(this.f8009a, joinedKey.f8009a) && Intrinsics.c(this.f8010b, joinedKey.f8010b);
    }

    public final int hashCode() {
        int iHashCode;
        Object obj = this.f8009a;
        int iHashCode2 = 0;
        if (obj instanceof Enum) {
            iHashCode = ((Enum) obj).ordinal();
        } else {
            iHashCode = obj != null ? obj.hashCode() : 0;
        }
        int i2 = iHashCode * 31;
        Object obj2 = this.f8010b;
        if (obj2 instanceof Enum) {
            iHashCode2 = ((Enum) obj2).ordinal();
        } else if (obj2 != null) {
            iHashCode2 = obj2.hashCode();
        }
        return iHashCode2 + i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JoinedKey(left=");
        sb.append(this.f8009a);
        sb.append(", right=");
        return o60.r(sb, this.f8010b, ')');
    }
}

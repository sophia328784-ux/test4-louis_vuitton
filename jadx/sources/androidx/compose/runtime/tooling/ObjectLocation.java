package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/tooling/ObjectLocation;", "", "", "group", "dataOffset", "<init>", "(ILjava/lang/Integer;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ObjectLocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f8566b;

    public ObjectLocation(int i2, Integer num) {
        this.f8565a = i2;
        this.f8566b = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ObjectLocation)) {
            return false;
        }
        ObjectLocation objectLocation = (ObjectLocation) obj;
        return this.f8565a == objectLocation.f8565a && Intrinsics.c(this.f8566b, objectLocation.f8566b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f8565a) * 31;
        Integer num = this.f8566b;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "ObjectLocation(group=" + this.f8565a + ", dataOffset=" + this.f8566b + ')';
    }
}

package kotlin.reflect.jvm.internal.impl.types;

import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeProjectionBase implements TypeProjection {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeProjection)) {
            return false;
        }
        TypeProjection typeProjection = (TypeProjection) obj;
        return a() == typeProjection.a() && b() == typeProjection.b() && getType().equals(typeProjection.getType());
    }

    public final int hashCode() {
        int iHashCode = b().hashCode();
        if (TypeUtils.o(getType())) {
            return (iHashCode * 31) + 19;
        }
        return (iHashCode * 31) + (a() ? 17 : getType().hashCode());
    }

    public final String toString() {
        if (a()) {
            return Browse.CAPS_WILDCARD;
        }
        if (b() == Variance.INVARIANT) {
            return getType().toString();
        }
        return b() + " " + getType();
    }
}

package androidx.compose.material3.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/internal/MapDraggableAnchors;", "T", "Landroidx/compose/material3/internal/DraggableAnchors;", "", "", "anchors", "<init>", "(Ljava/util/Map;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class MapDraggableAnchors<T> implements DraggableAnchors<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f7641a;

    public MapDraggableAnchors(Map<T, Float> map) {
        this.f7641a = map;
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final Object a(float f2, boolean z) {
        T next;
        Iterator<T> it = this.f7641a.entrySet().iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                float fFloatValue = ((Number) ((Map.Entry) next).getValue()).floatValue();
                float f3 = z ? fFloatValue - f2 : f2 - fFloatValue;
                if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f3 = Float.POSITIVE_INFINITY;
                }
                do {
                    T next2 = it.next();
                    float fFloatValue2 = ((Number) ((Map.Entry) next2).getValue()).floatValue();
                    float f4 = z ? fFloatValue2 - f2 : f2 - fFloatValue2;
                    if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f4 = Float.POSITIVE_INFINITY;
                    }
                    if (Float.compare(f3, f4) > 0) {
                        next = next2;
                        f3 = f4;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return entry.getKey();
        }
        return null;
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final Object b(float f2) {
        T next;
        Iterator<T> it = this.f7641a.entrySet().iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                float fAbs = Math.abs(f2 - ((Number) ((Map.Entry) next).getValue()).floatValue());
                do {
                    T next2 = it.next();
                    float fAbs2 = Math.abs(f2 - ((Number) ((Map.Entry) next2).getValue()).floatValue());
                    if (Float.compare(fAbs, fAbs2) > 0) {
                        next = next2;
                        fAbs = fAbs2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return entry.getKey();
        }
        return null;
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final float c(Object obj) {
        Float f2 = (Float) this.f7641a.get(obj);
        if (f2 != null) {
            return f2.floatValue();
        }
        return Float.NaN;
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final boolean d(Object obj) {
        return this.f7641a.containsKey(obj);
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final float e() {
        Float fValueOf;
        Collection collectionValues = this.f7641a.values();
        collectionValues.getClass();
        Iterator<T> it = collectionValues.iterator();
        if (it.hasNext()) {
            float fFloatValue = ((Number) it.next()).floatValue();
            while (it.hasNext()) {
                fFloatValue = Math.min(fFloatValue, ((Number) it.next()).floatValue());
            }
            fValueOf = Float.valueOf(fFloatValue);
        } else {
            fValueOf = null;
        }
        if (fValueOf != null) {
            return fValueOf.floatValue();
        }
        return Float.NaN;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapDraggableAnchors)) {
            return false;
        }
        return Intrinsics.c(this.f7641a, ((MapDraggableAnchors) obj).f7641a);
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final float f() {
        Float fValueOf;
        Collection collectionValues = this.f7641a.values();
        collectionValues.getClass();
        Iterator<T> it = collectionValues.iterator();
        if (it.hasNext()) {
            float fFloatValue = ((Number) it.next()).floatValue();
            while (it.hasNext()) {
                fFloatValue = Math.max(fFloatValue, ((Number) it.next()).floatValue());
            }
            fValueOf = Float.valueOf(fFloatValue);
        } else {
            fValueOf = null;
        }
        if (fValueOf != null) {
            return fValueOf.floatValue();
        }
        return Float.NaN;
    }

    @Override // androidx.compose.material3.internal.DraggableAnchors
    public final int getSize() {
        return this.f7641a.size();
    }

    public final int hashCode() {
        return this.f7641a.hashCode() * 31;
    }

    public final String toString() {
        return "MapDraggableAnchors(" + this.f7641a + ')';
    }
}

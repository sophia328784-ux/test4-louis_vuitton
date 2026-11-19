package androidx.compose.runtime.collection;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001\u0088\u0001\u0004\u0092\u0001\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/collection/ScopeMap;", "", "Key", "Scope", "map", "Landroidx/collection/MutableScatterMap;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class ScopeMap<Key, Scope> {
    public static final void a(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int iJ = mutableScatterMap.j(obj);
        boolean z = iJ < 0;
        Object obj3 = z ? null : mutableScatterMap.f3363c[iJ];
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                ((MutableScatterSet) obj3).d(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet(0, 1, null);
                mutableScatterSet.d(obj3);
                mutableScatterSet.d(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (!z) {
            mutableScatterMap.f3363c[iJ] = obj2;
            return;
        }
        int i2 = ~iJ;
        mutableScatterMap.f3362b[i2] = obj;
        mutableScatterMap.f3363c[i2] = obj2;
    }

    public static final boolean b(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        Object objE = mutableScatterMap.e(obj);
        if (objE == null) {
            return false;
        }
        if (!(objE instanceof MutableScatterSet)) {
            if (!objE.equals(obj2)) {
                return false;
            }
            mutableScatterMap.m(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objE;
        boolean zM = mutableScatterSet.m(obj2);
        if (zM && mutableScatterSet.b()) {
            mutableScatterMap.m(obj);
        }
        return zM;
    }

    public static final void c(MutableScatterMap mutableScatterMap, Object obj) {
        boolean zB;
        long[] jArr = mutableScatterMap.f3361a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj2 = mutableScatterMap.f3362b[i5];
                        Object obj3 = mutableScatterMap.f3363c[i5];
                        if (obj3 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                            mutableScatterSet.m(obj);
                            zB = mutableScatterSet.b();
                        } else {
                            zB = obj3 == obj;
                        }
                        if (zB) {
                            mutableScatterMap.n(i5);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }
}

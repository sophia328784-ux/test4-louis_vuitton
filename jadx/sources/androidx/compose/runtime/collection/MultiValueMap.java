package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectListKt;
import androidx.compose.runtime.MovableContent;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001\u0088\u0001\u0004\u0092\u0001\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/collection/MultiValueMap;", "", "K", "V", "map", "Landroidx/collection/MutableScatterMap;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class MultiValueMap<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableScatterMap f8164a;

    public /* synthetic */ MultiValueMap(MutableScatterMap mutableScatterMap) {
        this.f8164a = mutableScatterMap;
    }

    public static final void a(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int iJ = mutableScatterMap.j(obj);
        boolean z = iJ < 0;
        Object obj3 = z ? null : mutableScatterMap.f3363c[iJ];
        if (obj3 != null) {
            if (obj3 instanceof MutableObjectList) {
                MutableObjectList mutableObjectList = (MutableObjectList) obj3;
                mutableObjectList.g(obj2);
                obj2 = mutableObjectList;
            } else {
                Object[] objArr = ObjectListKt.f3348a;
                MutableObjectList mutableObjectList2 = new MutableObjectList(2);
                mutableObjectList2.g(obj3);
                mutableObjectList2.g(obj2);
                obj2 = mutableObjectList2;
            }
        }
        if (!z) {
            mutableScatterMap.f3363c[iJ] = obj2;
            return;
        }
        int i2 = ~iJ;
        mutableScatterMap.f3362b[i2] = obj;
        mutableScatterMap.f3363c[i2] = obj2;
    }

    public static MutableScatterMap b() {
        return new MutableScatterMap(0, 1, null);
    }

    public static final Object c(MutableScatterMap mutableScatterMap, MovableContent movableContent) {
        Object objE = mutableScatterMap.e(movableContent);
        if (objE == null) {
            return null;
        }
        if (!(objE instanceof MutableObjectList)) {
            mutableScatterMap.m(movableContent);
            return objE;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) objE;
        if (mutableObjectList.d()) {
            zy0.c("List is empty.");
            return null;
        }
        int i2 = mutableObjectList.f3346b - 1;
        Object objB = mutableObjectList.b(i2);
        mutableObjectList.m(i2);
        objB.getClass();
        if (mutableObjectList.d()) {
            mutableScatterMap.m(movableContent);
        }
        if (mutableObjectList.f3346b == 1) {
            mutableScatterMap.o(movableContent, mutableObjectList.a());
        }
        return objB;
    }

    public static final void d(MutableScatterMap mutableScatterMap, MovableContent movableContent, Function1 function1) {
        Object objE = mutableScatterMap.e(movableContent);
        if (objE != null) {
            if (!(objE instanceof MutableObjectList)) {
                if (((Boolean) function1.invoke(objE)).booleanValue()) {
                    mutableScatterMap.m(movableContent);
                    return;
                }
                return;
            }
            MutableObjectList mutableObjectList = (MutableObjectList) objE;
            int i2 = mutableObjectList.f3346b;
            Object[] objArr = mutableObjectList.f3345a;
            int i3 = 0;
            IntRange intRangeJ = RangesKt.j(0, i2);
            int i4 = intRangeJ.f71951b;
            int i5 = intRangeJ.f71952c;
            if (i4 <= i5) {
                while (true) {
                    objArr[i4 - i3] = objArr[i4];
                    if (((Boolean) function1.invoke(objArr[i4])).booleanValue()) {
                        i3++;
                    }
                    if (i4 == i5) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            ArraysKt.r(objArr, i2 - i3, i2, null);
            mutableObjectList.f3346b -= i3;
            if (mutableObjectList.d()) {
                mutableScatterMap.m(movableContent);
            }
            if (mutableObjectList.f3346b == 1) {
                mutableScatterMap.o(movableContent, mutableObjectList.a());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0060 A[LOOP:0: B:9:0x001e->B:22:0x0060, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0063 A[EDGE_INSN: B:25:0x0063->B:23:0x0063 BREAK  A[LOOP:0: B:9:0x001e->B:22:0x0060], SYNTHETIC] */
    public static final MutableObjectList e(MutableScatterMap mutableScatterMap) {
        if (mutableScatterMap.f()) {
            MutableObjectList mutableObjectList = ObjectListKt.f3349b;
            mutableObjectList.getClass();
            return mutableObjectList;
        }
        MutableObjectList mutableObjectList2 = new MutableObjectList(0, 1, null);
        Object[] objArr = mutableScatterMap.f3363c;
        long[] jArr = mutableScatterMap.f3361a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            Object obj = objArr[(i2 << 3) + i4];
                            if (obj instanceof MutableObjectList) {
                                mutableObjectList2.h((MutableObjectList) obj);
                            } else {
                                obj.getClass();
                                mutableObjectList2.g(obj);
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                    if (i2 != length) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return mutableObjectList2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MultiValueMap) {
            return this.f8164a.equals(((MultiValueMap) obj).f8164a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8164a.hashCode();
    }

    public final String toString() {
        return "MultiValueMap(map=" + this.f8164a + ')';
    }
}

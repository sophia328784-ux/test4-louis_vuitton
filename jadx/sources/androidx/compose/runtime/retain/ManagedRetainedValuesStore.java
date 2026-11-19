package androidx.compose.runtime.retain;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;", "Landroidx/compose/runtime/retain/RetainedValuesStore;", "<init>", "()V", "runtime-retain"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ManagedRetainedValuesStore implements RetainedValuesStore {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f8415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8416c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f8414a = true;
    public final MutableScatterMap d = new MutableScatterMap(0, 1, null);

    /* JADX WARN: Code duplicated, block: B:24:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0063 A[LOOP:0: B:5:0x000d->B:25:0x0063, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0066 A[EDGE_INSN: B:29:0x0066->B:26:0x0066 BREAK  A[LOOP:0: B:5:0x000d->B:25:0x0063], SYNTHETIC] */
    public final void a() {
        MutableScatterMap mutableScatterMap = this.d;
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
                                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                                Object[] objArr2 = mutableObjectList.f3345a;
                                int i5 = mutableObjectList.f3346b;
                                for (int i6 = 0; i6 < i5; i6++) {
                                    Object obj2 = objArr2[i6];
                                    if (obj2 instanceof RetainObserver) {
                                        ((RetainObserver) obj2).a();
                                    }
                                }
                            } else if (obj instanceof RetainObserver) {
                                ((RetainObserver) obj).a();
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    } else if (i2 != length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        mutableScatterMap.h();
    }
}

package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import java.util.Map;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function2 {
    /* JADX WARN: Code duplicated, block: B:17:0x005a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x005c A[LOOP:0: B:5:0x0015->B:18:0x005c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x005f A[EDGE_INSN: B:24:0x005f->B:19:0x005f BREAK  A[LOOP:0: B:5:0x0015->B:18:0x005c], SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj2;
        Map map = saveableStateHolderImpl.f8423b;
        MutableScatterMap mutableScatterMap = saveableStateHolderImpl.f8424c;
        Object[] objArr = mutableScatterMap.f3362b;
        Object[] objArr2 = mutableScatterMap.f3363c;
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
                            int i5 = (i2 << 3) + i4;
                            Object obj3 = objArr[i5];
                            Map mapD = ((SaveableStateRegistry) objArr2[i5]).d();
                            if (mapD.isEmpty()) {
                                map.remove(obj3);
                            } else {
                                map.put(obj3, mapD);
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
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }
}

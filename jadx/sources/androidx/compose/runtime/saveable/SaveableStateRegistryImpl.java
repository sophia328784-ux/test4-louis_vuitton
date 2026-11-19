package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import defpackage.md;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B9\u0012\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0018\u00010\u0002\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "", "", "", "", "restored", "Lkotlin/Function1;", "", "canBeSaved", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SaveableStateRegistryImpl implements SaveableStateRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f8429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableScatterMap f8430c;
    public MutableScatterMap d;

    public SaveableStateRegistryImpl(Map<String, ? extends List<? extends Object>> map, Function1<Object, Boolean> function1) {
        MutableScatterMap mutableScatterMap;
        this.f8429b = function1;
        if (map == null || map.isEmpty()) {
            mutableScatterMap = null;
        } else {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.f8434a;
            mutableScatterMap = new MutableScatterMap(map.size());
            for (Map.Entry<String, ? extends List<? extends Object>> entry : map.entrySet()) {
                mutableScatterMap.o(entry.getKey(), entry.getValue());
            }
        }
        this.f8430c = mutableScatterMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean a(Object obj) {
        return ((Boolean) this.f8429b.invoke(obj)).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry b(final String str, final Function0 function0) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.f8434a;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!CharsKt.c(str.charAt(i2))) {
                final MutableScatterMap mutableScatterMapB = this.d;
                if (mutableScatterMapB == null) {
                    mutableScatterMapB = ScatterMapKt.b();
                    this.d = mutableScatterMapB;
                }
                Object objE = mutableScatterMapB.e(str);
                if (objE == null) {
                    objE = new ArrayList();
                    mutableScatterMapB.o(str, objE);
                }
                ((List) objE).add(function0);
                return new SaveableStateRegistry.Entry() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3
                    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry.Entry
                    public final void a() {
                        MutableScatterMap mutableScatterMap = mutableScatterMapB;
                        String str2 = str;
                        List list = (List) mutableScatterMap.m(str2);
                        if (list != null) {
                            list.remove(function0);
                        }
                        List list2 = list;
                        if (list2 == null || list2.isEmpty()) {
                            return;
                        }
                        mutableScatterMap.o(str2, list);
                    }
                };
            }
        }
        md.n("Registered key is empty or blank");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map d() {
        char c2;
        long j2;
        long j3;
        long j4;
        long[] jArr;
        int i2;
        long[] jArr2;
        int i3;
        MutableScatterMap mutableScatterMap = this.f8430c;
        if (mutableScatterMap == null && this.d == null) {
            return MapsKt.c();
        }
        int i4 = 0;
        int i5 = mutableScatterMap != null ? mutableScatterMap.f3364e : 0;
        MutableScatterMap mutableScatterMap2 = this.d;
        HashMap map = new HashMap(i5 + (mutableScatterMap2 != null ? mutableScatterMap2.f3364e : 0));
        char c3 = 7;
        long j5 = -9187201950435737472L;
        int i6 = 8;
        if (mutableScatterMap != null) {
            Object[] objArr = mutableScatterMap.f3362b;
            Object[] objArr2 = mutableScatterMap.f3363c;
            long[] jArr3 = mutableScatterMap.f3361a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i7 = 0;
                j3 = 128;
                while (true) {
                    long j6 = jArr3[i7];
                    j4 = 255;
                    if ((((~j6) << c3) & j6 & j5) != j5) {
                        int i8 = 8 - ((~(i7 - length)) >>> 31);
                        int i9 = 0;
                        while (i9 < i8) {
                            if ((j6 & 255) < 128) {
                                int i10 = (i7 << 3) + i9;
                                map.put((String) objArr[i10], (List) objArr2[i10]);
                            }
                            j6 >>= 8;
                            i9++;
                            c3 = c3;
                            j5 = j5;
                        }
                        c2 = c3;
                        j2 = j5;
                        if (i8 != 8) {
                            break;
                        }
                    } else {
                        c2 = c3;
                        j2 = j5;
                    }
                    if (i7 == length) {
                        break;
                    }
                    i7++;
                    c3 = c2;
                    j5 = j2;
                }
            } else {
                c2 = 7;
                j2 = -9187201950435737472L;
                j3 = 128;
                j4 = 255;
            }
        } else {
            c2 = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
            j4 = 255;
        }
        MutableScatterMap mutableScatterMap3 = this.d;
        if (mutableScatterMap3 != null) {
            Object[] objArr3 = mutableScatterMap3.f3362b;
            Object[] objArr4 = mutableScatterMap3.f3363c;
            long[] jArr4 = mutableScatterMap3.f3361a;
            int length2 = jArr4.length - 2;
            if (length2 >= 0) {
                int i11 = 0;
                while (true) {
                    long j7 = jArr4[i11];
                    if ((((~j7) << c2) & j7 & j2) != j2) {
                        int i12 = 8 - ((~(i11 - length2)) >>> 31);
                        int i13 = i4;
                        while (i13 < i12) {
                            if ((j7 & j4) < j3) {
                                int i14 = (i11 << 3) + i13;
                                Object obj = objArr3[i14];
                                List list = (List) objArr4[i14];
                                String str = (String) obj;
                                i3 = i6;
                                if (list.size() == 1) {
                                    Object objMo47invoke = ((Function0) list.get(i4)).mo47invoke();
                                    if (objMo47invoke != null) {
                                        if (!a(objMo47invoke)) {
                                            tg0.c(RememberSaveableKt.a(objMo47invoke));
                                            return null;
                                        }
                                        map.put(str, CollectionsKt.l(objMo47invoke));
                                    }
                                    jArr2 = jArr4;
                                } else {
                                    int size = list.size();
                                    ArrayList arrayList = new ArrayList(size);
                                    while (i4 < size) {
                                        long[] jArr5 = jArr4;
                                        Object objMo47invoke2 = ((Function0) list.get(i4)).mo47invoke();
                                        if (objMo47invoke2 != null && !a(objMo47invoke2)) {
                                            tg0.c(RememberSaveableKt.a(objMo47invoke2));
                                            return null;
                                        }
                                        arrayList.add(objMo47invoke2);
                                        i4++;
                                        jArr4 = jArr5;
                                    }
                                    jArr2 = jArr4;
                                    map.put(str, arrayList);
                                }
                            } else {
                                jArr2 = jArr4;
                                i3 = i6;
                            }
                            j7 >>= i3;
                            i13++;
                            i6 = i3;
                            jArr4 = jArr2;
                            i4 = 0;
                        }
                        jArr = jArr4;
                        i2 = i6;
                        if (i12 != i2) {
                            break;
                        }
                    } else {
                        jArr = jArr4;
                        i2 = i6;
                    }
                    if (i11 == length2) {
                        break;
                    }
                    i11++;
                    i6 = i2;
                    jArr4 = jArr;
                    i4 = 0;
                }
            }
        }
        return map;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object e(String str) {
        MutableScatterMap mutableScatterMap = this.f8430c;
        List list = mutableScatterMap != null ? (List) mutableScatterMap.m(str) : null;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        if (list.size() > 1 && mutableScatterMap != null) {
            List listSubList = list.subList(1, list.size());
            int iJ = mutableScatterMap.j(str);
            if (iJ < 0) {
                iJ = ~iJ;
            }
            Object[] objArr = mutableScatterMap.f3363c;
            Object obj = objArr[iJ];
            mutableScatterMap.f3362b[iJ] = str;
            objArr[iJ] = listSubList;
        }
        return list.get(0);
    }
}

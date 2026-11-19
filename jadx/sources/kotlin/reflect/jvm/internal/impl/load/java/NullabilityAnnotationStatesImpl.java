package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;

/* JADX INFO: loaded from: classes4.dex */
public final class NullabilityAnnotationStatesImpl<T> implements NullabilityAnnotationStates<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f72890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemoizedFunctionToNullable f72891c;

    public NullabilityAnnotationStatesImpl(Map<FqName, ? extends T> map) {
        map.getClass();
        this.f72890b = map;
        this.f72891c = new LockBasedStorageManager("Java nullability annotation states").g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.NullabilityAnnotationStatesImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final NullabilityAnnotationStatesImpl f72892b;

            {
                this.f72892b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object next;
                FqName fqName = (FqName) obj;
                fqName.getClass();
                Map map2 = this.f72892b.f72890b;
                map2.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = map2.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    FqName fqName2 = (FqName) entry.getKey();
                    if (!Intrinsics.c(fqName, fqName2)) {
                        fqName2.getClass();
                        if (Intrinsics.c(fqName.f73679a.c() ? null : fqName.b(), fqName2)) {
                        }
                    }
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
                if (linkedHashMap.isEmpty()) {
                    linkedHashMap = null;
                }
                if (linkedHashMap != null) {
                    Iterator it2 = linkedHashMap.entrySet().iterator();
                    if (it2.hasNext()) {
                        next = it2.next();
                        if (it2.hasNext()) {
                            int length = FqNamesUtilKt.b((FqName) ((Map.Entry) next).getKey(), fqName).f73679a.f73683a.length();
                            do {
                                Object next2 = it2.next();
                                int length2 = FqNamesUtilKt.b((FqName) ((Map.Entry) next2).getKey(), fqName).f73679a.f73683a.length();
                                if (length > length2) {
                                    next = next2;
                                    length = length2;
                                }
                            } while (it2.hasNext());
                        }
                    } else {
                        next = null;
                    }
                    Map.Entry entry2 = (Map.Entry) next;
                    if (entry2 != null) {
                        return entry2.getValue();
                    }
                }
                return null;
            }
        });
    }
}

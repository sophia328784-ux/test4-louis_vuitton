package kotlin.reflect.full;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KClasses {
    public static final boolean a(KClass kClass, final KClass kClass2) {
        kClass.getClass();
        kClass2.getClass();
        if (Intrinsics.c(kClass, kClass2)) {
            return true;
        }
        List listO = CollectionsKt.O(kClass);
        final KClasses$isSubclassOf$1 kClasses$isSubclassOf$1 = KClasses$isSubclassOf$1.f71974b;
        return DFS.d(listO, new DFS.Neighbors(kClasses$isSubclassOf$1) { // from class: kotlin.reflect.full.KClasses$$Lambda$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final KProperty1 f71972a;

            {
                this.f71972a = kClasses$isSubclassOf$1;
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
            public final Iterable a(Object obj) {
                return (Iterable) this.f71972a.invoke((KClass) obj);
            }
        }, new Function1(kClass2) { // from class: kotlin.reflect.full.KClasses$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KClass f71973b;

            {
                this.f71973b = kClass2;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(Intrinsics.c((KClass) obj, this.f71973b));
            }
        }).booleanValue();
    }
}

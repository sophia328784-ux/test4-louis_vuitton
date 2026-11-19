package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class KClasses$isSubclassOf$1 extends PropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KClasses$isSubclassOf$1 f71974b = new KClasses$isSubclassOf$1(KClasses.class, "superclasses", "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;", 1);

    @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        KClass kClass = (KClass) obj;
        kClass.getClass();
        List listI = kClass.i();
        ArrayList arrayList = new ArrayList();
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            KClassifier kClassifierA = ((KType) it.next()).a();
            KClass kClass2 = kClassifierA instanceof KClass ? (KClass) kClassifierA : null;
            if (kClass2 != null) {
                arrayList.add(kClass2);
            }
        }
        return arrayList;
    }
}

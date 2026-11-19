package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution$Companion$createByConstructorsMap$1;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MappingUtilKt {
    public static final TypeConstructorSubstitution$Companion$createByConstructorsMap$1 a(ClassDescriptor classDescriptor, ClassDescriptor classDescriptor2) {
        classDescriptor.getClass();
        classDescriptor2.getClass();
        classDescriptor.p().size();
        classDescriptor2.p().size();
        TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.f74244b;
        List listP = classDescriptor.p();
        listP.getClass();
        List list = listP;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeParameterDescriptor) it.next()).j());
        }
        List listP2 = classDescriptor2.p();
        listP2.getClass();
        List list2 = listP2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            SimpleType simpleTypeO = ((TypeParameterDescriptor) it2.next()).o();
            simpleTypeO.getClass();
            arrayList2.add(new TypeProjectionImpl(simpleTypeO));
        }
        return TypeConstructorSubstitution.Companion.b(companion, MapsKt.n(CollectionsKt.E0(arrayList, arrayList2)));
    }
}

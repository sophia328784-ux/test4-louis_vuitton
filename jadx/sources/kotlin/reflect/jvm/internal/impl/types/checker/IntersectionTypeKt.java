package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.types.DynamicType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IntersectionTypeKt {
    public static final UnwrappedType a(ArrayList arrayList) {
        SimpleType simpleType;
        int size = arrayList.size();
        if (size == 0) {
            md.k("Expected some types");
            return null;
        }
        if (size == 1) {
            return (UnwrappedType) CollectionsKt.g0(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            UnwrappedType unwrappedType = (UnwrappedType) it.next();
            z = z || KotlinTypeKt.a(unwrappedType);
            if (unwrappedType instanceof SimpleType) {
                simpleType = (SimpleType) unwrappedType;
            } else {
                if (!(unwrappedType instanceof FlexibleType)) {
                    v40.g();
                    return null;
                }
                if (unwrappedType instanceof DynamicType) {
                    return unwrappedType;
                }
                simpleType = ((FlexibleType) unwrappedType).f74193c;
                z2 = true;
            }
            arrayList2.add(simpleType);
        }
        if (z) {
            return ErrorUtils.c(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, arrayList.toString());
        }
        TypeIntersector typeIntersector = TypeIntersector.f74294a;
        if (!z2) {
            return typeIntersector.b(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(FlexibleTypesKt.b((UnwrappedType) it2.next()));
        }
        return KotlinTypeFactory.a(typeIntersector.b(arrayList2), typeIntersector.b(arrayList3));
    }
}

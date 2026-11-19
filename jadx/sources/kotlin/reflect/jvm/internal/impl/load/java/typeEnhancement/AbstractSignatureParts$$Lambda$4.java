package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;

/* JADX INFO: loaded from: classes4.dex */
class AbstractSignatureParts$$Lambda$4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractSignatureParts f73095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeSystemContext f73096c;

    public AbstractSignatureParts$$Lambda$4(AbstractSignatureParts abstractSignatureParts, TypeSystemContext typeSystemContext) {
        this.f73095b = abstractSignatureParts;
        this.f73096c = typeSystemContext;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TypeConstructorMarker typeConstructorMarkerV;
        List listJ0;
        AbstractSignatureParts.TypeAndDefaultQualifiers typeAndDefaultQualifiers = (AbstractSignatureParts.TypeAndDefaultQualifiers) obj;
        typeAndDefaultQualifiers.getClass();
        KotlinTypeMarker kotlinTypeMarker = typeAndDefaultQualifiers.f73097a;
        AbstractSignatureParts abstractSignatureParts = this.f73095b;
        boolean zJ = abstractSignatureParts.j();
        TypeSystemContext typeSystemContext = this.f73096c;
        if ((zJ && kotlinTypeMarker != null && typeSystemContext.u(kotlinTypeMarker)) || kotlinTypeMarker == null || (typeConstructorMarkerV = typeSystemContext.V(kotlinTypeMarker)) == null || (listJ0 = typeSystemContext.j0(typeConstructorMarkerV)) == null) {
            return null;
        }
        List list = listJ0;
        List listY = typeSystemContext.y(kotlinTypeMarker);
        Iterator it = list.iterator();
        Iterator it2 = listY.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.t(list, 10), CollectionsKt.t(listY, 10)));
        while (it.hasNext() && it2.hasNext()) {
            TypeParameterMarker typeParameterMarker = (TypeParameterMarker) it.next();
            KotlinTypeMarker kotlinTypeMarkerQ0 = typeSystemContext.q0((TypeArgumentMarker) it2.next());
            JavaTypeQualifiersByElementType javaTypeQualifiersByElementType = typeAndDefaultQualifiers.f73098b;
            arrayList.add(kotlinTypeMarkerQ0 == null ? new AbstractSignatureParts.TypeAndDefaultQualifiers(null, javaTypeQualifiersByElementType, typeParameterMarker) : new AbstractSignatureParts.TypeAndDefaultQualifiers(kotlinTypeMarkerQ0, AbstractAnnotationTypeQualifierResolver.b(abstractSignatureParts.c(), javaTypeQualifiersByElementType, abstractSignatureParts.d(kotlinTypeMarkerQ0)), typeParameterMarker));
        }
        return arrayList;
    }
}

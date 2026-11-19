package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.b21;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractSignatureParts<TAnnotation> {

    public static final class TypeAndDefaultQualifiers {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KotlinTypeMarker f73097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JavaTypeQualifiersByElementType f73098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TypeParameterMarker f73099c;

        public TypeAndDefaultQualifiers(KotlinTypeMarker kotlinTypeMarker, JavaTypeQualifiersByElementType javaTypeQualifiersByElementType, TypeParameterMarker typeParameterMarker) {
            this.f73097a = kotlinTypeMarker;
            this.f73098b = javaTypeQualifiersByElementType;
            this.f73099c = typeParameterMarker;
        }
    }

    public static void a(Object obj, ArrayList arrayList, Function1 function1) {
        arrayList.add(obj);
        Iterable iterable = (Iterable) ((AbstractSignatureParts$$Lambda$4) function1).invoke(obj);
        if (iterable != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next(), arrayList, function1);
            }
        }
    }

    public abstract boolean b(Object obj, KotlinTypeMarker kotlinTypeMarker);

    public abstract AnnotationTypeQualifierResolver c();

    public abstract Annotations d(KotlinTypeMarker kotlinTypeMarker);

    public final NullabilityQualifierWithMigrationStatus e(TypeParameterMarker typeParameterMarker) {
        final List upperBounds;
        List list;
        NullabilityQualifier nullabilityQualifier;
        if (k(typeParameterMarker)) {
            typeParameterMarker.getClass();
            if (typeParameterMarker instanceof TypeParameterDescriptor) {
                upperBounds = ((TypeParameterDescriptor) typeParameterMarker).getUpperBounds();
                upperBounds.getClass();
            } else {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(typeParameterMarker);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, typeParameterMarker.getClass(), sb));
                upperBounds = null;
            }
            List list2 = upperBounds;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    if (!ClassicTypeSystemContext.DefaultImpls.D((KotlinTypeMarker) it.next())) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list2) {
                            if (i((KotlinTypeMarker) obj) != null) {
                                arrayList.add(obj);
                            }
                        }
                        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0(upperBounds, this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$$Lambda$1

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final List f73089b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final AbstractSignatureParts f73090c;

                            {
                                this.f73089b = upperBounds;
                                this.f73090c = this;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                List list3 = this.f73089b;
                                ArrayList arrayList2 = new ArrayList();
                                Iterator it2 = list3.iterator();
                                while (it2.hasNext()) {
                                    KotlinType kotlinTypeH = this.f73090c.h((KotlinTypeMarker) it2.next());
                                    if (kotlinTypeH != null) {
                                        arrayList2.add(kotlinTypeH);
                                    }
                                }
                                return arrayList2;
                            }
                        });
                        if (!arrayList.isEmpty()) {
                            if (!arrayList.isEmpty()) {
                                Iterator it2 = arrayList.iterator();
                                if (it2.hasNext()) {
                                    ((KotlinTypeMarker) it2.next()).getClass();
                                    list = upperBounds;
                                }
                            }
                            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, false);
                        }
                        if (((List) lazyA.getF71699b()).isEmpty()) {
                            break;
                        }
                        List list3 = (List) lazyA.getF71699b();
                        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                            Iterator it3 = list3.iterator();
                            if (it3.hasNext()) {
                                ((KotlinTypeMarker) it3.next()).getClass();
                                list = (List) lazyA.getF71699b();
                            }
                        }
                        return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, true);
                        List list4 = list;
                        if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                            Iterator it4 = list4.iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                    break;
                                }
                                if (!ClassicTypeSystemContext.DefaultImpls.J((KotlinTypeMarker) it4.next())) {
                                    nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                    break;
                                }
                            }
                        } else {
                            nullabilityQualifier = NullabilityQualifier.NULLABLE;
                            break;
                        }
                        return new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, list != upperBounds);
                    }
                }
            }
        }
        return null;
    }

    public abstract AnnotationQualifierApplicabilityType f();

    public abstract JavaTypeQualifiersByElementType g();

    public abstract KotlinType h(KotlinTypeMarker kotlinTypeMarker);

    public final NullabilityQualifier i(KotlinTypeMarker kotlinTypeMarker) {
        SimpleClassicTypeSystemContext simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
        if (ClassicTypeSystemContext.DefaultImpls.H(simpleClassicTypeSystemContext.l0(kotlinTypeMarker))) {
            return NullabilityQualifier.NULLABLE;
        }
        if (ClassicTypeSystemContext.DefaultImpls.H(simpleClassicTypeSystemContext.w(kotlinTypeMarker))) {
            return null;
        }
        return NullabilityQualifier.NOT_NULL;
    }

    public abstract boolean j();

    public abstract boolean k(TypeParameterMarker typeParameterMarker);

    public final ArrayList l(KotlinTypeMarker kotlinTypeMarker) {
        TypeAndDefaultQualifiers typeAndDefaultQualifiers = new TypeAndDefaultQualifiers(kotlinTypeMarker, AbstractAnnotationTypeQualifierResolver.b(c(), g(), d(kotlinTypeMarker)), null);
        AbstractSignatureParts$$Lambda$4 abstractSignatureParts$$Lambda$4 = new AbstractSignatureParts$$Lambda$4(this, SimpleClassicTypeSystemContext.f74291a);
        ArrayList arrayList = new ArrayList(1);
        a(typeAndDefaultQualifiers, arrayList, abstractSignatureParts$$Lambda$4);
        return arrayList;
    }
}

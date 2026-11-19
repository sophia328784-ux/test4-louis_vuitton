package kotlin.reflect.full;

import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.SystemPropertiesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.types.AbstractKType;
import kotlin.reflect.jvm.internal.types.CapturedKTypeKt;
import kotlin.reflect.jvm.internal.types.DescriptorKType;
import kotlin.reflect.jvm.internal.types.SimpleKType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KClassifiers {
    public static final void a(int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        md.n(fc.f(i2, i3, "Class declares ", " type parameters, but ", " were provided."));
    }

    public static final AbstractKType b(KClassifier kClassifier, List list, boolean z, List list2) {
        kClassifier.getClass();
        list.getClass();
        list2.getClass();
        return d(kClassifier, list, z, list2, null);
    }

    public static AbstractKType c(KClassifier kClassifier, ArrayList arrayList, int i2) {
        List list = arrayList;
        if ((i2 & 1) != 0) {
            list = EmptyList.f71768b;
        }
        return b(kClassifier, list, false, EmptyList.f71768b);
    }

    public static final AbstractKType d(KClassifier kClassifier, List list, boolean z, List list2, KClass kClass) {
        ClassifierDescriptor classifierDescriptorW;
        TypeProjectionBase starProjectionImpl;
        kClassifier.getClass();
        list.getClass();
        list2.getClass();
        if (!SystemPropertiesKt.f72181a) {
            KClass kClass2 = kClassifier instanceof KClass ? (KClass) kClassifier : null;
            List listA = kClass2 != null ? CapturedKTypeKt.a(kClass2) : null;
            if (listA == null) {
                listA = EmptyList.f71768b;
            }
            a(listA.size(), list.size());
            return new SimpleKType(kClassifier, list, z, list2, null, false, false, false, kClass, null, 512, null);
        }
        if (kClassifier instanceof KClassImpl) {
            classifierDescriptorW = ((KClassImpl) kClassifier).W();
        } else {
            if (!(kClassifier instanceof KTypeParameterImpl)) {
                StringBuilder sb = new StringBuilder("Cannot create type for an unsupported classifier: ");
                sb.append(kClassifier);
                d20.o(sb, " (", kClassifier.getClass());
                return null;
            }
            KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) kClassifier;
            TypeParameterDescriptor typeParameterDescriptor = kTypeParameterImpl.f72162f;
            if (typeParameterDescriptor == null) {
                mt.f(kTypeParameterImpl, "Descriptor-less type parameter: ");
                return null;
            }
            classifierDescriptorW = typeParameterDescriptor;
        }
        a(classifierDescriptorW.j().getParameters().size(), list.size());
        TypeConstructor typeConstructorJ = classifierDescriptorW.j();
        typeConstructorJ.getClass();
        List parameters = typeConstructorJ.getParameters();
        parameters.getClass();
        TypeAttributes.f74232c.getClass();
        TypeAttributes typeAttributes = TypeAttributes.d;
        List list3 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        int i2 = 0;
        for (Object obj : list3) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            KTypeProjection kTypeProjection = (KTypeProjection) obj;
            DescriptorKType descriptorKType = (DescriptorKType) kTypeProjection.f71960b;
            KotlinType kotlinType = descriptorKType != null ? descriptorKType.f74413c : null;
            KVariance kVariance = kTypeProjection.f71959a;
            int i4 = kVariance == null ? -1 : K1ImplementationKt$WhenMappings.f71971a[kVariance.ordinal()];
            if (i4 == -1) {
                Object obj2 = parameters.get(i2);
                obj2.getClass();
                starProjectionImpl = new StarProjectionImpl((TypeParameterDescriptor) obj2);
            } else if (i4 == 1) {
                Variance variance = Variance.INVARIANT;
                kotlinType.getClass();
                starProjectionImpl = new TypeProjectionImpl(variance, kotlinType);
            } else if (i4 == 2) {
                Variance variance2 = Variance.IN_VARIANCE;
                kotlinType.getClass();
                starProjectionImpl = new TypeProjectionImpl(variance2, kotlinType);
            } else {
                if (i4 != 3) {
                    v40.g();
                    return null;
                }
                Variance variance3 = Variance.OUT_VARIANCE;
                kotlinType.getClass();
                starProjectionImpl = new TypeProjectionImpl(variance3, kotlinType);
            }
            arrayList.add(starProjectionImpl);
            i2 = i3;
        }
        return new DescriptorKType(KotlinTypeFactory.d(typeAttributes, typeConstructorJ, arrayList, z, null), null, 2, null);
    }
}

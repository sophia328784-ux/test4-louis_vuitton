package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FunctionTypesKt {
    public static final int a(KotlinType kotlinType) {
        kotlinType.getClass();
        AnnotationDescriptor annotationDescriptorJ = kotlinType.getAnnotations().j(StandardNames.FqNames.q);
        if (annotationDescriptorJ == null) {
            return 0;
        }
        ConstantValue constantValue = (ConstantValue) MapsKt.d(annotationDescriptorJ.a(), StandardNames.f72265e);
        constantValue.getClass();
        return ((Number) ((IntValue) constantValue).f73869a).intValue();
    }

    public static final SimpleType b(KotlinBuiltIns kotlinBuiltIns, Annotations annotations, KotlinType kotlinType, List list, ArrayList arrayList, KotlinType kotlinType2, boolean z) {
        ClassDescriptor classDescriptorK;
        Annotations annotationsA;
        kotlinBuiltIns.getClass();
        list.getClass();
        kotlinType2.getClass();
        ArrayList arrayList2 = new ArrayList(list.size() + arrayList.size() + (kotlinType != null ? 1 : 0) + 1);
        List<KotlinType> list2 = list;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
        for (KotlinType kotlinType3 : list2) {
            kotlinType3.getClass();
            arrayList3.add(new TypeProjectionImpl(kotlinType3));
        }
        arrayList2.addAll(arrayList3);
        TypeProjectionImpl typeProjectionImpl = kotlinType != null ? new TypeProjectionImpl(kotlinType) : null;
        if (typeProjectionImpl != null) {
            arrayList2.add(typeProjectionImpl);
        }
        int i2 = 0;
        for (Object obj : arrayList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            KotlinType kotlinType4 = (KotlinType) obj;
            kotlinType4.getClass();
            arrayList2.add(new TypeProjectionImpl(kotlinType4));
            i2 = i3;
        }
        arrayList2.add(new TypeProjectionImpl(kotlinType2));
        int size = list.size() + arrayList.size() + (kotlinType != null ? 1 : 0);
        if (z) {
            classDescriptorK = kotlinBuiltIns.w(size);
        } else {
            Name name = StandardNames.f72262a;
            classDescriptorK = kotlinBuiltIns.k("Function" + size);
        }
        ClassDescriptor classDescriptor = classDescriptorK;
        classDescriptor.getClass();
        if (kotlinType != null) {
            FqName fqName = StandardNames.FqNames.p;
            annotationsA = annotations.C1(fqName) ? annotations : Annotations.Companion.a(CollectionsKt.W(annotations, new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName, MapsKt.c(), false, 8, null)));
        } else {
            annotationsA = annotations;
        }
        if (!list.isEmpty()) {
            int size2 = list.size();
            FqName fqName2 = StandardNames.FqNames.q;
            if (!annotationsA.C1(fqName2)) {
                annotationsA = Annotations.Companion.a(CollectionsKt.W(annotationsA, new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName2, MapsKt.h(new Pair(StandardNames.f72265e, new IntValue(size2))), false, 8, null)));
            }
        }
        return KotlinTypeFactory.c(DefaultTypeAttributeTranslator.f74181a.a(annotationsA), classDescriptor, arrayList2);
    }

    public static final Name c(KotlinType kotlinType) {
        String str;
        kotlinType.getClass();
        AnnotationDescriptor annotationDescriptorJ = kotlinType.getAnnotations().j(StandardNames.FqNames.r);
        if (annotationDescriptorJ != null) {
            Object objI0 = CollectionsKt.i0(annotationDescriptorJ.a().values());
            StringValue stringValue = objI0 instanceof StringValue ? (StringValue) objI0 : null;
            if (stringValue != null && (str = (String) stringValue.f73869a) != null) {
                if (!Name.f(str)) {
                    str = null;
                }
                if (str != null) {
                    return Name.e(str);
                }
            }
        }
        return null;
    }

    public static final List d(KotlinType kotlinType) {
        kotlinType.getClass();
        h(kotlinType);
        int iA = a(kotlinType);
        if (iA == 0) {
            return EmptyList.f71768b;
        }
        List listSubList = kotlinType.F0().subList(0, iA);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listSubList, 10));
        Iterator it = listSubList.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeProjection) it.next()).getType());
        }
        return arrayList;
    }

    public static final FunctionTypeKind e(FqNameUnsafe fqNameUnsafe) {
        if (!fqNameUnsafe.d() || fqNameUnsafe.c()) {
            return null;
        }
        FunctionTypeKindExtractor.f72297c.getClass();
        FunctionTypeKindExtractor functionTypeKindExtractor = FunctionTypeKindExtractor.d;
        FqName fqNameB = fqNameUnsafe.i().b();
        String strB = fqNameUnsafe.g().b();
        strB.getClass();
        functionTypeKindExtractor.getClass();
        FunctionTypeKindExtractor.KindWithArity kindWithArityA = functionTypeKindExtractor.a(strB, fqNameB);
        if (kindWithArityA != null) {
            return kindWithArityA.f72300a;
        }
        return null;
    }

    public static final KotlinType f(KotlinType kotlinType) {
        kotlinType.getClass();
        h(kotlinType);
        if (kotlinType.getAnnotations().j(StandardNames.FqNames.p) == null) {
            return null;
        }
        return ((TypeProjection) kotlinType.F0().get(a(kotlinType))).getType();
    }

    public static final List g(KotlinType kotlinType) {
        kotlinType.getClass();
        h(kotlinType);
        List listF0 = kotlinType.F0();
        return listF0.subList(((!h(kotlinType) || kotlinType.getAnnotations().j(StandardNames.FqNames.p) == null) ? 0 : 1) + a(kotlinType), listF0.size() - 1);
    }

    public static final boolean h(KotlinType kotlinType) {
        FunctionTypeKind functionTypeKindE;
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        if (classifierDescriptorY == null) {
            return false;
        }
        if ((classifierDescriptorY instanceof ClassDescriptor) && KotlinBuiltIns.K(classifierDescriptorY)) {
            int i2 = DescriptorUtilsKt.f73888a;
            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classifierDescriptorY);
            fqNameUnsafeF.getClass();
            functionTypeKindE = e(fqNameUnsafeF);
        } else {
            functionTypeKindE = null;
        }
        return Intrinsics.c(functionTypeKindE, FunctionTypeKind.Function.f72293c) || Intrinsics.c(functionTypeKindE, FunctionTypeKind.SuspendFunction.f72296c);
    }

    public static final boolean i(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        FunctionTypeKind functionTypeKindE = null;
        if (classifierDescriptorY != null && (classifierDescriptorY instanceof ClassDescriptor) && KotlinBuiltIns.K(classifierDescriptorY)) {
            int i2 = DescriptorUtilsKt.f73888a;
            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classifierDescriptorY);
            fqNameUnsafeF.getClass();
            functionTypeKindE = e(fqNameUnsafeF);
        }
        return Intrinsics.c(functionTypeKindE, FunctionTypeKind.SuspendFunction.f72296c);
    }
}

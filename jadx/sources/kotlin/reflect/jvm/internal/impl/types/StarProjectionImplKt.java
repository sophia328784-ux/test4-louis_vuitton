package kotlin.reflect.jvm.internal.impl.types;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StarProjectionImplKt {
    public static final KotlinType a(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        DeclarationDescriptor declarationDescriptorD = typeParameterDescriptor.d();
        declarationDescriptorD.getClass();
        if (declarationDescriptorD instanceof ClassifierDescriptorWithTypeParameters) {
            List parameters = ((ClassifierDescriptorWithTypeParameters) declarationDescriptorD).j().getParameters();
            parameters.getClass();
            List list = parameters;
            final ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TypeConstructor typeConstructorJ = ((TypeParameterDescriptor) it.next()).j();
                typeConstructorJ.getClass();
                arrayList.add(typeConstructorJ);
            }
            List upperBounds = typeParameterDescriptor.getUpperBounds();
            upperBounds.getClass();
            int i2 = DescriptorUtilsKt.f73888a;
            ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(typeParameterDescriptor);
            moduleDescriptorC.getClass();
            KotlinBuiltIns kotlinBuiltInsG = moduleDescriptorC.g();
            KotlinType kotlinTypeJ = TypeSubstitutor.e(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1
                @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
                public final TypeProjection g(TypeConstructor typeConstructor) {
                    typeConstructor.getClass();
                    if (!arrayList.contains(typeConstructor)) {
                        return null;
                    }
                    ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
                    classifierDescriptorY.getClass();
                    return TypeUtils.l((TypeParameterDescriptor) classifierDescriptorY);
                }
            }).j(Variance.OUT_VARIANCE, (KotlinType) CollectionsKt.B(upperBounds));
            return kotlinTypeJ == null ? kotlinBuiltInsG.n() : kotlinTypeJ;
        }
        if (!(declarationDescriptorD instanceof FunctionDescriptor)) {
            md.n("Unsupported descriptor type to build star projection type based on type parameters of it");
            return null;
        }
        List typeParameters = ((FunctionDescriptor) declarationDescriptorD).getTypeParameters();
        typeParameters.getClass();
        List list2 = typeParameters;
        final ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            TypeConstructor typeConstructorJ2 = ((TypeParameterDescriptor) it2.next()).j();
            typeConstructorJ2.getClass();
            arrayList2.add(typeConstructorJ2);
        }
        List upperBounds2 = typeParameterDescriptor.getUpperBounds();
        upperBounds2.getClass();
        int i3 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC2 = DescriptorUtils.c(typeParameterDescriptor);
        moduleDescriptorC2.getClass();
        KotlinBuiltIns kotlinBuiltInsG2 = moduleDescriptorC2.g();
        KotlinType kotlinTypeJ2 = TypeSubstitutor.e(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public final TypeProjection g(TypeConstructor typeConstructor) {
                typeConstructor.getClass();
                if (!arrayList2.contains(typeConstructor)) {
                    return null;
                }
                ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
                classifierDescriptorY.getClass();
                return TypeUtils.l((TypeParameterDescriptor) classifierDescriptorY);
            }
        }).j(Variance.OUT_VARIANCE, (KotlinType) CollectionsKt.B(upperBounds2));
        return kotlinTypeJ2 == null ? kotlinBuiltInsG2.n() : kotlinTypeJ2;
    }
}

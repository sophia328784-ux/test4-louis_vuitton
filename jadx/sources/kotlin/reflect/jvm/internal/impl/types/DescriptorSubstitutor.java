package kotlin.reflect.jvm.internal.impl.types;

import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorSubstitutor {
    public static /* synthetic */ void a(int i2) {
        String str = i2 != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i2 != 4 ? 3 : 2];
        switch (i2) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i2 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i2 != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i2 == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static TypeSubstitutor b(List list, TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, ArrayList arrayList) {
        if (typeSubstitution == null) {
            a(1);
            throw null;
        }
        if (declarationDescriptor == null) {
            a(2);
            throw null;
        }
        if (arrayList == null) {
            a(3);
            throw null;
        }
        TypeSubstitutor typeSubstitutorC = c(list, typeSubstitution, declarationDescriptor, arrayList, null);
        if (typeSubstitutorC != null) {
            return typeSubstitutorC;
        }
        md.h("Substitution failed");
        return null;
    }

    public static TypeSubstitutor c(List list, final TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, List list2, boolean[] zArr) {
        if (typeSubstitution == null) {
            a(6);
            throw null;
        }
        if (declarationDescriptor == null) {
            a(7);
            throw null;
        }
        if (list2 == null) {
            a(8);
            throw null;
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it.next();
            TypeParameterDescriptorImpl typeParameterDescriptorImplH0 = TypeParameterDescriptorImpl.H0(declarationDescriptor, typeParameterDescriptor.getAnnotations(), typeParameterDescriptor.u(), typeParameterDescriptor.l(), typeParameterDescriptor.getName(), i2, typeParameterDescriptor.H());
            map.put(typeParameterDescriptor.j(), new TypeProjectionImpl(typeParameterDescriptorImplH0.o()));
            map2.put(typeParameterDescriptor, typeParameterDescriptorImplH0);
            list2.add(typeParameterDescriptorImplH0);
            i2++;
        }
        TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.f74244b;
        companion.getClass();
        TypeConstructorSubstitution$Companion$createByConstructorsMap$1 typeConstructorSubstitution$Companion$createByConstructorsMap$1B = TypeConstructorSubstitution.Companion.b(companion, map);
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(typeSubstitution, typeConstructorSubstitution$Companion$createByConstructorsMap$1B);
        TypeSubstitutor typeSubstitutorF2 = TypeSubstitutor.f(new TypeSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeSubstitution$replaceWithNonApproximating$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            public final Annotations c(Annotations annotations) {
                annotations.getClass();
                return typeSubstitution.c(annotations);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            public final TypeProjection d(KotlinType kotlinType) {
                kotlinType.getClass();
                return typeSubstitution.d(kotlinType);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            public final boolean e() {
                return typeSubstitution.e();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            public final KotlinType f(Variance variance, KotlinType kotlinType) {
                kotlinType.getClass();
                variance.getClass();
                return typeSubstitution.f(variance, kotlinType);
            }
        }, typeConstructorSubstitution$Companion$createByConstructorsMap$1B);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) it2.next();
            TypeParameterDescriptorImpl typeParameterDescriptorImpl = (TypeParameterDescriptorImpl) map2.get(typeParameterDescriptor2);
            for (KotlinType kotlinType : typeParameterDescriptor2.getUpperBounds()) {
                ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
                KotlinType kotlinTypeJ = (((classifierDescriptorY instanceof TypeParameterDescriptor) && TypeUtilsKt.h((TypeParameterDescriptor) classifierDescriptorY, null, null)) ? typeSubstitutorF : typeSubstitutorF2).j(Variance.OUT_VARIANCE, kotlinType);
                if (kotlinTypeJ == null) {
                    return null;
                }
                if (kotlinTypeJ != kotlinType && zArr != null) {
                    zArr[0] = true;
                }
                if (typeParameterDescriptorImpl.m) {
                    md.k("Type parameter descriptor is already initialized: ".concat(typeParameterDescriptorImpl.J0()));
                    return null;
                }
                if (!KotlinTypeKt.a(kotlinTypeJ)) {
                    typeParameterDescriptorImpl.l.add(kotlinTypeJ);
                }
            }
            if (typeParameterDescriptorImpl.m) {
                md.k("Type parameter descriptor is already initialized: ".concat(typeParameterDescriptorImpl.J0()));
                return null;
            }
            typeParameterDescriptorImpl.m = true;
        }
        return typeSubstitutorF;
    }
}

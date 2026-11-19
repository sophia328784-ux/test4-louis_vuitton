package kotlin.reflect.jvm.internal.impl.types;

import defpackage.mt;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinTypeFactory {

    public static final class ExpandedTypeOrRefinedConstructor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TypeConstructor f74209a;

        public ExpandedTypeOrRefinedConstructor(SimpleType simpleType, TypeConstructor typeConstructor) {
            this.f74209a = typeConstructor;
        }
    }

    public static final UnwrappedType a(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        return Intrinsics.c(simpleType, simpleType2) ? simpleType : new FlexibleTypeImpl(simpleType, simpleType2);
    }

    public static ExpandedTypeOrRefinedConstructor b(TypeConstructor typeConstructor, KotlinTypeRefiner kotlinTypeRefiner, List list) {
        ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
        if (classifierDescriptorY != null) {
            kotlinTypeRefiner.d(classifierDescriptorY);
        }
        return null;
    }

    public static final SimpleType c(TypeAttributes typeAttributes, ClassDescriptor classDescriptor, List list) {
        typeAttributes.getClass();
        classDescriptor.getClass();
        list.getClass();
        TypeConstructor typeConstructorJ = classDescriptor.j();
        typeConstructorJ.getClass();
        return d(typeAttributes, typeConstructorJ, list, false, null);
    }

    public static final SimpleType d(final TypeAttributes typeAttributes, final TypeConstructor typeConstructor, final List list, final boolean z, KotlinTypeRefiner kotlinTypeRefiner) {
        MemberScope memberScopeA;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor;
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        if (typeAttributes.isEmpty() && list.isEmpty() && !z && typeConstructor.y() != null) {
            ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
            classifierDescriptorY.getClass();
            SimpleType simpleTypeO = classifierDescriptorY.o();
            simpleTypeO.getClass();
            return simpleTypeO;
        }
        ClassifierDescriptor classifierDescriptorY2 = typeConstructor.y();
        if (classifierDescriptorY2 instanceof TypeParameterDescriptor) {
            memberScopeA = ((TypeParameterDescriptor) classifierDescriptorY2).o().n();
        } else {
            if (classifierDescriptorY2 instanceof ClassDescriptor) {
                if (kotlinTypeRefiner == null) {
                    int i2 = DescriptorUtilsKt.f73888a;
                    ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(classifierDescriptorY2);
                    moduleDescriptorC.getClass();
                    kotlinTypeRefiner = DescriptorUtilsKt.h(moduleDescriptorC);
                }
                if (list.isEmpty()) {
                    ClassDescriptor classDescriptor = (ClassDescriptor) classifierDescriptorY2;
                    kotlinTypeRefiner.getClass();
                    ModuleAwareClassDescriptor.f72523b.getClass();
                    moduleAwareClassDescriptor = classDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) classDescriptor : null;
                    if (moduleAwareClassDescriptor == null || (memberScopeA = moduleAwareClassDescriptor.b0(kotlinTypeRefiner)) == null) {
                        memberScopeA = classDescriptor.Q();
                        memberScopeA.getClass();
                    }
                } else {
                    ClassDescriptor classDescriptor2 = (ClassDescriptor) classifierDescriptorY2;
                    TypeSubstitution typeSubstitutionA = TypeConstructorSubstitution.f74244b.a(typeConstructor, list);
                    kotlinTypeRefiner.getClass();
                    ModuleAwareClassDescriptor.f72523b.getClass();
                    moduleAwareClassDescriptor = classDescriptor2 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) classDescriptor2 : null;
                    if (moduleAwareClassDescriptor == null || (memberScopeA = moduleAwareClassDescriptor.Z(typeSubstitutionA, kotlinTypeRefiner)) == null) {
                        memberScopeA = classDescriptor2.i0(typeSubstitutionA);
                        memberScopeA.getClass();
                    }
                }
            } else if (classifierDescriptorY2 instanceof TypeAliasDescriptor) {
                ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ABBREVIATION_TYPE;
                String str = ((TypeAliasDescriptor) classifierDescriptorY2).getName().f73687b;
                str.getClass();
                memberScopeA = ErrorUtils.a(errorScopeKind, true, str);
            } else {
                if (!(typeConstructor instanceof IntersectionTypeConstructor)) {
                    mt.k("Unsupported classifier: ", classifierDescriptorY2, " for constructor: ", typeConstructor);
                    return null;
                }
                TypeIntersectionScope.Companion companion = TypeIntersectionScope.f73946c;
                LinkedHashSet linkedHashSet = ((IntersectionTypeConstructor) typeConstructor).f74199c;
                companion.getClass();
                memberScopeA = TypeIntersectionScope.Companion.a("member scope for intersection type", linkedHashSet);
            }
        }
        return e(typeAttributes, typeConstructor, list, z, memberScopeA, new Function1(typeConstructor, list, typeAttributes, z) { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeConstructor f74205b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final List f74206c;

            {
                this.f74205b = typeConstructor;
                this.f74206c = list;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinTypeRefiner kotlinTypeRefiner2 = (KotlinTypeRefiner) obj;
                kotlinTypeRefiner2.getClass();
                KotlinTypeFactory.b(this.f74205b, kotlinTypeRefiner2, this.f74206c);
                return null;
            }
        });
    }

    public static final SimpleType e(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List list, boolean z, MemberScope memberScope, Function1 function1) {
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        memberScope.getClass();
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(typeConstructor, list, z, memberScope, function1);
        return typeAttributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, typeAttributes);
    }

    public static final SimpleType f(final TypeConstructor typeConstructor, final List list, final TypeAttributes typeAttributes, final boolean z, final MemberScope memberScope) {
        typeAttributes.getClass();
        typeConstructor.getClass();
        list.getClass();
        memberScope.getClass();
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(typeConstructor, list, z, memberScope, new Function1(typeConstructor, list, typeAttributes, z, memberScope) { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeConstructor f74207b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final List f74208c;
            public final MemberScope d;

            {
                this.f74207b = typeConstructor;
                this.f74208c = list;
                this.d = memberScope;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinTypeRefiner kotlinTypeRefiner = (KotlinTypeRefiner) obj;
                kotlinTypeRefiner.getClass();
                KotlinTypeFactory.b(this.f74207b, kotlinTypeRefiner, this.f74208c);
                return null;
            }
        });
        return typeAttributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, typeAttributes);
    }
}

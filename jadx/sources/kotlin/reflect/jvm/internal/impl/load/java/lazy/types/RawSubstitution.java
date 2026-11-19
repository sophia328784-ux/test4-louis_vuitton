package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import defpackage.mt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class RawSubstitution extends TypeSubstitution {
    public static final JavaTypeAttributes d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final JavaTypeAttributes f73082e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RawProjectionComputer f73083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeParameterUpperBoundEraser f73084c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        TypeUsage typeUsage = TypeUsage.COMMON;
        d = JavaTypeAttributesKt.a(typeUsage, false, null, 5).f(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        f73082e = JavaTypeAttributesKt.a(typeUsage, false, null, 5).f(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    public RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser) {
        RawProjectionComputer rawProjectionComputer = new RawProjectionComputer();
        this.f73083b = rawProjectionComputer;
        this.f73084c = typeParameterUpperBoundEraser == null ? new TypeParameterUpperBoundEraser(rawProjectionComputer, null, 2, null) : typeParameterUpperBoundEraser;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection d(KotlinType kotlinType) {
        kotlinType.getClass();
        return new TypeProjectionImpl(h(kotlinType, new JavaTypeAttributes(TypeUsage.COMMON, null, false, false, null, null, 62, null)));
    }

    public final Pair g(final SimpleType simpleType, final ClassDescriptor classDescriptor, final JavaTypeAttributes javaTypeAttributes) {
        if (simpleType.H0().getParameters().isEmpty()) {
            return new Pair(simpleType, Boolean.FALSE);
        }
        if (KotlinBuiltIns.z(simpleType)) {
            TypeProjection typeProjection = (TypeProjection) simpleType.F0().get(0);
            Variance varianceB = typeProjection.b();
            KotlinType type = typeProjection.getType();
            type.getClass();
            return new Pair(KotlinTypeFactory.d(simpleType.G0(), simpleType.H0(), CollectionsKt.O(new TypeProjectionImpl(varianceB, h(type, javaTypeAttributes))), simpleType.I0(), null), Boolean.FALSE);
        }
        if (KotlinTypeKt.a(simpleType)) {
            return new Pair(ErrorUtils.c(ErrorTypeKind.ERROR_RAW_TYPE, simpleType.H0().toString()), Boolean.FALSE);
        }
        MemberScope memberScopeI0 = classDescriptor.i0(this);
        memberScopeI0.getClass();
        TypeAttributes typeAttributesG0 = simpleType.G0();
        TypeConstructor typeConstructorJ = classDescriptor.j();
        typeConstructorJ.getClass();
        List parameters = classDescriptor.j().getParameters();
        parameters.getClass();
        List<TypeParameterDescriptor> list = parameters;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            typeParameterDescriptor.getClass();
            TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = this.f73084c;
            arrayList.add(this.f73083b.a(typeParameterDescriptor, javaTypeAttributes, typeParameterUpperBoundEraser, typeParameterUpperBoundEraser.b(typeParameterDescriptor, javaTypeAttributes)));
        }
        return new Pair(KotlinTypeFactory.e(typeAttributesG0, typeConstructorJ, arrayList, simpleType.I0(), memberScopeI0, new Function1(classDescriptor, this, simpleType, javaTypeAttributes) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ClassDescriptor f73085b;

            {
                this.f73085b = classDescriptor;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinTypeRefiner kotlinTypeRefiner = (KotlinTypeRefiner) obj;
                JavaTypeAttributes javaTypeAttributes2 = RawSubstitution.d;
                kotlinTypeRefiner.getClass();
                ClassId classIdF = DescriptorUtilsKt.f(this.f73085b);
                if (classIdF == null) {
                    return null;
                }
                kotlinTypeRefiner.b(classIdF);
                return null;
            }
        }), Boolean.TRUE);
    }

    public final KotlinType h(KotlinType kotlinType, JavaTypeAttributes javaTypeAttributes) {
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        if (classifierDescriptorY instanceof TypeParameterDescriptor) {
            javaTypeAttributes.getClass();
            return h(this.f73084c.b((TypeParameterDescriptor) classifierDescriptorY, JavaTypeAttributes.e(javaTypeAttributes, null, true, null, null, 59)), javaTypeAttributes);
        }
        if (!(classifierDescriptorY instanceof ClassDescriptor)) {
            mt.f(classifierDescriptorY, "Unexpected declaration kind: ");
            return null;
        }
        ClassifierDescriptor classifierDescriptorY2 = FlexibleTypesKt.b(kotlinType).H0().y();
        if (classifierDescriptorY2 instanceof ClassDescriptor) {
            Pair pairG = g(FlexibleTypesKt.a(kotlinType), (ClassDescriptor) classifierDescriptorY, d);
            SimpleType simpleType = (SimpleType) pairG.f71705b;
            boolean zBooleanValue = ((Boolean) pairG.f71706c).booleanValue();
            Pair pairG2 = g(FlexibleTypesKt.b(kotlinType), (ClassDescriptor) classifierDescriptorY2, f73082e);
            SimpleType simpleType2 = (SimpleType) pairG2.f71705b;
            return (zBooleanValue || ((Boolean) pairG2.f71706c).booleanValue()) ? new RawTypeImpl(simpleType, simpleType2) : KotlinTypeFactory.a(simpleType, simpleType2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + classifierDescriptorY2 + "\" while for lower it's \"" + classifierDescriptorY + '\"').toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RawSubstitution() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : typeParameterUpperBoundEraser);
    }
}

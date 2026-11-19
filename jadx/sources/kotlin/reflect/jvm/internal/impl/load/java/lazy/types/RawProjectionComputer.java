package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import defpackage.v40;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.ErasureProjectionComputer;
import kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public final class RawProjectionComputer extends ErasureProjectionComputer {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73081a;

        static {
            int[] iArr = new int[JavaTypeFlexibility.values().length];
            try {
                iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73081a = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureProjectionComputer
    public final TypeProjection a(TypeParameterDescriptor typeParameterDescriptor, ErasureTypeAttributes erasureTypeAttributes, TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, KotlinType kotlinType) {
        typeParameterDescriptor.getClass();
        erasureTypeAttributes.getClass();
        typeParameterUpperBoundEraser.getClass();
        kotlinType.getClass();
        if (!(erasureTypeAttributes instanceof JavaTypeAttributes)) {
            return super.a(typeParameterDescriptor, erasureTypeAttributes, typeParameterUpperBoundEraser, kotlinType);
        }
        JavaTypeAttributes javaTypeAttributesF = (JavaTypeAttributes) erasureTypeAttributes;
        if (!javaTypeAttributesF.f73070f) {
            javaTypeAttributesF = javaTypeAttributesF.f(JavaTypeFlexibility.INFLEXIBLE);
        }
        int i2 = WhenMappings.f73081a[javaTypeAttributesF.f73069e.ordinal()];
        if (i2 == 1) {
            return new TypeProjectionImpl(Variance.INVARIANT, kotlinType);
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
            return null;
        }
        if (typeParameterDescriptor.l().a()) {
            List parameters = kotlinType.H0().getParameters();
            parameters.getClass();
            return !parameters.isEmpty() ? new TypeProjectionImpl(Variance.OUT_VARIANCE, kotlinType) : TypeUtils.m(typeParameterDescriptor, javaTypeAttributesF);
        }
        Variance variance = Variance.INVARIANT;
        int i3 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(typeParameterDescriptor);
        moduleDescriptorC.getClass();
        return new TypeProjectionImpl(variance, moduleDescriptorC.g().o());
    }
}

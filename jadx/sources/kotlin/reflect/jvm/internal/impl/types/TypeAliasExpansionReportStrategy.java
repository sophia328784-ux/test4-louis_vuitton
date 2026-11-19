package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public interface TypeAliasExpansionReportStrategy {

    public static final class DO_NOTHING implements TypeAliasExpansionReportStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DO_NOTHING f74231a = new DO_NOTHING();

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void a(TypeAliasDescriptor typeAliasDescriptor, UnwrappedType unwrappedType) {
            typeAliasDescriptor.getClass();
            unwrappedType.getClass();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void b(TypeSubstitutor typeSubstitutor, KotlinType kotlinType, KotlinType kotlinType2, TypeParameterDescriptor typeParameterDescriptor) {
            kotlinType.getClass();
            kotlinType2.getClass();
            typeParameterDescriptor.getClass();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void c(TypeAliasDescriptor typeAliasDescriptor) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void d(AnnotationDescriptor annotationDescriptor) {
        }
    }

    void a(TypeAliasDescriptor typeAliasDescriptor, UnwrappedType unwrappedType);

    void b(TypeSubstitutor typeSubstitutor, KotlinType kotlinType, KotlinType kotlinType2, TypeParameterDescriptor typeParameterDescriptor);

    void c(TypeAliasDescriptor typeAliasDescriptor);

    void d(AnnotationDescriptor annotationDescriptor);
}

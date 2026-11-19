package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
final class TypeArgument {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeParameterDescriptor f74323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KotlinType f74324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinType f74325c;

    public TypeArgument(TypeParameterDescriptor typeParameterDescriptor, KotlinType kotlinType, KotlinType kotlinType2) {
        typeParameterDescriptor.getClass();
        kotlinType.getClass();
        kotlinType2.getClass();
        this.f74323a = typeParameterDescriptor;
        this.f74324b = kotlinType;
        this.f74325c = kotlinType2;
    }
}

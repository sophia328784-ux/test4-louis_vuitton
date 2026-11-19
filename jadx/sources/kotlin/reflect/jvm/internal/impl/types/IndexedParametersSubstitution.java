package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final class IndexedParametersSubstitution extends TypeSubstitution {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeParameterDescriptor[] f74196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeProjection[] f74197c;
    public final boolean d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IndexedParametersSubstitution(List<? extends TypeParameterDescriptor> list, List<? extends TypeProjection> list2) {
        this((TypeParameterDescriptor[]) list.toArray(new TypeParameterDescriptor[0]), (TypeProjection[]) list2.toArray(new TypeProjection[0]), false, 4, null);
        list.getClass();
        list2.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean b() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection d(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        TypeParameterDescriptor typeParameterDescriptor = classifierDescriptorY instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) classifierDescriptorY : null;
        if (typeParameterDescriptor != null) {
            int index = typeParameterDescriptor.getIndex();
            TypeParameterDescriptor[] typeParameterDescriptorArr = this.f74196b;
            if (index < typeParameterDescriptorArr.length && Intrinsics.c(typeParameterDescriptorArr[index].j(), typeParameterDescriptor.j())) {
                return this.f74197c[index];
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean e() {
        return this.f74197c.length == 0;
    }

    public /* synthetic */ IndexedParametersSubstitution(TypeParameterDescriptor[] typeParameterDescriptorArr, TypeProjection[] typeProjectionArr, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeParameterDescriptorArr, typeProjectionArr, (i2 & 4) != 0 ? false : z);
    }

    public IndexedParametersSubstitution(TypeParameterDescriptor[] typeParameterDescriptorArr, TypeProjection[] typeProjectionArr, boolean z) {
        typeParameterDescriptorArr.getClass();
        typeProjectionArr.getClass();
        this.f74196b = typeParameterDescriptorArr;
        this.f74197c = typeProjectionArr;
        this.d = z;
        int length = typeParameterDescriptorArr.length;
        int length2 = typeProjectionArr.length;
    }
}

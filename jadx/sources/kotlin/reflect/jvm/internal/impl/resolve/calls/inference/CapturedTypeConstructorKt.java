package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CapturedTypeConstructorKt {
    public static final TypeProjection a(final TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null || typeProjection.b() == Variance.INVARIANT) {
            return typeProjection;
        }
        if (typeParameterDescriptor.l() != typeProjection.b()) {
            return new TypeProjectionImpl(new CapturedType(typeProjection, null, false, null, 14, null));
        }
        if (!typeProjection.a()) {
            return new TypeProjectionImpl(typeProjection.getType());
        }
        StorageManager storageManager = LockBasedStorageManager.f74137e;
        storageManager.getClass();
        return new TypeProjectionImpl(new LazyWrappedType(storageManager, new Function0(typeProjection) { // from class: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeProjection f73865b;

            {
                this.f73865b = typeProjection;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KotlinType type = this.f73865b.getType();
                type.getClass();
                return type;
            }
        }));
    }

    public static TypeSubstitution b(TypeSubstitution typeSubstitution) {
        typeSubstitution.getClass();
        if (!(typeSubstitution instanceof IndexedParametersSubstitution)) {
            return new CapturedTypeConstructorKt$wrapWithCapturingSubstitution$2(typeSubstitution);
        }
        IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
        TypeParameterDescriptor[] typeParameterDescriptorArr = indexedParametersSubstitution.f74196b;
        ArrayList<Pair> arrayListA0 = ArraysKt.a0(indexedParametersSubstitution.f74197c, typeParameterDescriptorArr);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayListA0, 10));
        for (Pair pair : arrayListA0) {
            arrayList.add(a((TypeProjection) pair.f71705b, (TypeParameterDescriptor) pair.f71706c));
        }
        return new IndexedParametersSubstitution(typeParameterDescriptorArr, (TypeProjection[]) arrayList.toArray(new TypeProjection[0]), true);
    }
}

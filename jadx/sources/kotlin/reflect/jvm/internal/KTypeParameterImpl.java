package kotlin.reflect.jvm.internal;

import defpackage.d20;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeParameterReference;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.types.DescriptorKType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BE\b\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011B\u001b\b\u0016\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0013B)\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "Lkotlin/reflect/KTypeParameter;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;", "descriptor", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "_container", "Lkotlin/Function0;", "computeContainer", "", "name", "Lkotlin/reflect/KVariance;", "variance", "", "isReified", "<init>", "(Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "container", "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;)V", "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KTypeParameterImpl implements KTypeParameter, TypeConstructorMarker, TypeParameterMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KTypeParameterOwnerImpl f72159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f72160c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final KVariance f72161e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TypeParameterDescriptor f72162f;
    public volatile List g;

    /* JADX WARN: Illegal instructions before constructor call */
    public KTypeParameterImpl(KTypeParameterOwnerImpl kTypeParameterOwnerImpl, final TypeParameterDescriptor typeParameterDescriptor) {
        KVariance kVariance;
        typeParameterDescriptor.getClass();
        ReflectProperties.LazySoftVal lazySoftValA = ReflectProperties.a(null, new Function0(typeParameterDescriptor) { // from class: kotlin.reflect.jvm.internal.KTypeParameterImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeParameterDescriptor f72163b;

            {
                this.f72163b = typeParameterDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Class cls;
                KClassImpl kClassImplA;
                DeclarationDescriptor declarationDescriptorD = this.f72163b.d();
                declarationDescriptorD.getClass();
                if (declarationDescriptorD instanceof ClassDescriptor) {
                    return KTypeParameterImplKt.a((ClassDescriptor) declarationDescriptorD);
                }
                if (!(declarationDescriptorD instanceof CallableMemberDescriptor)) {
                    d20.c(declarationDescriptorD, "Unknown type parameter container: ");
                    return null;
                }
                DeclarationDescriptor declarationDescriptorD2 = ((CallableMemberDescriptor) declarationDescriptorD).d();
                declarationDescriptorD2.getClass();
                if (declarationDescriptorD2 instanceof ClassDescriptor) {
                    kClassImplA = KTypeParameterImplKt.a((ClassDescriptor) declarationDescriptorD2);
                } else {
                    DeserializedMemberDescriptor deserializedMemberDescriptor = declarationDescriptorD instanceof DeserializedMemberDescriptor ? (DeserializedMemberDescriptor) declarationDescriptorD : null;
                    if (deserializedMemberDescriptor == null) {
                        d20.c(declarationDescriptorD, "Non-class callable descriptor must be deserialized: ");
                        return null;
                    }
                    DeserializedContainerSource deserializedContainerSourceE = deserializedMemberDescriptor.E();
                    JvmPackagePartSource jvmPackagePartSource = deserializedContainerSourceE instanceof JvmPackagePartSource ? (JvmPackagePartSource) deserializedContainerSourceE : null;
                    KotlinJvmBinaryClass kotlinJvmBinaryClass = jvmPackagePartSource != null ? jvmPackagePartSource.d : null;
                    ReflectKotlinClass reflectKotlinClass = kotlinJvmBinaryClass instanceof ReflectKotlinClass ? (ReflectKotlinClass) kotlinJvmBinaryClass : null;
                    if (reflectKotlinClass == null || (cls = reflectKotlinClass.f72580a) == null) {
                        d20.c(deserializedMemberDescriptor, "Container of deserialized member is not resolved: ");
                        return null;
                    }
                    kClassImplA = (KClassImpl) Reflection.f71922a.b(cls);
                }
                Object objV = declarationDescriptorD.v(new CreateKCallableVisitor(kClassImplA), Unit.f71739a);
                objV.getClass();
                return (KTypeParameterOwnerImpl) objV;
            }
        });
        String strB = typeParameterDescriptor.getName().b();
        strB.getClass();
        Variance varianceL = typeParameterDescriptor.l();
        varianceL.getClass();
        int i2 = KTypeParameterImplKt.WhenMappings.f72164a[varianceL.ordinal()];
        if (i2 == 1) {
            kVariance = KVariance.INVARIANT;
        } else if (i2 == 2) {
            kVariance = KVariance.IN;
        } else {
            if (i2 != 3) {
                v40.g();
                throw null;
            }
            kVariance = KVariance.OUT;
        }
        KVariance kVariance2 = kVariance;
        typeParameterDescriptor.u();
        this(typeParameterDescriptor, kTypeParameterOwnerImpl, lazySoftValA, strB, kVariance2);
        List upperBounds = typeParameterDescriptor.getUpperBounds();
        upperBounds.getClass();
        List list = upperBounds;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new DescriptorKType((KotlinType) it.next(), null, 2, null));
        }
        this.g = arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KTypeParameterImpl)) {
            return false;
        }
        KTypeParameterOwnerImpl kTypeParameterOwnerImpl = this.f72159b;
        if (kTypeParameterOwnerImpl == null) {
            Function0 function0 = this.f72160c;
            function0.getClass();
            kTypeParameterOwnerImpl = (KTypeParameterOwnerImpl) function0.mo47invoke();
        }
        KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) obj;
        KTypeParameterOwnerImpl kTypeParameterOwnerImpl2 = kTypeParameterImpl.f72159b;
        if (kTypeParameterOwnerImpl2 == null) {
            Function0 function1 = kTypeParameterImpl.f72160c;
            function1.getClass();
            kTypeParameterOwnerImpl2 = (KTypeParameterOwnerImpl) function1.mo47invoke();
        }
        return Intrinsics.c(kTypeParameterOwnerImpl, kTypeParameterOwnerImpl2) && Intrinsics.c(this.d, kTypeParameterImpl.d);
    }

    @Override // kotlin.reflect.KTypeParameter
    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getD() {
        return this.d;
    }

    @Override // kotlin.reflect.KTypeParameter
    public final List getUpperBounds() {
        List list = this.g;
        if (list != null) {
            return list;
        }
        Intrinsics.h("upperBounds");
        throw null;
    }

    public final int hashCode() {
        KTypeParameterOwnerImpl kTypeParameterOwnerImpl = this.f72159b;
        if (kTypeParameterOwnerImpl == null) {
            Function0 function0 = this.f72160c;
            function0.getClass();
            kTypeParameterOwnerImpl = (KTypeParameterOwnerImpl) function0.mo47invoke();
        }
        return this.d.hashCode() + (kTypeParameterOwnerImpl.hashCode() * 31);
    }

    @Override // kotlin.reflect.KTypeParameter
    /* JADX INFO: renamed from: l, reason: from getter */
    public final KVariance getF72161e() {
        return this.f72161e;
    }

    public final String toString() {
        TypeParameterReference.INSTANCE.getClass();
        return TypeParameterReference.Companion.a(this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KTypeParameterImpl(KTypeParameterOwnerImpl kTypeParameterOwnerImpl, String str, KVariance kVariance, boolean z) {
        this(null, kTypeParameterOwnerImpl, null, str, kVariance);
        kTypeParameterOwnerImpl.getClass();
        str.getClass();
        kVariance.getClass();
    }

    public KTypeParameterImpl(TypeParameterDescriptor typeParameterDescriptor, KTypeParameterOwnerImpl kTypeParameterOwnerImpl, ReflectProperties.LazySoftVal lazySoftVal, String str, KVariance kVariance) {
        this.f72159b = kTypeParameterOwnerImpl;
        this.f72160c = lazySoftVal;
        this.d = str;
        this.f72161e = kVariance;
        this.f72162f = typeParameterDescriptor;
    }
}

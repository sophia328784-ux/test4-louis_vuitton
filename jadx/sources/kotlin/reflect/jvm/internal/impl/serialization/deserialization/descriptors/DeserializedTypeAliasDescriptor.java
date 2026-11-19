package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializedTypeAliasDescriptor extends AbstractTypeAliasDescriptor implements DeserializedMemberDescriptor {
    public final ProtoBuf$TypeAlias l;
    public final NameResolver m;
    public final TypeTable n;
    public final VersionRequirementTable o;
    public final DeserializedContainerSource p;
    public SimpleType q;
    public SimpleType r;
    public List s;
    public SimpleType t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedTypeAliasDescriptor(StorageManager storageManager, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, DescriptorVisibility descriptorVisibility, ProtoBuf$TypeAlias protoBuf$TypeAlias, NameResolver nameResolver, TypeTable typeTable, VersionRequirementTable versionRequirementTable, DeserializedContainerSource deserializedContainerSource) {
        super(storageManager, declarationDescriptor, annotations, name, SourceElement.f72405a, descriptorVisibility);
        storageManager.getClass();
        declarationDescriptor.getClass();
        annotations.getClass();
        name.getClass();
        descriptorVisibility.getClass();
        protoBuf$TypeAlias.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        versionRequirementTable.getClass();
        this.l = protoBuf$TypeAlias;
        this.m = nameResolver;
        this.n = typeTable;
        this.o = versionRequirementTable;
        this.p = deserializedContainerSource;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    public final SimpleType C() {
        SimpleType simpleType = this.r;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.h("expandedType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final NameResolver D() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final DeserializedContainerSource E() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor
    public final List F0() {
        List list = this.s;
        if (list != null) {
            return list;
        }
        Intrinsics.h("typeConstructorParameters");
        throw null;
    }

    public final void G0(List list, SimpleType simpleType, SimpleType simpleType2) {
        list.getClass();
        simpleType.getClass();
        simpleType2.getClass();
        this.f72457i = list;
        this.q = simpleType;
        this.r = simpleType2;
        this.s = TypeParameterUtilsKt.b(this);
        this.t = B0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final MessageLite X() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot b(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        if (typeSubstitutor.f74261a.e()) {
            return this;
        }
        DeclarationDescriptor declarationDescriptorD = d();
        declarationDescriptorD.getClass();
        Annotations annotations = getAnnotations();
        annotations.getClass();
        Name name = getName();
        name.getClass();
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor(this.f72455f, declarationDescriptorD, annotations, name, this.g, this.l, this.m, this.n, this.o, this.p);
        List listP = p();
        SimpleType simpleTypeM0 = m0();
        Variance variance = Variance.INVARIANT;
        deserializedTypeAliasDescriptor.G0(listP, TypeSubstitutionKt.a(typeSubstitutor.h(variance, simpleTypeM0)), TypeSubstitutionKt.a(typeSubstitutor.h(variance, C())));
        return deserializedTypeAliasDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    public final SimpleType m0() {
        SimpleType simpleType = this.q;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.h("underlyingType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType o() {
        SimpleType simpleType = this.t;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.h("defaultTypeImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    public final ClassDescriptor s() {
        if (KotlinTypeKt.a(C())) {
            return null;
        }
        ClassifierDescriptor classifierDescriptorY = C().H0().y();
        if (classifierDescriptorY instanceof ClassDescriptor) {
            return (ClassDescriptor) classifierDescriptorY;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    public final TypeTable z() {
        return this.n;
    }
}

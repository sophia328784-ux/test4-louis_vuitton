package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;

/* JADX INFO: loaded from: classes4.dex */
public class DeserializedPackageMemberScope extends DeserializedMemberScope {
    public final PackageFragmentDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProtoBuf$Package f74127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f74128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FqName f74129j;

    public DeserializedPackageMemberScope(PackageFragmentDescriptor packageFragmentDescriptor, ProtoBuf$Package protoBuf$Package, NameResolver nameResolver, BinaryVersion binaryVersion, DeserializedContainerSource deserializedContainerSource, DeserializationComponents deserializationComponents, String str, Function0<? extends Collection<Name>> function0) {
        packageFragmentDescriptor.getClass();
        protoBuf$Package.getClass();
        nameResolver.getClass();
        binaryVersion.getClass();
        deserializationComponents.getClass();
        str.getClass();
        function0.getClass();
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Package.f73417h;
        protoBuf$TypeTable.getClass();
        TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
        VersionRequirementTable.Companion companion = VersionRequirementTable.f73600b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Package.f73418i;
        protoBuf$VersionRequirementTable.getClass();
        companion.getClass();
        VersionRequirementTable versionRequirementTableA = VersionRequirementTable.Companion.a(protoBuf$VersionRequirementTable);
        versionRequirementTableA.getClass();
        DeserializationContext deserializationContext = new DeserializationContext(deserializationComponents, nameResolver, packageFragmentDescriptor, typeTable, versionRequirementTableA, binaryVersion, deserializedContainerSource, null, EmptyList.f71768b);
        List list = protoBuf$Package.f73415e;
        list.getClass();
        List list2 = protoBuf$Package.f73416f;
        list2.getClass();
        List list3 = protoBuf$Package.g;
        list3.getClass();
        super(deserializationContext, list, list2, list3, function0);
        this.g = packageFragmentDescriptor;
        this.f74127h = protoBuf$Package;
        this.f74128i = str;
        this.f74129j = packageFragmentDescriptor.c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        UtilsKt.b(this.f74105b.f73998a.f73994i, lookupLocation, this.g, name);
        return super.f(name, lookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        Collection collectionI = i(descriptorKindFilter, function1, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
        Iterable iterable = this.f74105b.f73998a.f73996k;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((ClassDescriptorFactory) it.next()).a(this.f74129j));
        }
        return CollectionsKt.Y(collectionI, arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final void h(ArrayList arrayList, Function1 function1) {
        function1.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final ClassId l(Name name) {
        name.getClass();
        return new ClassId(this.f74129j, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set n() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set o() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set p() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final boolean q(Name name) {
        name.getClass();
        if (m().contains(name)) {
            return true;
        }
        Iterable iterable = this.f74105b.f73998a.f73996k;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (((ClassDescriptorFactory) it.next()).b(this.f74129j, name)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return this.f74128i;
    }
}

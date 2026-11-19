package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolverImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeserializedPackageFragmentImpl extends DeserializedPackageFragment {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BinaryVersion f74007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DeserializedContainerSource f74008j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NameResolverImpl f74009k;
    public final ProtoBasedClassDataFinder l;
    public ProtoBuf$PackageFragment m;
    public DeserializedPackageMemberScope n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl(FqName fqName, StorageManager storageManager, ModuleDescriptor moduleDescriptor, ProtoBuf$PackageFragment protoBuf$PackageFragment, BinaryVersion binaryVersion, DeserializedContainerSource deserializedContainerSource) {
        super(fqName, storageManager, moduleDescriptor);
        fqName.getClass();
        storageManager.getClass();
        moduleDescriptor.getClass();
        protoBuf$PackageFragment.getClass();
        binaryVersion.getClass();
        this.f74007i = binaryVersion;
        this.f74008j = deserializedContainerSource;
        ProtoBuf$StringTable protoBuf$StringTable = protoBuf$PackageFragment.f73428e;
        protoBuf$StringTable.getClass();
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = protoBuf$PackageFragment.f73429f;
        protoBuf$QualifiedNameTable.getClass();
        NameResolverImpl nameResolverImpl = new NameResolverImpl(protoBuf$StringTable, protoBuf$QualifiedNameTable);
        this.f74009k = nameResolverImpl;
        this.l = new ProtoBasedClassDataFinder(protoBuf$PackageFragment, nameResolverImpl, binaryVersion, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedPackageFragmentImpl f74010b;

            {
                this.f74010b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((ClassId) obj).getClass();
                DeserializedContainerSource deserializedContainerSource2 = this.f74010b.f74008j;
                return deserializedContainerSource2 != null ? deserializedContainerSource2 : SourceElement.f72405a;
            }
        });
        this.m = protoBuf$PackageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment
    public final ProtoBasedClassDataFinder B0() {
        return this.l;
    }

    public final void F0(DeserializationComponents deserializationComponents) {
        deserializationComponents.getClass();
        ProtoBuf$PackageFragment protoBuf$PackageFragment = this.m;
        if (protoBuf$PackageFragment == null) {
            md.k("Repeated call to DeserializedPackageFragmentImpl::initialize");
            return;
        }
        this.m = null;
        ProtoBuf$Package protoBuf$Package = protoBuf$PackageFragment.g;
        protoBuf$Package.getClass();
        this.n = new DeserializedPackageMemberScope(this, protoBuf$Package, this.f74009k, this.f74007i, this.f74008j, deserializationComponents, "scope of " + this, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedPackageFragmentImpl f74011b;

            {
                this.f74011b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Set setKeySet = this.f74011b.l.d.keySet();
                ArrayList arrayList = new ArrayList();
                for (Object obj : setKeySet) {
                    ClassId classId = (ClassId) obj;
                    if (!classId.g()) {
                        ClassDeserializer.f73981c.getClass();
                        if (!ClassDeserializer.d.contains(classId)) {
                            arrayList.add(obj);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((ClassId) it.next()).f());
                }
                return arrayList2;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    public final MemberScope n() {
        DeserializedPackageMemberScope deserializedPackageMemberScope = this.n;
        if (deserializedPackageMemberScope != null) {
            return deserializedPackageMemberScope;
        }
        Intrinsics.h("_memberScope");
        throw null;
    }
}

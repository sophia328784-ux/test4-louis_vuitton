package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassDeserializer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f73981c = new Companion(null);
    public static final Set d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationComponents f73982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MemoizedFunctionToNullable f73983b;

    public static final class ClassKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClassId f73985a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ClassData f73986b;

        public ClassKey(ClassId classId, ClassData classData) {
            classId.getClass();
            this.f73985a = classId;
            this.f73986b = classData;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ClassKey) {
                return Intrinsics.c(this.f73985a, ((ClassKey) obj).f73985a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f73985a.hashCode();
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        ClassId.Companion companion = ClassId.d;
        FqName fqNameI = StandardNames.FqNames.f72273c.i();
        companion.getClass();
        d = SetsKt.h(ClassId.Companion.b(fqNameI));
    }

    public ClassDeserializer(DeserializationComponents deserializationComponents) {
        deserializationComponents.getClass();
        this.f73982a = deserializationComponents;
        this.f73983b = deserializationComponents.f73988a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ClassDeserializer f73984b;

            {
                this.f73984b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ClassData classDataA;
                Object next;
                NameResolver nameResolver;
                BinaryVersion binaryVersion;
                DeserializationContext deserializationContext;
                PackageFragmentDescriptor packageFragmentDescriptor;
                Name nameF;
                ClassDeserializer.ClassKey classKey = (ClassDeserializer.ClassKey) obj;
                ClassDeserializer.Companion companion = ClassDeserializer.f73981c;
                classKey.getClass();
                ClassDeserializer classDeserializer = this.f73984b;
                classDeserializer.getClass();
                ClassId classId = classKey.f73985a;
                DeserializationComponents deserializationComponents2 = classDeserializer.f73982a;
                Iterator it = deserializationComponents2.f73996k.iterator();
                while (it.hasNext()) {
                    ClassDescriptor classDescriptorC = ((ClassDescriptorFactory) it.next()).c(classId);
                    if (classDescriptorC != null) {
                        return classDescriptorC;
                    }
                }
                if (!ClassDeserializer.d.contains(classId) && ((classDataA = classKey.f73986b) != null || (classDataA = deserializationComponents2.d.a(classId)) != null)) {
                    NameResolver nameResolver2 = classDataA.f73978a;
                    ProtoBuf$Class protoBuf$Class = classDataA.f73979b;
                    BinaryVersion binaryVersion2 = classDataA.f73980c;
                    SourceElement sourceElement = classDataA.d;
                    ClassId classIdE = classId.e();
                    if (classIdE != null) {
                        ClassDescriptor classDescriptorA = classDeserializer.a(classIdE, null);
                        DeserializedClassDescriptor deserializedClassDescriptor = classDescriptorA instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) classDescriptorA : null;
                        if (deserializedClassDescriptor != null) {
                            Name nameF2 = classId.f();
                            nameF2.getClass();
                            if (deserializedClassDescriptor.F0().m().contains(nameF2)) {
                                deserializationContext = deserializedClassDescriptor.n;
                                nameResolver = nameResolver2;
                                binaryVersion = binaryVersion2;
                                return new DeserializedClassDescriptor(deserializationContext, protoBuf$Class, nameResolver, binaryVersion, sourceElement);
                            }
                        }
                    } else {
                        Iterator it2 = PackageFragmentProviderKt.c(deserializationComponents2.f73992f, classId.f73675a).iterator();
                        do {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                            packageFragmentDescriptor = (PackageFragmentDescriptor) next;
                            if (!(packageFragmentDescriptor instanceof DeserializedPackageFragment)) {
                                break;
                            }
                            nameF = classId.f();
                            nameF.getClass();
                        } while (!((DeserializedMemberScope) ((DeserializedPackageFragmentImpl) ((DeserializedPackageFragment) packageFragmentDescriptor)).n()).m().contains(nameF));
                        PackageFragmentDescriptor packageFragmentDescriptor2 = (PackageFragmentDescriptor) next;
                        if (packageFragmentDescriptor2 != null) {
                            ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Class.B;
                            protoBuf$TypeTable.getClass();
                            TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
                            VersionRequirementTable.Companion companion2 = VersionRequirementTable.f73600b;
                            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Class.D;
                            protoBuf$VersionRequirementTable.getClass();
                            companion2.getClass();
                            VersionRequirementTable versionRequirementTableA = VersionRequirementTable.Companion.a(protoBuf$VersionRequirementTable);
                            deserializationComponents2.getClass();
                            nameResolver2.getClass();
                            versionRequirementTableA.getClass();
                            binaryVersion2.getClass();
                            nameResolver = nameResolver2;
                            binaryVersion = binaryVersion2;
                            deserializationContext = new DeserializationContext(deserializationComponents2, nameResolver, packageFragmentDescriptor2, typeTable, versionRequirementTableA, binaryVersion, null, null, EmptyList.f71768b);
                            return new DeserializedClassDescriptor(deserializationContext, protoBuf$Class, nameResolver, binaryVersion, sourceElement);
                        }
                    }
                }
                return null;
            }
        });
    }

    public final ClassDescriptor a(ClassId classId, ClassData classData) {
        classId.getClass();
        return (ClassDescriptor) this.f73983b.invoke(new ClassKey(classId, classData));
    }
}

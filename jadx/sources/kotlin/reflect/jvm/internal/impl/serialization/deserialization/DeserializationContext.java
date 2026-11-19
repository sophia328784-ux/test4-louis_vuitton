package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializationContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationComponents f73998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NameResolver f73999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeclarationDescriptor f74000c;
    public final TypeTable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VersionRequirementTable f74001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BinaryVersion f74002f;
    public final DeserializedContainerSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TypeDeserializer f74003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MemberDeserializer f74004i;

    public DeserializationContext(DeserializationComponents deserializationComponents, NameResolver nameResolver, DeclarationDescriptor declarationDescriptor, TypeTable typeTable, VersionRequirementTable versionRequirementTable, BinaryVersion binaryVersion, DeserializedContainerSource deserializedContainerSource, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> list) {
        deserializationComponents.getClass();
        nameResolver.getClass();
        declarationDescriptor.getClass();
        typeTable.getClass();
        versionRequirementTable.getClass();
        binaryVersion.getClass();
        list.getClass();
        this.f73998a = deserializationComponents;
        this.f73999b = nameResolver;
        this.f74000c = declarationDescriptor;
        this.d = typeTable;
        this.f74001e = versionRequirementTable;
        this.f74002f = binaryVersion;
        this.g = deserializedContainerSource;
        this.f74003h = new TypeDeserializer(this, typeDeserializer, list, "Deserializer for \"" + declarationDescriptor.getName() + '\"', deserializedContainerSource != null ? deserializedContainerSource.a() : "[container not found]");
        this.f74004i = new MemberDeserializer(this);
    }

    public final DeserializationContext a(DeclarationDescriptor declarationDescriptor, List list, NameResolver nameResolver, TypeTable typeTable, VersionRequirementTable versionRequirementTable, BinaryVersion binaryVersion) {
        list.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        versionRequirementTable.getClass();
        binaryVersion.getClass();
        int i2 = binaryVersion.f73569b;
        if ((i2 != 1 || binaryVersion.f73570c < 4) && i2 <= 1) {
            versionRequirementTable = this.f74001e;
        }
        return new DeserializationContext(this.f73998a, nameResolver, declarationDescriptor, typeTable, versionRequirementTable, binaryVersion, this.g, this.f74003h, list);
    }
}

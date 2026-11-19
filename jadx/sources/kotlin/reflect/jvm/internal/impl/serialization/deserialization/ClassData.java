package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NameResolver f73978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtoBuf$Class f73979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BinaryVersion f73980c;
    public final SourceElement d;

    public ClassData(NameResolver nameResolver, ProtoBuf$Class protoBuf$Class, BinaryVersion binaryVersion, SourceElement sourceElement) {
        nameResolver.getClass();
        protoBuf$Class.getClass();
        binaryVersion.getClass();
        sourceElement.getClass();
        this.f73978a = nameResolver;
        this.f73979b = protoBuf$Class;
        this.f73980c = binaryVersion;
        this.d = sourceElement;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassData)) {
            return false;
        }
        ClassData classData = (ClassData) obj;
        return Intrinsics.c(this.f73978a, classData.f73978a) && Intrinsics.c(this.f73979b, classData.f73979b) && Intrinsics.c(this.f73980c, classData.f73980c) && Intrinsics.c(this.d, classData.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f73980c.hashCode() + ((this.f73979b.hashCode() + (this.f73978a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.f73978a + ", classProto=" + this.f73979b + ", metadataVersion=" + this.f73980c + ", sourceElement=" + this.d + ')';
    }
}

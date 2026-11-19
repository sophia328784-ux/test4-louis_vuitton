package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuiltInsProtoBuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73559a = GeneratedMessageLite.h(ProtoBuf$Package.l, 0, null, 151, WireFormat$FieldType.INT32, Integer.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73561c;
    public static final GeneratedMessageLite.GeneratedExtension d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73563f;
    public static final GeneratedMessageLite.GeneratedExtension g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73564h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final GeneratedMessageLite.GeneratedExtension f73567k;
    public static final GeneratedMessageLite.GeneratedExtension l;

    static {
        ProtoBuf$Class protoBuf$Class = ProtoBuf$Class.H;
        ProtoBuf$Annotation protoBuf$Annotation = ProtoBuf$Annotation.f73298h;
        WireFormat$FieldType wireFormat$FieldType = WireFormat$FieldType.MESSAGE;
        f73560b = GeneratedMessageLite.g(protoBuf$Class, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        f73561c = GeneratedMessageLite.g(ProtoBuf$Constructor.l, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        d = GeneratedMessageLite.g(ProtoBuf$Function.z, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        ProtoBuf$Property protoBuf$Property = ProtoBuf$Property.F;
        f73562e = GeneratedMessageLite.g(protoBuf$Property, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        f73563f = GeneratedMessageLite.g(protoBuf$Property, protoBuf$Annotation, 152, wireFormat$FieldType, ProtoBuf$Annotation.class);
        g = GeneratedMessageLite.g(protoBuf$Property, protoBuf$Annotation, 153, wireFormat$FieldType, ProtoBuf$Annotation.class);
        ProtoBuf$Annotation.Argument.Value value = ProtoBuf$Annotation.Argument.Value.q;
        f73564h = GeneratedMessageLite.h(protoBuf$Property, value, value, 151, wireFormat$FieldType, ProtoBuf$Annotation.Argument.Value.class);
        f73565i = GeneratedMessageLite.g(ProtoBuf$EnumEntry.f73379i, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        f73566j = GeneratedMessageLite.g(ProtoBuf$ValueParameter.o, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        f73567k = GeneratedMessageLite.g(ProtoBuf$Type.v, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
        l = GeneratedMessageLite.g(ProtoBuf$TypeParameter.o, protoBuf$Annotation, 150, wireFormat$FieldType, ProtoBuf$Annotation.class);
    }

    public static void a(ExtensionRegistryLite extensionRegistryLite) {
        extensionRegistryLite.a(f73559a);
        extensionRegistryLite.a(f73560b);
        extensionRegistryLite.a(f73561c);
        extensionRegistryLite.a(d);
        extensionRegistryLite.a(f73562e);
        extensionRegistryLite.a(f73563f);
        extensionRegistryLite.a(g);
        extensionRegistryLite.a(f73564h);
        extensionRegistryLite.a(f73565i);
        extensionRegistryLite.a(f73566j);
        extensionRegistryLite.a(f73567k);
        extensionRegistryLite.a(l);
    }
}

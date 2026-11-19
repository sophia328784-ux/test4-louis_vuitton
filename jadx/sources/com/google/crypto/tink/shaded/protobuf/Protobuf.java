package com.google.crypto.tink.shaded.protobuf;

import defpackage.md;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class Protobuf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Protobuf f34227c = new Protobuf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f34229b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ManifestSchemaFactory f34228a = new ManifestSchemaFactory();

    public final Schema a(Class cls) {
        Schema schemaC;
        Class cls2;
        Internal.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f34229b;
        Schema schema = (Schema) concurrentHashMap.get(cls);
        if (schema != null) {
            return schema;
        }
        ManifestSchemaFactory manifestSchemaFactory = this.f34228a;
        manifestSchemaFactory.getClass();
        Class cls3 = SchemaUtil.f34235a;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.f34235a) != null && !cls2.isAssignableFrom(cls)) {
            md.n("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            return null;
        }
        MessageInfo messageInfoA = manifestSchemaFactory.f34204a.a(cls);
        if (messageInfoA.a()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                schemaC = new MessageSetSchema(SchemaUtil.d, ExtensionSchemas.f34177a, messageInfoA.b());
            } else {
                UnknownFieldSchema unknownFieldSchema = SchemaUtil.f34236b;
                ExtensionSchema extensionSchema = ExtensionSchemas.f34178b;
                if (extensionSchema == null) {
                    md.k("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                schemaC = new MessageSetSchema(unknownFieldSchema, extensionSchema, messageInfoA.b());
            }
        } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            schemaC = messageInfoA.c() == ProtoSyntax.PROTO2 ? MessageSchema.C(messageInfoA, NewInstanceSchemas.f34226b, ListFieldSchema.f34201b, SchemaUtil.d, ExtensionSchemas.f34177a, MapFieldSchemas.f34211b) : MessageSchema.C(messageInfoA, NewInstanceSchemas.f34226b, ListFieldSchema.f34201b, SchemaUtil.d, null, MapFieldSchemas.f34211b);
        } else if (messageInfoA.c() == ProtoSyntax.PROTO2) {
            NewInstanceSchema newInstanceSchema = NewInstanceSchemas.f34225a;
            ListFieldSchema.ListFieldSchemaFull listFieldSchemaFull = ListFieldSchema.f34200a;
            UnknownFieldSchema unknownFieldSchema2 = SchemaUtil.f34236b;
            ExtensionSchema extensionSchema2 = ExtensionSchemas.f34178b;
            if (extensionSchema2 == null) {
                md.k("Protobuf runtime is not correctly loaded.");
                return null;
            }
            schemaC = MessageSchema.C(messageInfoA, newInstanceSchema, listFieldSchemaFull, unknownFieldSchema2, extensionSchema2, MapFieldSchemas.f34210a);
        } else {
            schemaC = MessageSchema.C(messageInfoA, NewInstanceSchemas.f34225a, ListFieldSchema.f34200a, SchemaUtil.f34237c, null, MapFieldSchemas.f34210a);
        }
        Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, schemaC);
        return schema2 != null ? schema2 : schemaC;
    }
}

package androidx.datastore.preferences.protobuf;

import defpackage.md;
import defpackage.r81;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class Protobuf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Protobuf f12985c = new Protobuf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f12987b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ManifestSchemaFactory f12986a = new ManifestSchemaFactory();

    public final Schema a(Class cls) {
        ExtensionSchema extensionSchema;
        Schema schemaX;
        Class cls2;
        Internal.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f12987b;
        Schema schema = (Schema) concurrentHashMap.get(cls);
        if (schema != null) {
            return schema;
        }
        ManifestSchemaFactory manifestSchemaFactory = this.f12986a;
        manifestSchemaFactory.getClass();
        Class cls3 = SchemaUtil.f12993a;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.f12993a) != null && !cls2.isAssignableFrom(cls)) {
            md.n("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        MessageInfo messageInfoA = manifestSchemaFactory.f12959a.a(cls);
        if (messageInfoA.a()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                schemaX = new MessageSetSchema(SchemaUtil.f12995c, ExtensionSchemas.f12934a, messageInfoA.b());
            } else {
                UnknownFieldSchema unknownFieldSchema = SchemaUtil.f12994b;
                ExtensionSchema extensionSchema2 = ExtensionSchemas.f12935b;
                if (extensionSchema2 == null) {
                    md.k("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                schemaX = new MessageSetSchema(unknownFieldSchema, extensionSchema2, messageInfoA.b());
            }
        } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.f12984b;
            ListFieldSchemaLite listFieldSchemaLite = ListFieldSchemas.f12957b;
            UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.f12995c;
            ExtensionSchemaLite extensionSchemaLite = ManifestSchemaFactory.AnonymousClass2.f12960a[messageInfoA.c().ordinal()] != 1 ? ExtensionSchemas.f12934a : null;
            MapFieldSchemaLite mapFieldSchemaLite = MapFieldSchemas.f12969b;
            if (!(messageInfoA instanceof RawMessageInfo)) {
                int[] iArr = MessageSchema.p;
                r81.h();
                return null;
            }
            schemaX = MessageSchema.x((RawMessageInfo) messageInfoA, newInstanceSchemaLite, listFieldSchemaLite, unknownFieldSetLiteSchema, extensionSchemaLite, mapFieldSchemaLite);
        } else {
            NewInstanceSchema newInstanceSchema = NewInstanceSchemas.f12983a;
            ListFieldSchema listFieldSchema = ListFieldSchemas.f12956a;
            UnknownFieldSchema unknownFieldSchema2 = SchemaUtil.f12994b;
            if (ManifestSchemaFactory.AnonymousClass2.f12960a[messageInfoA.c().ordinal()] != 1) {
                ExtensionSchema extensionSchema3 = ExtensionSchemas.f12935b;
                if (extensionSchema3 == null) {
                    md.k("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                extensionSchema = extensionSchema3;
            } else {
                extensionSchema = null;
            }
            MapFieldSchema mapFieldSchema = MapFieldSchemas.f12968a;
            if (!(messageInfoA instanceof RawMessageInfo)) {
                int[] iArr2 = MessageSchema.p;
                r81.h();
                return null;
            }
            schemaX = MessageSchema.x((RawMessageInfo) messageInfoA, newInstanceSchema, listFieldSchema, unknownFieldSchema2, extensionSchema, mapFieldSchema);
        }
        Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, schemaX);
        return schema2 != null ? schema2 : schemaX;
    }
}

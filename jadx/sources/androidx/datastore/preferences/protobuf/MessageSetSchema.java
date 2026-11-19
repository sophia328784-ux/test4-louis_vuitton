package androidx.datastore.preferences.protobuf;

import defpackage.md;
import defpackage.r81;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class MessageSetSchema<T> implements Schema<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MessageLite f12980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UnknownFieldSchema f12981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f12982c;
    public final ExtensionSchema d;

    public MessageSetSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        this.f12981b = unknownFieldSchema;
        ((ExtensionSchemaLite) extensionSchema).getClass();
        this.f12982c = messageLite instanceof GeneratedMessageLite.ExtendableMessage;
        this.d = extensionSchema;
        this.f12980a = messageLite;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        SchemaUtil.l(this.f12981b, obj, obj2);
        if (this.f12982c) {
            SchemaUtil.k(this.d, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final Object b() {
        MessageLite messageLite = this.f12980a;
        if (messageLite instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) messageLite).w();
        }
        GeneratedMessageLite.Builder builderD = messageLite.d();
        boolean zT = builderD.f12945c.t();
        GeneratedMessageLite generatedMessageLite = builderD.f12945c;
        if (!zT) {
            return generatedMessageLite;
        }
        generatedMessageLite.getClass();
        Protobuf protobuf = Protobuf.f12985c;
        protobuf.getClass();
        protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
        generatedMessageLite.u();
        return builderD.f12945c;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void c(Object obj) {
        ((UnknownFieldSetLiteSchema) this.f12981b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        if (unknownFieldSetLite.f13016e) {
            unknownFieldSetLite.f13016e = false;
        }
        ((ExtensionSchemaLite) this.d).getClass();
        ((GeneratedMessageLite.ExtendableMessage) obj).extensions.j();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean d(Object obj) {
        ((ExtensionSchemaLite) this.d).getClass();
        return ((GeneratedMessageLite.ExtendableMessage) obj).extensions.g();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int e(AbstractMessageLite abstractMessageLite) {
        ((UnknownFieldSetLiteSchema) this.f12981b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) abstractMessageLite).unknownFields;
        int iB = unknownFieldSetLite.d;
        if (iB == -1) {
            iB = 0;
            for (int i2 = 0; i2 < unknownFieldSetLite.f13013a; i2++) {
                int i3 = unknownFieldSetLite.f13014b[i2] >>> 3;
                iB += CodedOutputStream.b(3, (ByteString) unknownFieldSetLite.f13015c[i2]) + CodedOutputStream.f(i3) + CodedOutputStream.e(2) + (CodedOutputStream.e(1) * 2);
            }
            unknownFieldSetLite.d = iB;
        }
        if (!this.f12982c) {
            return iB;
        }
        ((ExtensionSchemaLite) this.d).getClass();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) abstractMessageLite).extensions.f12936a;
        int size = anonymousClass1.f12997b.size();
        int iF = 0;
        for (int i4 = 0; i4 < size; i4++) {
            iF += FieldSet.f(anonymousClass1.d(i4));
        }
        Iterator<T> it = anonymousClass1.e().iterator();
        while (it.hasNext()) {
            iF += FieldSet.f((Map.Entry) it.next());
        }
        return iB + iF;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void f(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite) {
        UnknownFieldSchema unknownFieldSchema = this.f12981b;
        UnknownFieldSetLite unknownFieldSetLiteA = unknownFieldSchema.a(obj);
        ExtensionSchema extensionSchema = this.d;
        ((ExtensionSchemaLite) extensionSchema).getClass();
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        FieldSet<Object> fieldSet = extendableMessage.extensions;
        if (fieldSet.f12937b) {
            extendableMessage.extensions = fieldSet.clone();
        }
        while (codedInputStreamReader.f() != Integer.MAX_VALUE) {
            try {
                MessageSetSchema<T> messageSetSchema = this;
                CodedInputStreamReader codedInputStreamReader2 = codedInputStreamReader;
                ExtensionRegistryLite extensionRegistryLite2 = extensionRegistryLite;
                if (!messageSetSchema.j(codedInputStreamReader2, extensionRegistryLite2, extensionSchema, unknownFieldSchema, unknownFieldSetLiteA)) {
                    break;
                }
                this = messageSetSchema;
                codedInputStreamReader = codedInputStreamReader2;
                extensionRegistryLite = extensionRegistryLite2;
            } finally {
                ((GeneratedMessageLite) obj).unknownFields = unknownFieldSetLiteA;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int g(GeneratedMessageLite generatedMessageLite) {
        ((UnknownFieldSetLiteSchema) this.f12981b).getClass();
        int iHashCode = generatedMessageLite.unknownFields.hashCode();
        if (!this.f12982c) {
            return iHashCode;
        }
        ((ExtensionSchemaLite) this.d).getClass();
        return (iHashCode * 53) + ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions.f12936a.hashCode();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void h(Object obj, Writer writer) {
        ((ExtensionSchemaLite) this.d).getClass();
        Iterator itI = ((GeneratedMessageLite.ExtendableMessage) obj).extensions.i();
        while (itI.hasNext()) {
            Map.Entry entry = (Map.Entry) itI.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) entry.getKey();
            if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE || fieldDescriptorLite.n() || fieldDescriptorLite.q()) {
                md.k("Found invalid MessageSet item.");
                return;
            } else if (entry instanceof LazyField.LazyEntry) {
                writer.a(fieldDescriptorLite.m(), ((LazyField) ((LazyField.LazyEntry) entry).f12951b.getValue()).b());
            } else {
                writer.a(fieldDescriptorLite.m(), entry.getValue());
            }
        }
        ((UnknownFieldSetLiteSchema) this.f12981b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        unknownFieldSetLite.getClass();
        if (writer.s() == Writer.FieldOrder.DESCENDING) {
            for (int i2 = unknownFieldSetLite.f13013a - 1; i2 >= 0; i2--) {
                writer.a(unknownFieldSetLite.f13014b[i2] >>> 3, unknownFieldSetLite.f13015c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < unknownFieldSetLite.f13013a; i3++) {
            writer.a(unknownFieldSetLite.f13014b[i3] >>> 3, unknownFieldSetLite.f13015c[i3]);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean i(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.f12981b;
        unknownFieldSetLiteSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        unknownFieldSetLiteSchema.getClass();
        if (!unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
            return false;
        }
        if (!this.f12982c) {
            return true;
        }
        ExtensionSchemaLite extensionSchemaLite = (ExtensionSchemaLite) this.d;
        extensionSchemaLite.getClass();
        FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions;
        extensionSchemaLite.getClass();
        return fieldSet.equals(((GeneratedMessageLite.ExtendableMessage) generatedMessageLite2).extensions);
    }

    public final boolean j(Reader reader, ExtensionRegistryLite extensionRegistryLite, ExtensionSchema extensionSchema, UnknownFieldSchema unknownFieldSchema, UnknownFieldSetLite unknownFieldSetLite) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        MessageLite messageLite = this.f12980a;
        if (tag != 11) {
            if ((tag & 7) != 2) {
                return reader.g();
            }
            ((ExtensionSchemaLite) extensionSchema).getClass();
            if (extensionRegistryLite.f12931a.get(new ExtensionRegistryLite.ObjectIntPair(tag >>> 3, messageLite)) == null) {
                return unknownFieldSchema.b(0, reader, unknownFieldSetLite);
            }
            r81.h();
            return false;
        }
        ByteString byteStringB = null;
        int iE = 0;
        while (reader.f() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == 16) {
                iE = reader.e();
                ((ExtensionSchemaLite) extensionSchema).getClass();
                if (extensionRegistryLite.f12931a.get(new ExtensionRegistryLite.ObjectIntPair(iE, messageLite)) != null) {
                    r81.h();
                    return false;
                }
            } else if (tag2 == 26) {
                byteStringB = reader.b();
            } else if (!reader.g()) {
                break;
            }
        }
        if (reader.getTag() != 12) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
        if (byteStringB == null) {
            return true;
        }
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        unknownFieldSetLite.c((iE << 3) | 2, byteStringB);
        return true;
    }
}

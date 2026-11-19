package com.google.crypto.tink.shaded.protobuf;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class MessageSetSchema<T> implements Schema<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MessageLite f34222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UnknownFieldSchema f34223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f34224c;
    public final ExtensionSchema d;

    public MessageSetSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        this.f34223b = unknownFieldSchema;
        ((ExtensionSchemaLite) extensionSchema).getClass();
        this.f34224c = messageLite instanceof GeneratedMessageLite.ExtendableMessage;
        this.d = extensionSchema;
        this.f34222a = messageLite;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        SchemaUtil.z(this.f34223b, obj, obj2);
        if (this.f34224c) {
            SchemaUtil.y(this.d, obj, obj2);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final Object b() {
        MessageLite messageLite = this.f34222a;
        return messageLite instanceof GeneratedMessageLite ? ((GeneratedMessageLite) messageLite).z() : messageLite.d().q();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void c(Object obj) {
        ((UnknownFieldSetLiteSchema) this.f34223b).getClass();
        ((GeneratedMessageLite) obj).unknownFields.f34261e = false;
        ((ExtensionSchemaLite) this.d).getClass();
        ((GeneratedMessageLite.ExtendableMessage) obj).extensions.j();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final boolean d(Object obj) {
        ((ExtensionSchemaLite) this.d).getClass();
        return ((GeneratedMessageLite.ExtendableMessage) obj).extensions.g();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0083 A[EDGE_INSN: B:52:0x0083->B:29:0x0083 BREAK  A[LOOP:1: B:14:0x0049->B:55:0x0049], SYNTHETIC] */
    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void e(Object obj, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers) throws InvalidProtocolBufferException {
        int i4;
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLiteC = generatedMessageLite.unknownFields;
        if (unknownFieldSetLiteC == UnknownFieldSetLite.f34257f) {
            unknownFieldSetLiteC = UnknownFieldSetLite.c();
            generatedMessageLite.unknownFields = unknownFieldSetLiteC;
        }
        UnknownFieldSetLite unknownFieldSetLite = unknownFieldSetLiteC;
        ((GeneratedMessageLite.ExtendableMessage) obj).G();
        while (i2 < i3) {
            int i5 = ArrayDecoders.i(bArr, i2, registers);
            int i6 = registers.f34138a;
            ExtensionRegistryLite extensionRegistryLite = registers.d;
            MessageLite messageLite = this.f34222a;
            ExtensionSchema extensionSchema = this.d;
            if (i6 == 11) {
                int i7 = i3;
                ArrayDecoders.Registers registers2 = registers;
                int i8 = 0;
                ByteString byteString = null;
                while (true) {
                    if (i5 >= i7) {
                        i4 = i5;
                        break;
                    }
                    i4 = ArrayDecoders.i(bArr, i5, registers2);
                    int i9 = registers2.f34138a;
                    int i10 = i9 >>> 3;
                    int i11 = i9 & 7;
                    if (i10 != 2) {
                        if (i10 == 3 && i11 == 2) {
                            i5 = ArrayDecoders.a(bArr, i4, registers2);
                            byteString = (ByteString) registers2.f34140c;
                        } else if (i9 == 12) {
                            break;
                        } else {
                            i5 = ArrayDecoders.m(i9, bArr, i4, i7, registers2);
                        }
                    } else if (i11 == 0) {
                        i5 = ArrayDecoders.i(bArr, i4, registers2);
                        i8 = registers2.f34138a;
                        ((ExtensionSchemaLite) extensionSchema).getClass();
                        extensionRegistryLite.a(messageLite, i8);
                    } else {
                        if (i9 == 12) {
                            break;
                            break;
                        }
                        i5 = ArrayDecoders.m(i9, bArr, i4, i7, registers2);
                    }
                }
                if (byteString != null) {
                    unknownFieldSetLite.d((i8 << 3) | 2, byteString);
                }
                i2 = i4;
                i3 = i7;
                registers = registers2;
            } else if ((i6 & 7) == 2) {
                ((ExtensionSchemaLite) extensionSchema).getClass();
                extensionRegistryLite.a(messageLite, i6 >>> 3);
                i2 = ArrayDecoders.g(i6, bArr, i5, i3, unknownFieldSetLite, registers);
            } else {
                i2 = ArrayDecoders.m(i6, bArr, i5, i3, registers);
            }
        }
        if (i2 != i3) {
            throw InvalidProtocolBufferException.f();
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void f(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite) {
        UnknownFieldSchema unknownFieldSchema = this.f34223b;
        UnknownFieldSetLite unknownFieldSetLiteA = unknownFieldSchema.a(obj);
        ExtensionSchema extensionSchema = this.d;
        ((ExtensionSchemaLite) extensionSchema).getClass();
        ((GeneratedMessageLite.ExtendableMessage) obj).G();
        while (codedInputStreamReader.f() != Integer.MAX_VALUE) {
            try {
                MessageSetSchema<T> messageSetSchema = this;
                CodedInputStreamReader codedInputStreamReader2 = codedInputStreamReader;
                ExtensionRegistryLite extensionRegistryLite2 = extensionRegistryLite;
                if (!messageSetSchema.k(codedInputStreamReader2, extensionRegistryLite2, extensionSchema, unknownFieldSchema, unknownFieldSetLiteA)) {
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

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.f34223b;
        unknownFieldSetLiteSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        unknownFieldSetLiteSchema.getClass();
        if (!unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
            return false;
        }
        if (!this.f34224c) {
            return true;
        }
        ExtensionSchemaLite extensionSchemaLite = (ExtensionSchemaLite) this.d;
        extensionSchemaLite.getClass();
        FieldSet<Object> fieldSet = ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions;
        extensionSchemaLite.getClass();
        return fieldSet.equals(((GeneratedMessageLite.ExtendableMessage) generatedMessageLite2).extensions);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final int h(GeneratedMessageLite generatedMessageLite) {
        ((UnknownFieldSetLiteSchema) this.f34223b).getClass();
        int iHashCode = generatedMessageLite.unknownFields.hashCode();
        if (!this.f34224c) {
            return iHashCode;
        }
        ((ExtensionSchemaLite) this.d).getClass();
        return (iHashCode * 53) + ((GeneratedMessageLite.ExtendableMessage) generatedMessageLite).extensions.f34179a.hashCode();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final void i(Object obj, Writer writer) {
        ((ExtensionSchemaLite) this.d).getClass();
        Iterator itI = ((GeneratedMessageLite.ExtendableMessage) obj).extensions.i();
        while (itI.hasNext()) {
            Map.Entry entry = (Map.Entry) itI.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) entry.getKey();
            if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE || fieldDescriptorLite.n() || fieldDescriptorLite.q()) {
                md.k("Found invalid MessageSet item.");
                return;
            } else if (entry instanceof LazyField.LazyEntry) {
                writer.a(fieldDescriptorLite.m(), ((LazyField) ((LazyField.LazyEntry) entry).f34194b.getValue()).b());
            } else {
                writer.a(fieldDescriptorLite.m(), entry.getValue());
            }
        }
        ((UnknownFieldSetLiteSchema) this.f34223b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        unknownFieldSetLite.getClass();
        if (writer.s() == Writer.FieldOrder.DESCENDING) {
            for (int i2 = unknownFieldSetLite.f34258a - 1; i2 >= 0; i2--) {
                writer.a(unknownFieldSetLite.f34259b[i2] >>> 3, unknownFieldSetLite.f34260c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < unknownFieldSetLite.f34258a; i3++) {
            writer.a(unknownFieldSetLite.f34259b[i3] >>> 3, unknownFieldSetLite.f34260c[i3]);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Schema
    public final int j(AbstractMessageLite abstractMessageLite) {
        ((UnknownFieldSetLiteSchema) this.f34223b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) abstractMessageLite).unknownFields;
        int iA = unknownFieldSetLite.d;
        if (iA == -1) {
            iA = 0;
            for (int i2 = 0; i2 < unknownFieldSetLite.f34258a; i2++) {
                int i3 = unknownFieldSetLite.f34259b[i2] >>> 3;
                iA += CodedOutputStream.a(3, (ByteString) unknownFieldSetLite.f34260c[i2]) + CodedOutputStream.j(2, i3) + (CodedOutputStream.i(1) * 2);
            }
            unknownFieldSetLite.d = iA;
        }
        if (!this.f34224c) {
            return iA;
        }
        ((ExtensionSchemaLite) this.d).getClass();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) abstractMessageLite).extensions.f34179a;
        int iF = 0;
        for (int i4 = 0; i4 < anonymousClass1.f34240c.size(); i4++) {
            iF += FieldSet.f(anonymousClass1.d(i4));
        }
        Iterator<T> it = anonymousClass1.e().iterator();
        while (it.hasNext()) {
            iF += FieldSet.f((Map.Entry) it.next());
        }
        return iA + iF;
    }

    public final boolean k(Reader reader, ExtensionRegistryLite extensionRegistryLite, ExtensionSchema extensionSchema, UnknownFieldSchema unknownFieldSchema, UnknownFieldSetLite unknownFieldSetLite) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        MessageLite messageLite = this.f34222a;
        if (tag != 11) {
            if ((tag & 7) != 2) {
                return reader.g();
            }
            ((ExtensionSchemaLite) extensionSchema).getClass();
            extensionRegistryLite.a(messageLite, tag >>> 3);
            return unknownFieldSchema.b(unknownFieldSetLite, reader);
        }
        int iE = 0;
        ByteString byteStringB = null;
        while (reader.f() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == 16) {
                iE = reader.e();
                ((ExtensionSchemaLite) extensionSchema).getClass();
                extensionRegistryLite.a(messageLite, iE);
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
        unknownFieldSetLite.d((iE << 3) | 2, byteStringB);
        return true;
    }
}

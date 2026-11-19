package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.MessageLite;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractParser<MessageType extends MessageLite> implements Parser<MessageType> {
    static {
        ExtensionRegistryLite.a();
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    public final GeneratedMessageLite a(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) throws InvalidProtocolBufferException {
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        CodedInputStream codedInputStreamD = CodedInputStream.d(true, literalByteString.m(), literalByteString.size(), literalByteString.f12902e);
        GeneratedMessageLite generatedMessageLiteY = GeneratedMessageLite.y(((GeneratedMessageLite.DefaultInstanceBasedParser) this).f12946a, codedInputStreamD, extensionRegistryLite);
        codedInputStreamD.a(0);
        if (GeneratedMessageLite.s(generatedMessageLiteY, true)) {
            return generatedMessageLiteY;
        }
        throw new InvalidProtocolBufferException(new UninitializedMessageException(generatedMessageLiteY).getMessage());
    }
}

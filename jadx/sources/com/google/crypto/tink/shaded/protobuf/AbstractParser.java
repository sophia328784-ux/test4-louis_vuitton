package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.MessageLite;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractParser<MessageType extends MessageLite> implements Parser<MessageType> {
    static {
        ExtensionRegistryLite.b();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.Parser
    public final GeneratedMessageLite a(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) throws InvalidProtocolBufferException {
        ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
        CodedInputStream codedInputStreamF = CodedInputStream.f(true, literalByteString.n(), literalByteString.size(), literalByteString.f34148e);
        GeneratedMessageLite generatedMessageLiteD = GeneratedMessageLite.D(((GeneratedMessageLite.DefaultInstanceBasedParser) this).f34189a, codedInputStreamF, extensionRegistryLite);
        codedInputStreamF.a(0);
        if (GeneratedMessageLite.u(generatedMessageLiteD, true)) {
            return generatedMessageLiteD;
        }
        throw new InvalidProtocolBufferException(new UninitializedMessageException(generatedMessageLiteD).getMessage());
    }
}

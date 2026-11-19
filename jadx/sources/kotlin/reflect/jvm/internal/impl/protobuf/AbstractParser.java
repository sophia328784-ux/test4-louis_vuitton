package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractParser<MessageType extends MessageLite> implements Parser<MessageType> {
    static {
        int i2 = ExtensionRegistryLite.f73721b;
    }

    public static void c(MessageLite messageLite) throws InvalidProtocolBufferException {
        if (messageLite == null || messageLite.a()) {
            return;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException((messageLite instanceof AbstractMessageLite ? new UninitializedMessageException((AbstractMessageLite) messageLite) : new UninitializedMessageException(messageLite)).getMessage());
        invalidProtocolBufferException.f73743b = messageLite;
        throw invalidProtocolBufferException;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
    public final MessageLite b(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        MessageLite messageLite;
        try {
            int i2 = inputStream.read();
            if (i2 == -1) {
                messageLite = null;
            } else {
                if ((i2 & 128) != 0) {
                    i2 &= CertificateBody.profileType;
                    int i3 = 7;
                    while (true) {
                        if (i3 < 32) {
                            int i4 = inputStream.read();
                            if (i4 == -1) {
                                throw InvalidProtocolBufferException.b();
                            }
                            i2 |= (i4 & CertificateBody.profileType) << i3;
                            if ((i4 & 128) == 0) {
                                break;
                            }
                            i3 += 7;
                        } else {
                            while (true) {
                                if (i3 >= 64) {
                                    throw new InvalidProtocolBufferException("CodedInputStream encountered a malformed varint.");
                                }
                                int i5 = inputStream.read();
                                if (i5 == -1) {
                                    throw InvalidProtocolBufferException.b();
                                }
                                if ((i5 & 128) == 0) {
                                    break;
                                }
                                i3 += 7;
                            }
                        }
                    }
                }
                CodedInputStream codedInputStream = new CodedInputStream(new AbstractMessageLite.Builder.LimitedInputStream(inputStream, i2));
                messageLite = (MessageLite) a(codedInputStream, extensionRegistryLite);
                try {
                    codedInputStream.a(0);
                } catch (InvalidProtocolBufferException e2) {
                    e2.f73743b = messageLite;
                    throw e2;
                }
            }
            c(messageLite);
            return messageLite;
        } catch (IOException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage());
        }
    }
}

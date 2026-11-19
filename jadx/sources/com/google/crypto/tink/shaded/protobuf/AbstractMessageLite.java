package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.AbstractMessageLite;
import com.google.crypto.tink.shaded.protobuf.AbstractMessageLite.Builder;
import defpackage.r81;
import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode = 0;

    public static abstract class Builder<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite.Builder {
        @Override // 
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract GeneratedMessageLite.Builder clone();
    }

    public interface InternalOneOfEnum {
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    public final ByteString e() {
        try {
            int iJ = ((GeneratedMessageLite) this).j(null);
            ByteString byteString = ByteString.f34141c;
            ByteString.CodedBuilder codedBuilder = new ByteString.CodedBuilder(iJ);
            CodedOutputStream codedOutputStream = codedBuilder.f34146a;
            ((GeneratedMessageLite) this).h(codedOutputStream);
            codedOutputStream.getClass();
            CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
            if (arrayEncoder.f34168e - arrayEncoder.f34169f == 0) {
                return new ByteString.LiteralByteString(codedBuilder.f34147b);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            r81.g(k("ByteString"), e2);
            return null;
        }
    }

    public int i() {
        throw new UnsupportedOperationException();
    }

    public int j(Schema schema) {
        int i2 = i();
        if (i2 != -1) {
            return i2;
        }
        int iJ = schema.j(this);
        l(iJ);
        return iJ;
    }

    public final String k(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public void l(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageLite
    public final byte[] toByteArray() {
        try {
            int iJ = ((GeneratedMessageLite) this).j(null);
            byte[] bArr = new byte[iJ];
            Logger logger = CodedOutputStream.f34165b;
            CodedOutputStream.ArrayEncoder arrayEncoder = new CodedOutputStream.ArrayEncoder(bArr, iJ);
            ((GeneratedMessageLite) this).h(arrayEncoder);
            if (arrayEncoder.f34168e - arrayEncoder.f34169f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            r81.g(k("byte array"), e2);
            return null;
        }
    }
}

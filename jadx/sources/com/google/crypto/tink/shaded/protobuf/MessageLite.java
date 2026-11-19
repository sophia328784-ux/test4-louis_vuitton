package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        GeneratedMessageLite build();

        GeneratedMessageLite q();
    }

    GeneratedMessageLite.Builder b();

    int c();

    GeneratedMessageLite.Builder d();

    ByteString e();

    Parser g();

    void h(CodedOutputStream codedOutputStream);

    byte[] toByteArray();
}

package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
interface Schema<T> {
    void a(Object obj, Object obj2);

    Object b();

    void c(Object obj);

    boolean d(Object obj);

    void e(Object obj, byte[] bArr, int i2, int i3, ArrayDecoders.Registers registers);

    void f(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite);

    boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2);

    int h(GeneratedMessageLite generatedMessageLite);

    void i(Object obj, Writer writer);

    int j(AbstractMessageLite abstractMessageLite);
}

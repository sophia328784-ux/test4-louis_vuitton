package com.google.crypto.tink.shaded.protobuf;

import defpackage.r81;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Internal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f34190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f34191b;

    public interface BooleanList extends ProtobufList<Boolean> {
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
        BooleanList c(int i2);
    }

    public interface DoubleList extends ProtobufList<Double> {
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
        DoubleList c(int i2);
    }

    public interface EnumLite {
        int m();
    }

    public interface EnumLiteMap<T extends EnumLite> {
    }

    public interface EnumVerifier {
        boolean a();
    }

    public interface FloatList extends ProtobufList<Float> {
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
        FloatList c(int i2);
    }

    public interface IntList extends ProtobufList<Integer> {
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
        IntList c(int i2);
    }

    public interface LongList extends ProtobufList<Long> {
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.ProtobufList
        LongList c(int i2);
    }

    public interface ProtobufList<E> extends List<E>, RandomAccess {
        ProtobufList c(int i2);

        void l0();

        boolean m0();
    }

    static {
        Charset.forName("US-ASCII");
        f34190a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f34191b = bArr;
        ByteBuffer.wrap(bArr);
        CodedInputStream.f(false, 0, 0, bArr);
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }

    public static int b(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }
}

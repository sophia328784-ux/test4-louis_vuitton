package androidx.datastore.preferences.protobuf;

import defpackage.r81;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class Internal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f12947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f12948b;

    public interface BooleanList extends ProtobufList<Boolean> {
        @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
        /* bridge */ /* synthetic */ default ProtobufList c(int i2) {
            return i0();
        }

        BooleanList i0();
    }

    public interface DoubleList extends ProtobufList<Double> {
        @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
        /* bridge */ /* synthetic */ default ProtobufList c(int i2) {
            return i0();
        }

        DoubleList i0();
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
        @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
        /* bridge */ /* synthetic */ default ProtobufList c(int i2) {
            return i0();
        }

        FloatList i0();
    }

    public interface IntList extends ProtobufList<Integer> {
        @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
        /* bridge */ /* synthetic */ default ProtobufList c(int i2) {
            return i0();
        }

        IntList i0();
    }

    public interface LongList extends ProtobufList<Long> {
        @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
        /* bridge */ /* synthetic */ default ProtobufList c(int i2) {
            return i0();
        }

        LongList i0();
    }

    public interface ProtobufList<E> extends List<E>, RandomAccess {
        ProtobufList c(int i2);

        void l0();

        boolean m0();
    }

    static {
        Charset.forName("US-ASCII");
        f12947a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f12948b = bArr;
        ByteBuffer.wrap(bArr);
        CodedInputStream.d(false, 0, 0, bArr);
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

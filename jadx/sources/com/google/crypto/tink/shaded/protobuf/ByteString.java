package com.google.crypto.tink.shaded.protobuf;

import defpackage.az;
import defpackage.b21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
public abstract class ByteString implements Iterable<Byte>, Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ByteString f34141c = new LiteralByteString(Internal.f34191b);
    public static final ByteArrayCopier d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f34142b;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.ByteString$1, reason: invalid class name */
    class AnonymousClass1 extends AbstractByteIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34143b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f34144c;

        public AnonymousClass1() {
            this.f34144c = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f34143b < this.f34144c;
        }
    }

    public static abstract class AbstractByteIterator implements ByteIterator {
        @Override // java.util.Iterator
        public final Byte next() {
            byte bL;
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) this;
            int i2 = anonymousClass1.f34143b;
            if (i2 < anonymousClass1.f34144c) {
                anonymousClass1.f34143b = i2 + 1;
                bL = ByteString.this.l(i2);
            } else {
                b21.x();
                bL = 0;
            }
            return Byte.valueOf(bL);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class ArraysByteArrayCopier implements ByteArrayCopier {
        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.ByteArrayCopier
        public final byte[] a(int i2, int i3, byte[] bArr) {
            return Arrays.copyOfRange(bArr, i2, i3 + i2);
        }
    }

    public static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f34145f;
        public final int g;

        public BoundedByteString(byte[] bArr, int i2, int i3) {
            super(bArr);
            ByteString.f(i2, i2 + i3, bArr.length);
            this.f34145f = i2;
            this.g = i3;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.LiteralByteString, com.google.crypto.tink.shaded.protobuf.ByteString
        public final byte b(int i2) {
            int i3 = this.g;
            if (((i3 - (i2 + 1)) | i2) >= 0) {
                return this.f34148e[this.f34145f + i2];
            }
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(pq0.k(i2, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(o60.h(i2, i3, "Index > length: ", ", "));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.LiteralByteString, com.google.crypto.tink.shaded.protobuf.ByteString
        public final void i(int i2, byte[] bArr) {
            System.arraycopy(this.f34148e, this.f34145f, bArr, 0, i2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.LiteralByteString, com.google.crypto.tink.shaded.protobuf.ByteString
        public final byte l(int i2) {
            return this.f34148e[this.f34145f + i2];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.LiteralByteString
        public final int n() {
            return this.f34145f;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.LiteralByteString, com.google.crypto.tink.shaded.protobuf.ByteString
        public final int size() {
            return this.g;
        }

        public Object writeReplace() {
            return new LiteralByteString(m());
        }
    }

    public interface ByteArrayCopier {
        byte[] a(int i2, int i3, byte[] bArr);
    }

    public interface ByteIterator extends Iterator<Byte> {
    }

    public static final class CodedBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CodedOutputStream f34146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f34147b;

        public CodedBuilder(int i2) {
            byte[] bArr = new byte[i2];
            this.f34147b = bArr;
            Logger logger = CodedOutputStream.f34165b;
            this.f34146a = new CodedOutputStream.ArrayEncoder(bArr, i2);
        }
    }

    public static abstract class LeafByteString extends ByteString {
        @Override // java.lang.Iterable
        public final Iterator<Byte> iterator() {
            return new AnonymousClass1();
        }
    }

    public static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f34148e;

        public LiteralByteString(byte[] bArr) {
            this.f34142b = 0;
            bArr.getClass();
            this.f34148e = bArr;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString
        public byte b(int i2) {
            return this.f34148e[i2];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int i2 = this.f34142b;
            int i3 = literalByteString.f34142b;
            if (i2 != 0 && i3 != 0 && i2 != i3) {
                return false;
            }
            int size = size();
            if (size > literalByteString.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (size > literalByteString.size()) {
                StringBuilder sbQ = fc.q(size, "Ran off end of other: 0, ", ", ");
                sbQ.append(literalByteString.size());
                throw new IllegalArgumentException(sbQ.toString());
            }
            byte[] bArr = literalByteString.f34148e;
            int iN = n() + size;
            int iN2 = n();
            int iN3 = literalByteString.n();
            while (iN2 < iN) {
                if (this.f34148e[iN2] != bArr[iN3]) {
                    return false;
                }
                iN2++;
                iN3++;
            }
            return true;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString
        public void i(int i2, byte[] bArr) {
            System.arraycopy(this.f34148e, 0, bArr, 0, i2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString
        public byte l(int i2) {
            return this.f34148e[i2];
        }

        public int n() {
            return 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.ByteString
        public int size() {
            return this.f34148e.length;
        }
    }

    public static final class SystemByteArrayCopier implements ByteArrayCopier {
        @Override // com.google.crypto.tink.shaded.protobuf.ByteString.ByteArrayCopier
        public final byte[] a(int i2, int i3, byte[] bArr) {
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            return bArr2;
        }
    }

    static {
        d = Android.a() ? new SystemByteArrayCopier() : new ArraysByteArrayCopier();
    }

    public static int f(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            az.v(n00.m(i2, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i3 < i2) {
            az.v(o60.h(i2, i3, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        az.v(o60.h(i3, i4, "End index: ", " >= "));
        return 0;
    }

    public static ByteString h(int i2, int i3, byte[] bArr) {
        f(i2, i2 + i3, bArr.length);
        return new LiteralByteString(d.a(i2, i3, bArr));
    }

    public abstract byte b(int i2);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.f34142b;
        if (i2 != 0) {
            return i2;
        }
        int size = size();
        LiteralByteString literalByteString = (LiteralByteString) this;
        int iN = literalByteString.n();
        int i3 = size;
        for (int i4 = iN; i4 < iN + size; i4++) {
            i3 = (i3 * 31) + literalByteString.f34148e[i4];
        }
        if (i3 == 0) {
            i3 = 1;
        }
        this.f34142b = i3;
        return i3;
    }

    public abstract void i(int i2, byte[] bArr);

    public abstract byte l(int i2);

    public final byte[] m() {
        int size = size();
        if (size == 0) {
            return Internal.f34191b;
        }
        byte[] bArr = new byte[size];
        i(size, bArr);
        return bArr;
    }

    public abstract int size();

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strConcat = TextFormatEscaper.a(this);
        } else {
            LiteralByteString literalByteString = (LiteralByteString) this;
            int iF = f(0, 47, literalByteString.size());
            strConcat = TextFormatEscaper.a(iF == 0 ? f34141c : new BoundedByteString(literalByteString.f34148e, literalByteString.n(), iF)).concat("...");
        }
        return n00.r(strConcat, "\">", fc.r(size, "<ByteString@", hexString, " size=", " contents=\""));
    }
}

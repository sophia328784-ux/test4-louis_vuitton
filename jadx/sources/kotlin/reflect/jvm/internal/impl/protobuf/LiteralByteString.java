package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.n91;
import defpackage.zy0;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
class LiteralByteString extends ByteString {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f73746c;
    public int d = 0;

    public class LiteralByteIterator implements ByteString.ByteIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f73747b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f73748c;

        public LiteralByteIterator() {
            this.f73748c = LiteralByteString.this.f73746c.length;
        }

        public final byte a() {
            try {
                byte[] bArr = LiteralByteString.this.f73746c;
                int i2 = this.f73747b;
                this.f73747b = i2 + 1;
                return bArr[i2];
            } catch (ArrayIndexOutOfBoundsException e2) {
                zy0.c(e2.getMessage());
                return (byte) 0;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f73747b < this.f73748c;
        }

        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public LiteralByteString(byte[] bArr) {
        this.f73746c = bArr;
    }

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
        if (obj instanceof LiteralByteString) {
            return x((LiteralByteString) obj, 0, size());
        }
        if (obj instanceof RopeByteString) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(obj.getClass());
        md.n(n00.r("Has a new type of ByteString been created? Found ", strValueOf, new StringBuilder(strValueOf.length() + 49)));
        return false;
    }

    public final int hashCode() {
        int iQ = this.d;
        if (iQ == 0) {
            int size = size();
            iQ = q(size, 0, size);
            if (iQ == 0) {
                iQ = 1;
            }
            this.d = iQ;
        }
        return iQ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public void i(int i2, int i3, byte[] bArr, int i4) {
        System.arraycopy(this.f73746c, i2, bArr, i3, i4);
    }

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new LiteralByteIterator();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int m() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean n() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean o() {
        byte[] bArr = this.f73746c;
        return Utf8.c(0, bArr.length, bArr) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int q(int i2, int i3, int i4) {
        for (int i5 = i3; i5 < i3 + i4; i5++) {
            i2 = (i2 * 31) + this.f73746c[i5];
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r6[r8] > (-65)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0049, code lost:
    
        if (r6[r8] > (-65)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0092, code lost:
    
        if (r6[r7] > (-65)) goto L59;
     */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int r(int r7, int r8, int r9) {
        /*
            r6 = this;
            int r9 = r9 + r8
            byte[] r6 = r6.f73746c
            if (r7 == 0) goto L95
            if (r8 < r9) goto L8
            return r7
        L8:
            byte r0 = (byte) r7
            r1 = -32
            r2 = -1
            r3 = -65
            if (r0 >= r1) goto L1f
            r7 = -62
            if (r0 < r7) goto L94
            int r7 = r8 + 1
            r8 = r6[r8]
            if (r8 <= r3) goto L1c
            goto L94
        L1c:
            r8 = r7
            goto L95
        L1f:
            r4 = -16
            if (r0 >= r4) goto L4c
            int r7 = r7 >> 8
            int r7 = ~r7
            byte r7 = (byte) r7
            if (r7 != 0) goto L37
            int r7 = r8 + 1
            r8 = r6[r8]
            if (r7 < r9) goto L34
            int r6 = kotlin.reflect.jvm.internal.impl.protobuf.Utf8.a(r0, r8)
            return r6
        L34:
            r5 = r8
            r8 = r7
            r7 = r5
        L37:
            if (r7 > r3) goto L94
            r4 = -96
            if (r0 != r1) goto L3f
            if (r7 < r4) goto L94
        L3f:
            r1 = -19
            if (r0 != r1) goto L45
            if (r7 >= r4) goto L94
        L45:
            int r7 = r8 + 1
            r8 = r6[r8]
            if (r8 <= r3) goto L1c
            goto L94
        L4c:
            int r1 = r7 >> 8
            int r1 = ~r1
            byte r1 = (byte) r1
            if (r1 != 0) goto L5f
            int r7 = r8 + 1
            r1 = r6[r8]
            if (r7 < r9) goto L5d
            int r6 = kotlin.reflect.jvm.internal.impl.protobuf.Utf8.a(r0, r1)
            return r6
        L5d:
            r8 = 0
            goto L65
        L5f:
            int r7 = r7 >> 16
            byte r7 = (byte) r7
            r5 = r8
            r8 = r7
            r7 = r5
        L65:
            if (r8 != 0) goto L81
            int r8 = r7 + 1
            r7 = r6[r7]
            if (r8 < r9) goto L7e
            r6 = -12
            if (r0 > r6) goto L7d
            if (r1 > r3) goto L7d
            if (r7 <= r3) goto L76
            goto L7d
        L76:
            int r6 = r1 << 8
            r6 = r6 ^ r0
            int r7 = r7 << 16
            r6 = r6 ^ r7
            return r6
        L7d:
            return r2
        L7e:
            r5 = r8
            r8 = r7
            r7 = r5
        L81:
            if (r1 > r3) goto L94
            int r0 = r0 << 28
            int r1 = r1 + 112
            int r1 = r1 + r0
            int r0 = r1 >> 30
            if (r0 != 0) goto L94
            if (r8 > r3) goto L94
            int r8 = r7 + 1
            r7 = r6[r7]
            if (r7 <= r3) goto L95
        L94:
            return r2
        L95:
            int r6 = kotlin.reflect.jvm.internal.impl.protobuf.Utf8.c(r8, r9, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString.r(int, int, int):int");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int s() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.f73746c.length;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final String t() {
        byte[] bArr = this.f73746c;
        return new String(bArr, 0, bArr.length, "UTF-8");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final void v(OutputStream outputStream, int i2, int i3) throws IOException {
        outputStream.write(this.f73746c, i2, i3);
    }

    public final boolean x(LiteralByteString literalByteString, int i2, int i3) {
        byte[] bArr = literalByteString.f73746c;
        int length = bArr.length;
        byte[] bArr2 = this.f73746c;
        if (i3 > length) {
            n91.a(i3, bArr2.length);
            return false;
        }
        if (i2 + i3 <= bArr.length) {
            int i4 = 0;
            while (i4 < i3) {
                if (bArr2[i4] != bArr[i2]) {
                    return false;
                }
                i4++;
                i2++;
            }
            return true;
        }
        int length2 = bArr.length;
        StringBuilder sb = new StringBuilder(59);
        sb.append("Ran off end of other: ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        md.n(d21.f(length2, ", ", sb));
        return false;
    }
}

package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Stack;
import kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString.LiteralByteIterator;

/* JADX INFO: loaded from: classes4.dex */
class RopeByteString extends ByteString {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f73749i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f73750c;
    public final ByteString d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ByteString f73751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f73752f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73753h = 0;

    public static class Balancer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Stack f73754a = new Stack();

        public final void a(ByteString byteString) {
            if (!byteString.n()) {
                if (!(byteString instanceof RopeByteString)) {
                    String strValueOf = String.valueOf(byteString.getClass());
                    md.n(n00.r("Has a new type of ByteString been created? Found ", strValueOf, new StringBuilder(strValueOf.length() + 49)));
                    return;
                } else {
                    RopeByteString ropeByteString = (RopeByteString) byteString;
                    a(ropeByteString.d);
                    a(ropeByteString.f73751e);
                    return;
                }
            }
            int size = byteString.size();
            int[] iArr = RopeByteString.f73749i;
            int iBinarySearch = Arrays.binarySearch(iArr, size);
            if (iBinarySearch < 0) {
                iBinarySearch = (-(iBinarySearch + 1)) - 1;
            }
            int i2 = iArr[iBinarySearch + 1];
            Stack stack = this.f73754a;
            if (stack.isEmpty() || ((ByteString) stack.peek()).size() >= i2) {
                stack.push(byteString);
                return;
            }
            int i3 = iArr[iBinarySearch];
            ByteString ropeByteString2 = (ByteString) stack.pop();
            while (!stack.isEmpty() && ((ByteString) stack.peek()).size() < i3) {
                ropeByteString2 = new RopeByteString((ByteString) stack.pop(), ropeByteString2);
            }
            RopeByteString ropeByteString3 = new RopeByteString(ropeByteString2, byteString);
            while (!stack.isEmpty()) {
                int[] iArr2 = RopeByteString.f73749i;
                int iBinarySearch2 = Arrays.binarySearch(iArr2, ropeByteString3.f73750c);
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
                }
                if (((ByteString) stack.peek()).size() >= iArr2[iBinarySearch2 + 1]) {
                    break;
                } else {
                    ropeByteString3 = new RopeByteString((ByteString) stack.pop(), ropeByteString3);
                }
            }
            stack.push(ropeByteString3);
        }
    }

    public static class PieceIterator implements Iterator<LiteralByteString> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Stack f73755b = new Stack();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LiteralByteString f73756c;

        public PieceIterator(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f73755b.push(ropeByteString);
                byteString = ropeByteString.d;
            }
            this.f73756c = (LiteralByteString) byteString;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LiteralByteString next() {
            LiteralByteString literalByteString;
            LiteralByteString literalByteString2 = this.f73756c;
            LiteralByteString literalByteString3 = null;
            if (literalByteString2 == null) {
                b21.x();
                return null;
            }
            do {
                Stack stack = this.f73755b;
                if (!stack.isEmpty()) {
                    ByteString byteString = ((RopeByteString) stack.pop()).f73751e;
                    while (byteString instanceof RopeByteString) {
                        RopeByteString ropeByteString = (RopeByteString) byteString;
                        stack.push(ropeByteString);
                        byteString = ropeByteString.d;
                    }
                    literalByteString = (LiteralByteString) byteString;
                }
                this.f73756c = literalByteString3;
                return literalByteString2;
            } while (literalByteString.f73746c.length == 0);
            literalByteString3 = literalByteString;
            this.f73756c = literalByteString3;
            return literalByteString2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f73756c != null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class RopeByteIterator implements ByteString.ByteIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PieceIterator f73757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ByteString.ByteIterator f73758c;
        public int d;

        public RopeByteIterator(RopeByteString ropeByteString) {
            PieceIterator pieceIterator = new PieceIterator(ropeByteString);
            this.f73757b = pieceIterator;
            this.f73758c = pieceIterator.next().new LiteralByteIterator();
            this.d = ropeByteString.f73750c;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.d > 0;
        }

        @Override // java.util.Iterator
        public final Byte next() {
            if (!((LiteralByteString.LiteralByteIterator) this.f73758c).hasNext()) {
                this.f73758c = this.f73757b.next().new LiteralByteIterator();
            }
            this.d--;
            return Byte.valueOf(((LiteralByteString.LiteralByteIterator) this.f73758c).a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        int i3 = 1;
        while (i2 > 0) {
            arrayList.add(Integer.valueOf(i2));
            int i4 = i3 + i2;
            i3 = i2;
            i2 = i4;
        }
        arrayList.add(Integer.MAX_VALUE);
        f73749i = new int[arrayList.size()];
        int i5 = 0;
        while (true) {
            int[] iArr = f73749i;
            if (i5 >= iArr.length) {
                return;
            }
            iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
            i5++;
        }
    }

    public RopeByteString(ByteString byteString, ByteString byteString2) {
        this.d = byteString;
        this.f73751e = byteString2;
        int size = byteString.size();
        this.f73752f = size;
        this.f73750c = byteString2.size() + size;
        this.g = Math.max(byteString.m(), byteString2.m()) + 1;
    }

    public final boolean equals(Object obj) {
        int iS;
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            int i2 = this.f73750c;
            if (i2 == size) {
                if (i2 == 0) {
                    return true;
                }
                if (this.f73753h == 0 || (iS = byteString.s()) == 0 || this.f73753h == iS) {
                    PieceIterator pieceIterator = new PieceIterator(this);
                    LiteralByteString next = pieceIterator.next();
                    PieceIterator pieceIterator2 = new PieceIterator(byteString);
                    LiteralByteString next2 = pieceIterator2.next();
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        int length = next.f73746c.length - i3;
                        int length2 = next2.f73746c.length - i4;
                        int iMin = Math.min(length, length2);
                        if (!(i3 == 0 ? next.x(next2, i4, iMin) : next2.x(next, i3, iMin))) {
                            break;
                        }
                        i5 += iMin;
                        if (i5 >= i2) {
                            if (i5 == i2) {
                                return true;
                            }
                            r81.b();
                            return false;
                        }
                        if (iMin == length) {
                            next = pieceIterator.next();
                            i3 = 0;
                        } else {
                            i3 += iMin;
                        }
                        if (iMin == length2) {
                            next2 = pieceIterator2.next();
                            i4 = 0;
                        } else {
                            i4 += iMin;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iQ = this.f73753h;
        if (iQ == 0) {
            int i2 = this.f73750c;
            iQ = q(i2, 0, i2);
            if (iQ == 0) {
                iQ = 1;
            }
            this.f73753h = iQ;
        }
        return iQ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final void i(int i2, int i3, byte[] bArr, int i4) {
        int i5 = i2 + i4;
        ByteString byteString = this.d;
        int i6 = this.f73752f;
        if (i5 <= i6) {
            byteString.i(i2, i3, bArr, i4);
            return;
        }
        ByteString byteString2 = this.f73751e;
        if (i2 >= i6) {
            byteString2.i(i2 - i6, i3, bArr, i4);
            return;
        }
        int i7 = i6 - i2;
        byteString.i(i2, i3, bArr, i7);
        byteString2.i(0, i3 + i7, bArr, i4 - i7);
    }

    @Override // java.lang.Iterable
    public final Iterator<Byte> iterator() {
        return new RopeByteIterator(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int m() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean n() {
        return this.f73750c >= f73749i[this.g];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean o() {
        int iR = this.d.r(0, 0, this.f73752f);
        ByteString byteString = this.f73751e;
        return byteString.r(iR, 0, byteString.size()) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int q(int i2, int i3, int i4) {
        int i5 = i3 + i4;
        ByteString byteString = this.d;
        int i6 = this.f73752f;
        if (i5 <= i6) {
            return byteString.q(i2, i3, i4);
        }
        ByteString byteString2 = this.f73751e;
        if (i3 >= i6) {
            return byteString2.q(i2, i3 - i6, i4);
        }
        int i7 = i6 - i3;
        return byteString2.q(byteString.q(i2, i3, i7), 0, i4 - i7);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int r(int i2, int i3, int i4) {
        int i5 = i3 + i4;
        ByteString byteString = this.d;
        int i6 = this.f73752f;
        if (i5 <= i6) {
            return byteString.r(i2, i3, i4);
        }
        ByteString byteString2 = this.f73751e;
        if (i3 >= i6) {
            return byteString2.r(i2, i3 - i6, i4);
        }
        int i7 = i6 - i3;
        return byteString2.r(byteString.r(i2, i3, i7), 0, i4 - i7);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int s() {
        return this.f73753h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int size() {
        return this.f73750c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final String t() {
        byte[] bArr;
        int i2 = this.f73750c;
        if (i2 == 0) {
            bArr = Internal.f73742a;
        } else {
            byte[] bArr2 = new byte[i2];
            i(0, 0, bArr2, i2);
            bArr = bArr2;
        }
        return new String(bArr, "UTF-8");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final void v(OutputStream outputStream, int i2, int i3) {
        int i4 = i2 + i3;
        ByteString byteString = this.d;
        int i5 = this.f73752f;
        if (i4 <= i5) {
            byteString.v(outputStream, i2, i3);
            return;
        }
        ByteString byteString2 = this.f73751e;
        if (i2 >= i5) {
            byteString2.v(outputStream, i2 - i5, i3);
            return;
        }
        int i6 = i5 - i2;
        byteString.v(outputStream, i2, i6);
        byteString2.v(outputStream, 0, i3 - i6);
    }
}

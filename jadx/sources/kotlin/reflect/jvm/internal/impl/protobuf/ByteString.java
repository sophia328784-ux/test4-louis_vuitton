package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.az;
import defpackage.r81;
import defpackage.z81;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ByteString implements Iterable<Byte> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ByteString f73706b = new LiteralByteString(new byte[0]);

    public interface ByteIterator extends Iterator<Byte> {
    }

    public static ByteString a(Iterator it, int i2) {
        if (i2 == 1) {
            return (ByteString) it.next();
        }
        int i3 = i2 >>> 1;
        return a(it, i3).b(a(it, i2 - i3));
    }

    public static ByteString f(String str) {
        try {
            return new LiteralByteString(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            r81.g("UTF-8 not supported?", e2);
            return null;
        }
    }

    public static Output p() {
        return new Output();
    }

    public final ByteString b(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        if (((long) size) + ((long) size2) >= 2147483647L) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(size);
            sb.append("+");
            sb.append(size2);
            throw new IllegalArgumentException(sb.toString());
        }
        int[] iArr = RopeByteString.f73749i;
        RopeByteString ropeByteString = this instanceof RopeByteString ? (RopeByteString) this : null;
        if (byteString.size() == 0) {
            return this;
        }
        if (size() == 0) {
            return byteString;
        }
        int size3 = byteString.size() + size();
        if (size3 < 128) {
            int size4 = size();
            int size5 = byteString.size();
            byte[] bArr = new byte[size4 + size5];
            h(0, 0, bArr, size4);
            byteString.h(0, size4, bArr, size5);
            return new LiteralByteString(bArr);
        }
        if (ropeByteString != null) {
            ByteString byteString2 = ropeByteString.f73751e;
            if (byteString.size() + byteString2.size() < 128) {
                int size6 = byteString2.size();
                int size7 = byteString.size();
                byte[] bArr2 = new byte[size6 + size7];
                byteString2.h(0, 0, bArr2, size6);
                byteString.h(0, size6, bArr2, size7);
                return new RopeByteString(ropeByteString.d, new LiteralByteString(bArr2));
            }
        }
        if (ropeByteString != null) {
            ByteString byteString3 = ropeByteString.f73751e;
            ByteString byteString4 = ropeByteString.d;
            if (byteString4.m() > byteString3.m() && ropeByteString.g > byteString.m()) {
                return new RopeByteString(byteString4, new RopeByteString(byteString3, byteString));
            }
        }
        if (size3 >= RopeByteString.f73749i[Math.max(m(), byteString.m()) + 1]) {
            return new RopeByteString(this, byteString);
        }
        RopeByteString.Balancer balancer = new RopeByteString.Balancer();
        balancer.a(this);
        balancer.a(byteString);
        Stack stack = balancer.f73754a;
        ByteString ropeByteString2 = (ByteString) stack.pop();
        while (!stack.isEmpty()) {
            ropeByteString2 = new RopeByteString((ByteString) stack.pop(), ropeByteString2);
        }
        return ropeByteString2;
    }

    public final void h(int i2, int i3, byte[] bArr, int i4) {
        if (i2 < 0) {
            az.v(z81.f(30, i2, "Source offset < 0: "));
            return;
        }
        if (i3 < 0) {
            az.v(z81.f(30, i3, "Target offset < 0: "));
            return;
        }
        if (i4 < 0) {
            az.v(z81.f(23, i4, "Length < 0: "));
            return;
        }
        int i5 = i2 + i4;
        if (i5 > size()) {
            az.v(z81.f(34, i5, "Source end offset < 0: "));
            return;
        }
        int i6 = i3 + i4;
        if (i6 > bArr.length) {
            az.v(z81.f(34, i6, "Target end offset < 0: "));
        } else if (i4 > 0) {
            i(i2, i3, bArr, i4);
        }
    }

    public abstract void i(int i2, int i3, byte[] bArr, int i4);

    public abstract int m();

    public abstract boolean n();

    public abstract boolean o();

    public abstract int q(int i2, int i3, int i4);

    public abstract int r(int i2, int i3, int i4);

    public abstract int s();

    public abstract int size();

    public abstract String t();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public final String u() {
        try {
            return t();
        } catch (UnsupportedEncodingException e2) {
            r81.g("UTF-8 not supported?", e2);
            return null;
        }
    }

    public abstract void v(OutputStream outputStream, int i2, int i3);

    public static final class Output extends OutputStream {
        public static final byte[] g = new byte[0];
        public int d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73710f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73707b = 128;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f73708c = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f73709e = new byte[128];

        public final void c(int i2) {
            this.f73708c.add(new LiteralByteString(this.f73709e));
            int length = this.d + this.f73709e.length;
            this.d = length;
            this.f73709e = new byte[Math.max(this.f73707b, Math.max(i2, length >>> 1))];
            this.f73710f = 0;
        }

        public final void h() {
            int i2 = this.f73710f;
            byte[] bArr = this.f73709e;
            int length = bArr.length;
            ArrayList arrayList = this.f73708c;
            if (i2 >= length) {
                arrayList.add(new LiteralByteString(this.f73709e));
                this.f73709e = g;
            } else if (i2 > 0) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i2));
                arrayList.add(new LiteralByteString(bArr2));
            }
            this.d += this.f73710f;
            this.f73710f = 0;
        }

        public final synchronized ByteString j() {
            ArrayList arrayList;
            h();
            arrayList = this.f73708c;
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add((ByteString) it.next());
                }
                arrayList = arrayList2;
            }
            return arrayList.isEmpty() ? ByteString.f73706b : ByteString.a(arrayList.iterator(), arrayList.size());
        }

        public final String toString() {
            int i2;
            String hexString = Integer.toHexString(System.identityHashCode(this));
            synchronized (this) {
                i2 = this.d + this.f73710f;
            }
            return String.format("<ByteString.Output@%s size=%d>", hexString, Integer.valueOf(i2));
        }

        @Override // java.io.OutputStream
        public final synchronized void write(byte[] bArr, int i2, int i3) {
            try {
                byte[] bArr2 = this.f73709e;
                int length = bArr2.length;
                int i4 = this.f73710f;
                if (i3 <= length - i4) {
                    System.arraycopy(bArr, i2, bArr2, i4, i3);
                    this.f73710f += i3;
                } else {
                    int length2 = bArr2.length - i4;
                    System.arraycopy(bArr, i2, bArr2, i4, length2);
                    int i5 = i3 - length2;
                    c(i5);
                    System.arraycopy(bArr, i2 + length2, this.f73709e, 0, i5);
                    this.f73710f = i5;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // java.io.OutputStream
        public final synchronized void write(int i2) {
            try {
                if (this.f73710f == this.f73709e.length) {
                    c(1);
                }
                byte[] bArr = this.f73709e;
                int i3 = this.f73710f;
                this.f73710f = i3 + 1;
                bArr[i3] = (byte) i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

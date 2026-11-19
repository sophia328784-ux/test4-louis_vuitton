package okio;

import com.batch.android.x0.h;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okio.internal.ByteStringNonJs;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0014B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "", DbParams.KEY_DATA, "<init>", "([B)V", "Ljava/io/ObjectInputStream;", "in", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "Ljava/io/ObjectOutputStream;", "out", "writeObject", "(Ljava/io/ObjectOutputStream;)V", NBSSpanMetricUnit.Bit, "[B", "getData$okio", "()[B", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ByteString implements Serializable, Comparable<ByteString> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f77398e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ByteString f77399f = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final byte[] data;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient int f77401c;
    public transient String d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/ByteString$Companion;", "", "", "serialVersionUID", "J", "Lokio/ByteString;", "EMPTY", "Lokio/ByteString;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:68:0x00d6 A[RETURN] */
        public static ByteString a(String str) {
            int i2;
            char cCharAt;
            str.getClass();
            byte[] bArr = Base64.f77382a;
            int length = str.length();
            while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
                length--;
            }
            int i3 = (int) ((((long) length) * 6) / 8);
            byte[] bArrCopyOf = new byte[i3];
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i4 >= length) {
                    int i8 = i5 % 4;
                    if (i8 != 1) {
                        if (i8 == 2) {
                            bArrCopyOf[i7] = (byte) ((i6 << 12) >> 16);
                            i7++;
                        } else if (i8 == 3) {
                            int i9 = i6 << 6;
                            int i10 = i7 + 1;
                            bArrCopyOf[i7] = (byte) (i9 >> 16);
                            i7 += 2;
                            bArrCopyOf[i10] = (byte) (i9 >> 8);
                        }
                        if (i7 != i3) {
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i7);
                        }
                    }
                    if (bArrCopyOf != null) {
                        return new ByteString(bArrCopyOf);
                    }
                    return null;
                }
                char cCharAt2 = str.charAt(i4);
                if ('A' <= cCharAt2 && cCharAt2 < '[') {
                    i2 = cCharAt2 - 'A';
                } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                    i2 = cCharAt2 - 'G';
                } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                    i2 = cCharAt2 + 4;
                } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                    i2 = 62;
                } else {
                    if (cCharAt2 != '/' && cCharAt2 != '_') {
                        if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                            break;
                        }
                    } else {
                        i2 = 63;
                    }
                    i4++;
                }
                i6 = (i6 << 6) | i2;
                i5++;
                if (i5 % 4 == 0) {
                    bArrCopyOf[i7] = (byte) (i6 >> 16);
                    int i11 = i7 + 2;
                    bArrCopyOf[i7 + 1] = (byte) (i6 >> 8);
                    i7 += 3;
                    bArrCopyOf[i11] = (byte) i6;
                }
                i4++;
            }
            bArrCopyOf = null;
            if (bArrCopyOf != null) {
                return new ByteString(bArrCopyOf);
            }
            return null;
        }

        public static ByteString b(String str) {
            if (str.length() % 2 != 0) {
                b21.n("Unexpected hex string: ".concat(str));
                return null;
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                bArr[i2] = (byte) (ByteStringNonJs.a(str.charAt(i3 + 1)) + (ByteStringNonJs.a(str.charAt(i3)) << 4));
            }
            return new ByteString(bArr);
        }

        public static ByteString c(String str) {
            str.getClass();
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            bytes.getClass();
            ByteString byteString = new ByteString(bytes);
            byteString.d = str;
            return byteString;
        }

        public static ByteString d(Companion companion, byte[] bArr) {
            int length = bArr.length;
            companion.getClass();
            bArr.getClass();
            SegmentedByteString.b(bArr.length, 0L, length);
            return new ByteString(ArraysKt.o(bArr, 0, length));
        }
    }

    public ByteString(byte[] bArr) {
        bArr.getClass();
        this.data = bArr;
    }

    public static ByteString A(ByteString byteString, int i2, int i3, int i4) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = byteString.e();
        }
        return byteString.y(i2, i3);
    }

    public static int h(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        return byteString.g(0, byteString2.getData());
    }

    public static int l(ByteString byteString, ByteString byteString2) {
        int iE = byteString.e();
        byteString.getClass();
        byteString2.getClass();
        return byteString.k(iE, byteString2.getData());
    }

    private final void readObject(ObjectInputStream in) throws IllegalAccessException, NoSuchFieldException, IOException {
        int i2 = in.readInt();
        f77398e.getClass();
        if (i2 < 0) {
            b21.n(pq0.k(i2, "byteCount < 0: "));
            return;
        }
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = in.read(bArr, i3, i2 - i3);
            if (i4 == -1) {
                md.e();
                return;
            }
            i3 += i4;
        }
        ByteString byteString = new ByteString(bArr);
        Field declaredField = ByteString.class.getDeclaredField(NBSSpanMetricUnit.Bit);
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    private final void writeObject(ObjectOutputStream out) throws IOException {
        out.writeInt(this.data.length);
        out.write(this.data);
    }

    public ByteString B() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i2];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                bArrCopyOf[i2] = (byte) (b2 + 32);
                for (int i3 = i2 + 1; i3 < bArrCopyOf.length; i3++) {
                    byte b3 = bArrCopyOf[i3];
                    if (b3 >= 65 && b3 <= 90) {
                        bArrCopyOf[i3] = (byte) (b3 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
            i2++;
        }
    }

    public final String C() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        byte[] data = getData();
        data.getClass();
        String str2 = new String(data, Charsets.UTF_8);
        this.d = str2;
        return str2;
    }

    public void D(int i2, Buffer buffer) {
        buffer.write(this.data, 0, i2);
    }

    public String a() {
        byte[] bArr = this.data;
        byte[] bArr2 = Base64.f77382a;
        bArr.getClass();
        bArr2.getClass();
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            byte b2 = bArr[i2];
            int i4 = i2 + 2;
            byte b3 = bArr[i2 + 1];
            i2 += 3;
            byte b4 = bArr[i4];
            bArr3[i3] = bArr2[(b2 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[((b2 & 3) << 4) | ((b3 & 255) >> 4)];
            int i5 = i3 + 3;
            bArr3[i3 + 2] = bArr2[((b3 & 15) << 2) | ((b4 & 255) >> 6)];
            i3 += 4;
            bArr3[i5] = bArr2[b4 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b5 = bArr[i2];
            bArr3[i3] = bArr2[(b5 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[(b5 & 3) << 4];
            bArr3[i3 + 2] = 61;
            bArr3[i3 + 3] = 61;
        } else if (length2 == 2) {
            int i6 = i2 + 1;
            byte b6 = bArr[i2];
            byte b7 = bArr[i6];
            bArr3[i3] = bArr2[(b6 & 255) >> 2];
            bArr3[i3 + 1] = bArr2[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
            bArr3[i3 + 2] = bArr2[(b7 & 15) << 2];
            bArr3[i3 + 3] = 61;
        }
        return new String(bArr3, Charsets.UTF_8);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ByteString byteString) {
        byteString.getClass();
        int iE = e();
        int iE2 = byteString.e();
        int iMin = Math.min(iE, iE2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iJ = j(i2) & 255;
            int iJ2 = byteString.j(i2) & 255;
            if (iJ != iJ2) {
                return iJ < iJ2 ? -1 : 1;
            }
        }
        if (iE == iE2) {
            return 0;
        }
        return iE < iE2 ? -1 : 1;
    }

    public void c(int i2, int i3, byte[] bArr, int i4) {
        bArr.getClass();
        ArraysKt.j(i3, this.data, i2, bArr, i4 + i2);
    }

    public ByteString d(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.data, 0, e());
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new ByteString(bArrDigest);
    }

    public int e() {
        return this.data.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int iE = byteString.e();
            byte[] bArr = this.data;
            if (iE == bArr.length && byteString.v(0, 0, bArr, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public String f() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = okio.internal.ByteString.f77462a;
            cArr[i2] = cArr2[(b2 >> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public int g(int i2, byte[] bArr) {
        bArr.getClass();
        int length = this.data.length - bArr.length;
        int iMax = Math.max(i2, 0);
        if (iMax > length) {
            return -1;
        }
        while (!SegmentedByteString.a(iMax, this.data, 0, bArr, bArr.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public int hashCode() {
        int i2 = this.f77401c;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.data);
        this.f77401c = iHashCode;
        return iHashCode;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public byte[] getData() {
        return this.data;
    }

    public byte j(int i2) {
        return this.data[i2];
    }

    public int k(int i2, byte[] bArr) {
        bArr.getClass();
        for (int iMin = Math.min(i2, this.data.length - bArr.length); -1 < iMin; iMin--) {
            if (SegmentedByteString.a(iMin, this.data, 0, bArr, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:179:0x01b6 A[EDGE_INSN: B:179:0x01b6->B:180:0x01b7 BREAK  A[LOOP:0: B:7:0x000e->B:241:0x000e]] */
    public String toString() {
        byte b2;
        int i2;
        ByteString byteString = this;
        byte[] bArr = byteString.data;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0: while (i3 < length) {
            byte b3 = bArr[i3];
            if (b3 < 0) {
                if ((b3 >> 5) != -2) {
                    if ((b3 >> 4) != -2) {
                        if ((b3 >> 3) != -2) {
                            if (i5 == 64) {
                                break;
                            }
                            i4 = -1;
                            break;
                        }
                        int i6 = i3 + 3;
                        if (length > i6) {
                            byte b4 = bArr[i3 + 1];
                            if ((b4 & h.a.f24176e) != 128) {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                            byte b5 = bArr[i3 + 2];
                            if ((b5 & h.a.f24176e) != 128) {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                            byte b6 = bArr[i6];
                            if ((b6 & h.a.f24176e) != 128) {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                            int i7 = (((b6 ^ 3678080) ^ (b5 << 6)) ^ (b4 << 12)) ^ (b3 << 18);
                            if (i7 <= 1114111) {
                                if (55296 <= i7 && i7 < 57344) {
                                    if (i5 == 64) {
                                        break;
                                    }
                                    i4 = -1;
                                    break;
                                }
                                if (i7 >= 65536) {
                                    i2 = i5 + 1;
                                    if (i5 == 64) {
                                        break;
                                    }
                                    if ((i7 != 10 && i7 != 13 && ((i7 >= 0 && i7 < 32) || (127 <= i7 && i7 < 160))) || i7 == 65533) {
                                        i4 = -1;
                                        break;
                                    }
                                    i4 += i7 < 65536 ? 1 : 2;
                                    i3 += 4;
                                    i5 = i2;
                                } else {
                                    if (i5 == 64) {
                                        break;
                                    }
                                    i4 = -1;
                                    break;
                                }
                            } else {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                        } else {
                            if (i5 == 64) {
                                break;
                            }
                            i4 = -1;
                            break;
                        }
                    } else {
                        int i8 = i3 + 2;
                        if (length > i8) {
                            byte b7 = bArr[i3 + 1];
                            if ((b7 & h.a.f24176e) != 128) {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                            byte b8 = bArr[i8];
                            if ((b8 & h.a.f24176e) != 128) {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                            int i9 = ((b8 ^ (-123008)) ^ (b7 << 6)) ^ (b3 << 12);
                            if (i9 >= 2048) {
                                if (55296 <= i9 && i9 < 57344) {
                                    if (i5 == 64) {
                                        break;
                                    }
                                    i4 = -1;
                                    break;
                                }
                                i2 = i5 + 1;
                                if (i5 == 64) {
                                    break;
                                }
                                if ((i9 != 10 && i9 != 13 && ((i9 >= 0 && i9 < 32) || (127 <= i9 && i9 < 160))) || i9 == 65533) {
                                    i4 = -1;
                                    break;
                                }
                                i4 += i9 < 65536 ? 1 : 2;
                                i3 += 3;
                                i5 = i2;
                            } else {
                                if (i5 == 64) {
                                    break;
                                }
                                i4 = -1;
                                break;
                            }
                        } else {
                            if (i5 == 64) {
                                break;
                            }
                            i4 = -1;
                            break;
                        }
                    }
                } else {
                    int i10 = i3 + 1;
                    if (length > i10) {
                        byte b9 = bArr[i10];
                        if ((b9 & h.a.f24176e) != 128) {
                            if (i5 == 64) {
                                break;
                            }
                            i4 = -1;
                            break;
                        }
                        int i11 = (b9 ^ 3968) ^ (b3 << 6);
                        if (i11 >= 128) {
                            i2 = i5 + 1;
                            if (i5 == 64) {
                                break;
                            }
                            if ((i11 != 10 && i11 != 13 && ((i11 >= 0 && i11 < 32) || (127 <= i11 && i11 < 160))) || i11 == 65533) {
                                i4 = -1;
                                break;
                            }
                            i4 += i11 < 65536 ? 1 : 2;
                            i3 += 2;
                            i5 = i2;
                        } else {
                            if (i5 == 64) {
                                break;
                            }
                            i4 = -1;
                            break;
                        }
                    } else {
                        if (i5 == 64) {
                            break;
                        }
                        i4 = -1;
                        break;
                    }
                }
            } else {
                int i12 = i5 + 1;
                if (i5 == 64) {
                    break;
                }
                if ((b3 == 10 || b3 == 13 || ((b3 < 0 || b3 >= 32) && (127 > b3 || b3 >= 160))) && b3 != 65533) {
                    i4 += b3 < 65536 ? 1 : 2;
                    i3++;
                    while (true) {
                        i5 = i12;
                        if (i3 < length && (b2 = bArr[i3]) >= 0) {
                            i3++;
                            i12 = i5 + 1;
                            if (i5 == 64) {
                                break loop0;
                            }
                            if ((b2 == 10 || b2 == 13 || ((b2 < 0 || b2 >= 32) && (127 > b2 || b2 >= 160))) && b2 != 65533) {
                                i4 += b2 < 65536 ? 1 : 2;
                            }
                        }
                    }
                }
                i4 = -1;
                break;
            }
        }
        if (i4 != -1) {
            String strC = byteString.C();
            String strJ = StringsKt.J(StringsKt.J(StringsKt.J(strC.substring(0, i4), "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (i4 >= strC.length()) {
                return d21.d(']', "[text=", strJ);
            }
            return "[size=" + byteString.data.length + " text=" + strJ + "…]";
        }
        if (byteString.data.length <= 64) {
            return "[hex=" + byteString.f() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(byteString.data.length);
        sb.append(" hex=");
        byte[] bArr2 = byteString.data;
        if (64 > bArr2.length) {
            b21.n(tr.k(new StringBuilder("endIndex > length("), byteString.data.length, ')'));
            return null;
        }
        if (64 != bArr2.length) {
            byteString = new ByteString(ArraysKt.o(bArr2, 0, 64));
        }
        sb.append(byteString.f());
        sb.append("…]");
        return sb.toString();
    }

    public boolean v(int i2, int i3, byte[] bArr, int i4) {
        bArr.getClass();
        if (i2 < 0) {
            return false;
        }
        byte[] bArr2 = this.data;
        return i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && SegmentedByteString.a(i2, bArr2, i3, bArr, i4);
    }

    public boolean w(int i2, ByteString byteString, int i3) {
        byteString.getClass();
        return byteString.v(0, i2, this.data, i3);
    }

    public String x(Charset charset) {
        charset.getClass();
        return new String(this.data, charset);
    }

    public ByteString y(int i2, int i3) {
        if (i2 < 0) {
            md.n("beginIndex < 0");
            return null;
        }
        byte[] bArr = this.data;
        if (i3 > bArr.length) {
            b21.n(tr.k(new StringBuilder("endIndex > length("), this.data.length, ')'));
            return null;
        }
        if (i3 - i2 >= 0) {
            return (i2 == 0 && i3 == bArr.length) ? this : new ByteString(ArraysKt.o(bArr, i2, i3));
        }
        md.n("endIndex < beginIndex");
        return null;
    }
}

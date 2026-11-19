package okhttp3.internal.http2;

import com.appsflyer.sdk_base.referrer.Payload;
import com.linkplay.network.SecurityConstants;
import defpackage.az;
import defpackage.mt;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http2/Hpack;", "", "Reader", "Writer", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Hpack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Header[] f77210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f77211b;

    static {
        Header header = new Header(Header.f77206i, "");
        ByteString byteString = Header.f77204f;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, "POST");
        ByteString byteString2 = Header.g;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.f77205h;
        Header header6 = new Header(byteString3, SecurityConstants.SECURITY_NONE);
        Header header7 = new Header(byteString3, SecurityConstants.SECURITY_HTTPS);
        ByteString byteString4 = Header.f77203e;
        Header[] headerArr = {header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header(LVConstants.USER_AGENT, ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        f77210a = headerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61, 1.0f);
        for (int i2 = 0; i2 < 61; i2++) {
            if (!linkedHashMap.containsKey(headerArr[i2].f77207a)) {
                linkedHashMap.put(headerArr[i2].f77207a, Integer.valueOf(i2));
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        f77211b = mapUnmodifiableMap;
    }

    public static void a(ByteString byteString) throws IOException {
        byteString.getClass();
        int iE = byteString.e();
        for (int i2 = 0; i2 < iE; i2++) {
            byte bJ = byteString.j(i2);
            if (65 <= bJ && bJ < 91) {
                az.o("PROTOCOL_ERROR response malformed: mixed case name: ".concat(byteString.C()));
                return;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", "", "", "headerTableSizeSetting", "", "useCompression", "Lokio/Buffer;", "out", "<init>", "(IZLokio/Buffer;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f77219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Buffer f77220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f77221c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f77222e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Header[] f77223f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f77224h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f77225i;

        public Writer(int i2, boolean z, Buffer buffer) {
            buffer.getClass();
            this.f77219a = z;
            this.f77220b = buffer;
            this.f77221c = Integer.MAX_VALUE;
            this.f77222e = i2;
            this.f77223f = new Header[8];
            this.g = 7;
        }

        public final void a(int i2) {
            int i3;
            if (i2 > 0) {
                int length = this.f77223f.length - 1;
                int i4 = 0;
                while (true) {
                    i3 = this.g;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    Header header = this.f77223f[length];
                    header.getClass();
                    i2 -= header.f77209c;
                    int i5 = this.f77225i;
                    Header header2 = this.f77223f[length];
                    header2.getClass();
                    this.f77225i = i5 - header2.f77209c;
                    this.f77224h--;
                    i4++;
                    length--;
                }
                Header[] headerArr = this.f77223f;
                int i6 = i3 + 1;
                System.arraycopy(headerArr, i6, headerArr, i6 + i4, this.f77224h);
                Header[] headerArr2 = this.f77223f;
                int i7 = this.g + 1;
                Arrays.fill(headerArr2, i7, i7 + i4, (Object) null);
                this.g += i4;
            }
        }

        public final void b(Header header) {
            int i2 = header.f77209c;
            int i3 = this.f77222e;
            if (i2 > i3) {
                Header[] headerArr = this.f77223f;
                ArraysKt.r(headerArr, 0, headerArr.length, null);
                this.g = this.f77223f.length - 1;
                this.f77224h = 0;
                this.f77225i = 0;
                return;
            }
            a((this.f77225i + i2) - i3);
            int i4 = this.f77224h + 1;
            Header[] headerArr2 = this.f77223f;
            if (i4 > headerArr2.length) {
                Header[] headerArr3 = new Header[headerArr2.length * 2];
                System.arraycopy(headerArr2, 0, headerArr3, headerArr2.length, headerArr2.length);
                this.g = this.f77223f.length - 1;
                this.f77223f = headerArr3;
            }
            int i5 = this.g;
            this.g = i5 - 1;
            this.f77223f[i5] = header;
            this.f77224h++;
            this.f77225i += i2;
        }

        public final void c(ByteString byteString) throws EOFException {
            byteString.getClass();
            boolean z = this.f77219a;
            Buffer buffer = this.f77220b;
            if (z) {
                int[] iArr = Huffman.f77281a;
                int iE = byteString.e();
                long j2 = 0;
                for (int i2 = 0; i2 < iE; i2++) {
                    byte bJ = byteString.j(i2);
                    byte[] bArr = _UtilCommonKt.f77016a;
                    j2 += (long) Huffman.f77282b[bJ & 255];
                }
                if (((int) ((j2 + 7) >> 3)) < byteString.e()) {
                    Buffer buffer2 = new Buffer();
                    int[] iArr2 = Huffman.f77281a;
                    int iE2 = byteString.e();
                    long j3 = 0;
                    int i3 = 0;
                    for (int i4 = 0; i4 < iE2; i4++) {
                        byte bJ2 = byteString.j(i4);
                        byte[] bArr2 = _UtilCommonKt.f77016a;
                        int i5 = bJ2 & 255;
                        int i6 = Huffman.f77281a[i5];
                        byte b2 = Huffman.f77282b[i5];
                        j3 = (j3 << b2) | ((long) i6);
                        i3 += b2;
                        while (i3 >= 8) {
                            i3 -= 8;
                            buffer2.m0((int) (j3 >> i3));
                        }
                    }
                    if (i3 > 0) {
                        buffer2.m0((int) ((255 >>> i3) | (j3 << (8 - i3))));
                    }
                    ByteString byteStringN0 = buffer2.N0(buffer2.f77390c);
                    e(byteStringN0.e(), CertificateBody.profileType, 128);
                    buffer.l0(byteStringN0);
                    return;
                }
            }
            e(byteString.e(), CertificateBody.profileType, 0);
            buffer.l0(byteString);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0069  */
        public final void d(ArrayList arrayList) throws EOFException {
            int length;
            int length2;
            if (this.d) {
                int i2 = this.f77221c;
                if (i2 < this.f77222e) {
                    e(i2, 31, 32);
                }
                this.d = false;
                this.f77221c = Integer.MAX_VALUE;
                e(this.f77222e, 31, 32);
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                Header header = (Header) arrayList.get(i3);
                ByteString byteStringB = header.f77207a.B();
                ByteString byteString = header.f77208b;
                Integer num = (Integer) Hpack.f77211b.get(byteStringB);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (2 > length2 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else {
                        Header[] headerArr = Hpack.f77210a;
                        if (Intrinsics.c(headerArr[iIntValue].f77208b, byteString)) {
                            length = length2;
                        } else if (Intrinsics.c(headerArr[length2].f77208b, byteString)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.f77223f.length;
                    for (int i4 = this.g + 1; i4 < length3; i4++) {
                        Header header2 = this.f77223f[i4];
                        header2.getClass();
                        if (Intrinsics.c(header2.f77207a, byteStringB)) {
                            Header header3 = this.f77223f[i4];
                            header3.getClass();
                            if (Intrinsics.c(header3.f77208b, byteString)) {
                                length2 = Hpack.f77210a.length + (i4 - this.g);
                                break;
                            } else if (length == -1) {
                                length = (i4 - this.g) + Hpack.f77210a.length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    e(length2, CertificateBody.profileType, 128);
                } else if (length == -1) {
                    this.f77220b.m0(64);
                    c(byteStringB);
                    c(byteString);
                    b(header);
                } else {
                    ByteString byteString2 = Header.d;
                    byteStringB.getClass();
                    byteString2.getClass();
                    if (!byteStringB.w(0, byteString2, byteString2.e()) || Intrinsics.c(Header.f77206i, byteStringB)) {
                        e(length, 63, 64);
                        c(byteString);
                        b(header);
                    } else {
                        e(length, 15, 0);
                        c(byteString);
                    }
                }
            }
        }

        public final void e(int i2, int i3, int i4) {
            Buffer buffer = this.f77220b;
            if (i2 < i3) {
                buffer.m0(i2 | i4);
                return;
            }
            buffer.m0(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                buffer.m0(128 | (i5 & CertificateBody.profileType));
                i5 >>>= 7;
            }
            buffer.m0(i5);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(Buffer buffer) {
            this(0, false, buffer, 3, null);
            buffer.getClass();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Writer(int i2, Buffer buffer) {
            this(i2, false, buffer, 2, null);
            buffer.getClass();
        }

        public /* synthetic */ Writer(int i2, boolean z, Buffer buffer, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 4096 : i2, (i3 & 2) != 0 ? true : z, buffer);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", "", "Lokio/Source;", Payload.SOURCE, "", "headerTableSizeSetting", "maxDynamicTableByteCount", "<init>", "(Lokio/Source;II)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Reader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f77212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f77213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f77214c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RealBufferedSource f77215e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Header[] f77216f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f77217h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f77218i;

        public Reader(Source source, int i2, int i3) {
            source.getClass();
            this.f77212a = i2;
            this.f77213b = i3;
            this.f77214c = new ArrayList();
            this.f77215e = new RealBufferedSource(source);
            this.f77216f = new Header[8];
            this.g = 7;
        }

        public final void a(Header header) throws IOException {
            this.f77214c.add(header);
            long jE = this.d + ((long) (header.f77208b.e() + header.f77207a.e()));
            this.d = jE;
            if (jE <= 262144) {
                return;
            }
            az.o("header byte count limit of 262144 exceeded");
        }

        public final int b(int i2) {
            int i3;
            int i4 = 0;
            if (i2 > 0) {
                int length = this.f77216f.length;
                while (true) {
                    length--;
                    i3 = this.g;
                    if (length < i3 || i2 <= 0) {
                        break;
                    }
                    Header header = this.f77216f[length];
                    header.getClass();
                    int i5 = header.f77209c;
                    i2 -= i5;
                    this.f77218i -= i5;
                    this.f77217h--;
                    i4++;
                }
                Header[] headerArr = this.f77216f;
                System.arraycopy(headerArr, i3 + 1, headerArr, i3 + 1 + i4, this.f77217h);
                this.g += i4;
            }
            return i4;
        }

        public final ByteString c(int i2) throws IOException {
            if (i2 >= 0) {
                Header[] headerArr = Hpack.f77210a;
                if (i2 <= headerArr.length - 1) {
                    return headerArr[i2].f77207a;
                }
            }
            int length = this.g + 1 + (i2 - Hpack.f77210a.length);
            if (length >= 0) {
                Header[] headerArr2 = this.f77216f;
                if (length < headerArr2.length) {
                    Header header = headerArr2[length];
                    header.getClass();
                    return header.f77207a;
                }
            }
            mt.e(i2 + 1, "Header index too large ");
            return null;
        }

        public final void d(Header header) throws IOException {
            a(header);
            int i2 = header.f77209c;
            int i3 = this.f77213b;
            if (i2 > i3) {
                Header[] headerArr = this.f77216f;
                ArraysKt.r(headerArr, 0, headerArr.length, null);
                this.g = this.f77216f.length - 1;
                this.f77217h = 0;
                this.f77218i = 0;
                return;
            }
            b((this.f77218i + i2) - i3);
            int i4 = this.f77217h + 1;
            Header[] headerArr2 = this.f77216f;
            if (i4 > headerArr2.length) {
                Header[] headerArr3 = new Header[headerArr2.length * 2];
                System.arraycopy(headerArr2, 0, headerArr3, headerArr2.length, headerArr2.length);
                this.g = this.f77216f.length - 1;
                this.f77216f = headerArr3;
            }
            int i5 = this.g;
            this.g = i5 - 1;
            this.f77216f[i5] = header;
            this.f77217h++;
            this.f77218i += i2;
        }

        public final ByteString e() throws IOException {
            RealBufferedSource realBufferedSource = this.f77215e;
            byte b2 = realBufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.f77016a;
            int i2 = b2 & 255;
            int i3 = 0;
            boolean z = (b2 & 128) == 128;
            long jF = f(i2, CertificateBody.profileType);
            if (this.d + jF > 262144) {
                az.o("header byte count limit of 262144 exceeded");
                return null;
            }
            if (!z) {
                return realBufferedSource.N0(jF);
            }
            Buffer buffer = new Buffer();
            int[] iArr = Huffman.f77281a;
            realBufferedSource.getClass();
            Huffman.Node node = Huffman.f77283c;
            Huffman.Node node2 = node;
            int i4 = 0;
            for (long j2 = 0; j2 < jF; j2++) {
                byte b3 = realBufferedSource.readByte();
                byte[] bArr2 = _UtilCommonKt.f77016a;
                i3 = (i3 << 8) | (b3 & 255);
                i4 += 8;
                while (i4 >= 8) {
                    Huffman.Node[] nodeArr = node2.f77284a;
                    nodeArr.getClass();
                    node2 = nodeArr[(i3 >>> (i4 - 8)) & 255];
                    node2.getClass();
                    if (node2.f77284a == null) {
                        buffer.m0(node2.f77285b);
                        i4 -= node2.f77286c;
                        node2 = node;
                    } else {
                        i4 -= 8;
                    }
                }
            }
            while (i4 > 0) {
                Huffman.Node[] nodeArr2 = node2.f77284a;
                nodeArr2.getClass();
                Huffman.Node node3 = nodeArr2[(i3 << (8 - i4)) & 255];
                node3.getClass();
                Huffman.Node[] nodeArr3 = node3.f77284a;
                int i5 = node3.f77286c;
                if (nodeArr3 != null || i5 > i4) {
                    break;
                }
                buffer.m0(node3.f77285b);
                i4 -= i5;
                node2 = node;
            }
            return buffer.N0(buffer.f77390c);
        }

        public final int f(int i2, int i3) throws IOException {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            long j2 = i3;
            int i5 = 0;
            int i6 = 0;
            while (i5 != 5) {
                byte b2 = this.f77215e.readByte();
                byte[] bArr = _UtilCommonKt.f77016a;
                i5++;
                long j3 = ((long) (b2 & 127)) << i6;
                if (j3 > 2147483647L - j2) {
                    az.o("HPACK integer overflow");
                    return 0;
                }
                j2 += j3;
                if ((b2 & 128) == 0) {
                    return (int) j2;
                }
                i6 += 7;
            }
            az.o("HPACK integer overflow");
            return 0;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Reader(Source source, int i2) {
            this(source, i2, 0, 4, null);
            source.getClass();
        }

        public /* synthetic */ Reader(Source source, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(source, i2, (i4 & 4) != 0 ? i2 : i3);
        }
    }
}

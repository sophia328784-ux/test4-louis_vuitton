package okhttp3.internal.http2;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.cj;
import defpackage.dt;
import defpackage.mt;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http2/Http2Reader;", "Ljava/io/Closeable;", "Lokio/BufferedSource;", Payload.SOURCE, "", "client", "<init>", "(Lokio/BufferedSource;Z)V", "ContinuationSource", "Handler", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http2Reader implements Closeable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f77253f = new Companion(null);
    public static final Logger g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSource f77254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f77255c;
    public final ContinuationSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Hpack.Reader f77256e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static int a(int i2, int i3, int i4) throws IOException {
            if ((i3 & 8) != 0) {
                i2--;
            }
            if (i4 <= i2) {
                return i2 - i4;
            }
            az.o(o60.h(i4, i2, "PROTOCOL_ERROR padding ", " > remaining length "));
            return 0;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Lokio/Source;", "Lokio/BufferedSource;", Payload.SOURCE, "<init>", "(Lokio/BufferedSource;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ContinuationSource implements Source {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BufferedSource f77257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f77258c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f77259e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f77260f;

        public ContinuationSource(BufferedSource bufferedSource) {
            bufferedSource.getClass();
            this.f77257b = bufferedSource;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j2) throws IOException {
            int i2;
            int i3;
            buffer.getClass();
            do {
                int i4 = this.f77259e;
                BufferedSource bufferedSource = this.f77257b;
                if (i4 == 0) {
                    bufferedSource.skip(this.f77260f);
                    this.f77260f = 0;
                    if ((this.f77258c & 4) == 0) {
                        i2 = this.d;
                        int iO = _UtilCommonKt.o(bufferedSource);
                        this.f77259e = iO;
                        int i5 = bufferedSource.readByte() & 255;
                        this.f77258c = bufferedSource.readByte() & 255;
                        Http2Reader.f77253f.getClass();
                        Logger logger = Http2Reader.g;
                        if (logger.isLoggable(Level.FINE)) {
                            ByteString byteString = Http2.f77226a;
                            logger.fine(Http2.b(this.d, iO, true, i5, this.f77258c));
                        }
                        i3 = bufferedSource.readInt() & Integer.MAX_VALUE;
                        this.d = i3;
                        if (i5 != 9) {
                            az.o(cj.d(i5, " != TYPE_CONTINUATION"));
                            return 0L;
                        }
                    }
                } else {
                    long j3 = bufferedSource.read(buffer, Math.min(j2, i4));
                    if (j3 != -1) {
                        this.f77259e -= (int) j3;
                        return j3;
                    }
                }
                return -1L;
            } while (i3 == i2);
            az.o("TYPE_CONTINUATION streamId changed");
            return 0L;
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77426c() {
            return this.f77257b.getF77426c();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Handler;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Handler {
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        logger.getClass();
        g = logger;
    }

    public Http2Reader(BufferedSource bufferedSource, boolean z) {
        bufferedSource.getClass();
        this.f77254b = bufferedSource;
        this.f77255c = z;
        ContinuationSource continuationSource = new ContinuationSource(bufferedSource);
        this.d = continuationSource;
        this.f77256e = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:230:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:75:0x011b  */
    /* JADX WARN: Code duplicated, block: B:95:0x014c  */
    public final boolean c(boolean z, Http2Connection.ReaderRunnable readerRunnable) throws Exception {
        ErrorCode errorCode;
        int i2;
        ByteString byteStringN0;
        Http2Connection http2Connection;
        Logger logger = g;
        Companion companion = f77253f;
        BufferedSource bufferedSource = this.f77254b;
        try {
            bufferedSource.D0(9L);
            int iO = _UtilCommonKt.o(bufferedSource);
            if (iO > 16384) {
                az.o(pq0.k(iO, "FRAME_SIZE_ERROR: "));
                return false;
            }
            int i3 = bufferedSource.readByte() & 255;
            byte b2 = bufferedSource.readByte();
            int i4 = b2 & 255;
            int i5 = bufferedSource.readInt() & Integer.MAX_VALUE;
            if (i3 != 8 && logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.b(i5, iO, true, i3, i4));
            }
            if (z && i3 != 4) {
                az.y(Http2.a(i3), "Expected a SETTINGS frame but was ");
                return false;
            }
            ErrorCode errorCode2 = null;
            switch (i3) {
                case 0:
                    if (i5 == 0) {
                        az.o("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                        return false;
                    }
                    boolean z2 = (b2 & 1) != 0;
                    if ((b2 & 32) != 0) {
                        az.o("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                        return false;
                    }
                    int i6 = (b2 & 8) != 0 ? bufferedSource.readByte() & 255 : 0;
                    companion.getClass();
                    readerRunnable.a(z2, i5, bufferedSource, Companion.a(iO, i4, i6));
                    bufferedSource.skip(i6);
                    return true;
                case 1:
                    if (i5 == 0) {
                        az.o("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                        return false;
                    }
                    boolean z3 = (b2 & 1) != 0;
                    int i7 = (b2 & 8) != 0 ? bufferedSource.readByte() & 255 : 0;
                    if ((b2 & 32) != 0) {
                        g(readerRunnable, i5);
                        iO -= 5;
                    }
                    companion.getClass();
                    readerRunnable.b(e(Companion.a(iO, i4, i7), i7, i4, i5), i5, z3);
                    return true;
                case 2:
                    if (iO != 5) {
                        az.o(n00.m(iO, "TYPE_PRIORITY length: ", " != 5"));
                        return false;
                    }
                    if (i5 != 0) {
                        g(readerRunnable, i5);
                        return true;
                    }
                    az.o("TYPE_PRIORITY streamId == 0");
                    return false;
                case 3:
                    if (iO != 4) {
                        az.o(n00.m(iO, "TYPE_RST_STREAM length: ", " != 4"));
                        return false;
                    }
                    if (i5 == 0) {
                        az.o("TYPE_RST_STREAM streamId == 0");
                        return false;
                    }
                    int i8 = bufferedSource.readInt();
                    ErrorCode.INSTANCE.getClass();
                    ErrorCode[] errorCodeArrValues = ErrorCode.values();
                    int length = errorCodeArrValues.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 < length) {
                            errorCode = errorCodeArrValues[i9];
                            if (errorCode.getHttpCode() != i8) {
                                i9++;
                            }
                        } else {
                            errorCode = null;
                        }
                    }
                    if (errorCode != null) {
                        readerRunnable.e(i5, errorCode);
                        return true;
                    }
                    az.o(pq0.k(i8, "TYPE_RST_STREAM unexpected error code: "));
                    return false;
                case 4:
                    if (i5 != 0) {
                        az.o("TYPE_SETTINGS streamId != 0");
                        return false;
                    }
                    if ((b2 & 1) != 0) {
                        if (iO != 0) {
                            az.o("FRAME_SIZE_ERROR ack frame should be empty!");
                            return false;
                        }
                        return true;
                    }
                    if (iO % 6 != 0) {
                        az.o(pq0.k(iO, "TYPE_SETTINGS length % 6 != 0: "));
                        return false;
                    }
                    Settings settings = new Settings();
                    IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, iO), 6);
                    int i10 = intProgressionI.f71951b;
                    int i11 = intProgressionI.f71952c;
                    int i12 = intProgressionI.d;
                    if ((i12 > 0 && i10 <= i11) || (i12 < 0 && i11 <= i10)) {
                        while (true) {
                            short s = bufferedSource.readShort();
                            byte[] bArr = _UtilCommonKt.f77016a;
                            int i13 = s & HPKE.aead_EXPORT_ONLY;
                            i2 = bufferedSource.readInt();
                            if (i13 != 2) {
                                if (i13 != 4) {
                                    if (i13 == 5 && (i2 < 16384 || i2 > 16777215)) {
                                    }
                                } else if (i2 < 0) {
                                    az.o("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                    return false;
                                }
                            } else if (i2 != 0 && i2 != 1) {
                                az.o("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                return false;
                            }
                            settings.b(i13, i2);
                            if (i10 != i11) {
                                i10 += i12;
                            }
                        }
                        az.o(pq0.k(i2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
                        return false;
                    }
                    Http2Connection http2Connection2 = readerRunnable.f77245c;
                    TaskQueue.b(http2Connection2.f77235j, n00.r(http2Connection2.f77231e, " applyAndAckSettings", new StringBuilder()), 0L, new dt(readerRunnable, settings, 24), 6);
                    return true;
                case 5:
                    if (i5 == 0) {
                        az.o("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                        return false;
                    }
                    int i14 = (b2 & 8) != 0 ? bufferedSource.readByte() & 255 : 0;
                    int i15 = bufferedSource.readInt() & Integer.MAX_VALUE;
                    companion.getClass();
                    readerRunnable.d(i15, e(Companion.a(iO - 4, i4, i14), i14, i4, i5));
                    return true;
                case 6:
                    if (iO != 8) {
                        az.o(pq0.k(iO, "TYPE_PING length != 8: "));
                        return false;
                    }
                    if (i5 == 0) {
                        readerRunnable.c(bufferedSource.readInt(), bufferedSource.readInt(), (b2 & 1) != 0);
                        return true;
                    }
                    az.o("TYPE_PING streamId != 0");
                    return false;
                case 7:
                    if (iO < 8) {
                        az.o(pq0.k(iO, "TYPE_GOAWAY length < 8: "));
                        return false;
                    }
                    if (i5 != 0) {
                        az.o("TYPE_GOAWAY streamId != 0");
                        return false;
                    }
                    int i16 = bufferedSource.readInt();
                    int i17 = bufferedSource.readInt();
                    int i18 = iO - 8;
                    ErrorCode.INSTANCE.getClass();
                    for (ErrorCode errorCode3 : ErrorCode.values()) {
                        if (errorCode3.getHttpCode() == i17) {
                            errorCode2 = errorCode3;
                            if (errorCode2 != null) {
                                az.o(pq0.k(i17, "TYPE_GOAWAY unexpected error code: "));
                                return false;
                            }
                            byteStringN0 = ByteString.f77399f;
                            if (i18 > 0) {
                                byteStringN0 = bufferedSource.N0(i18);
                            }
                            byteStringN0.getClass();
                            byteStringN0.e();
                            http2Connection = readerRunnable.f77245c;
                            synchronized (http2Connection) {
                                Object[] array = http2Connection.d.values().toArray(new Http2Stream[0]);
                                http2Connection.f77233h = true;
                            }
                            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                                if (http2Stream.f77261b <= i16 && http2Stream.h()) {
                                    ErrorCode errorCode4 = ErrorCode.REFUSED_STREAM;
                                    errorCode4.getClass();
                                    synchronized (http2Stream) {
                                        if (http2Stream.g() == null) {
                                            http2Stream.m = errorCode4;
                                            http2Stream.notifyAll();
                                        }
                                        break;
                                    }
                                    readerRunnable.f77245c.e(http2Stream.f77261b);
                                }
                            }
                            return true;
                        }
                    }
                    if (errorCode2 != null) {
                        az.o(pq0.k(i17, "TYPE_GOAWAY unexpected error code: "));
                        return false;
                    }
                    byteStringN0 = ByteString.f77399f;
                    if (i18 > 0) {
                        byteStringN0 = bufferedSource.N0(i18);
                    }
                    byteStringN0.getClass();
                    byteStringN0.e();
                    http2Connection = readerRunnable.f77245c;
                    synchronized (http2Connection) {
                        Object[] array2 = http2Connection.d.values().toArray(new Http2Stream[0]);
                        http2Connection.f77233h = true;
                        while (i < r2) {
                            if (http2Stream.f77261b <= i16) {
                            }
                        }
                        return true;
                    }
                case 8:
                    try {
                        if (iO != 4) {
                            throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + iO);
                        }
                        long j2 = 2147483647L & ((long) bufferedSource.readInt());
                        if (j2 == 0) {
                            throw new IOException("windowSizeIncrement was 0");
                        }
                        if (logger.isLoggable(Level.FINE)) {
                            logger.fine(Http2.c(j2, i5, iO, true));
                        }
                        Http2Connection http2Connection3 = readerRunnable.f77245c;
                        if (i5 == 0) {
                            synchronized (http2Connection3) {
                                http2Connection3.x += j2;
                                http2Connection3.notifyAll();
                            }
                            return true;
                        }
                        Http2Stream http2StreamD = http2Connection3.d(i5);
                        if (http2StreamD != null) {
                            synchronized (http2StreamD) {
                                http2StreamD.f77264f += j2;
                                if (j2 > 0) {
                                    http2StreamD.notifyAll();
                                }
                                break;
                            }
                            return true;
                        }
                        return true;
                    } catch (Exception e2) {
                        logger.fine(Http2.b(i5, iO, true, 8, i4));
                        throw e2;
                    }
                default:
                    bufferedSource.skip(iO);
                    return true;
            }
        } catch (EOFException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f77254b.close();
    }

    public final void d(Http2Connection.ReaderRunnable readerRunnable) throws IOException {
        if (this.f77255c) {
            if (c(true, readerRunnable)) {
                return;
            }
            az.o("Required SETTINGS preface not received");
            return;
        }
        ByteString byteString = Http2.f77226a;
        ByteString byteStringN0 = this.f77254b.N0(byteString.data.length);
        Level level = Level.FINE;
        Logger logger = g;
        if (logger.isLoggable(level)) {
            logger.fine(_UtilJvmKt.d("<< CONNECTION " + byteStringN0.f(), new Object[0]));
        }
        if (byteString.equals(byteStringN0)) {
            return;
        }
        az.o("Expected a connection header but was ".concat(byteStringN0.C()));
    }

    public final List e(int i2, int i3, int i4, int i5) throws IOException {
        ContinuationSource continuationSource = this.d;
        continuationSource.f77259e = i2;
        continuationSource.f77260f = i3;
        continuationSource.f77258c = i4;
        continuationSource.d = i5;
        Hpack.Reader reader = this.f77256e;
        RealBufferedSource realBufferedSource = reader.f77215e;
        while (!realBufferedSource.Z0()) {
            byte b2 = realBufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.f77016a;
            int i6 = b2 & 255;
            if (i6 == 128) {
                az.o("index == 0");
                return null;
            }
            if ((b2 & 128) == 128) {
                int iF = reader.f(i6, CertificateBody.profileType);
                int i7 = iF - 1;
                if (i7 >= 0) {
                    Header[] headerArr = Hpack.f77210a;
                    if (i7 <= headerArr.length - 1) {
                        reader.a(headerArr[i7]);
                    }
                }
                int length = reader.g + 1 + (i7 - Hpack.f77210a.length);
                if (length >= 0) {
                    Header[] headerArr2 = reader.f77216f;
                    if (length < headerArr2.length) {
                        Header header = headerArr2[length];
                        header.getClass();
                        reader.a(header);
                    }
                }
                az.o(pq0.k(iF, "Header index too large "));
                return null;
            }
            if (i6 == 64) {
                Header[] headerArr3 = Hpack.f77210a;
                ByteString byteStringE = reader.e();
                Hpack.a(byteStringE);
                reader.d(new Header(byteStringE, reader.e()));
            } else if ((b2 & 64) == 64) {
                reader.d(new Header(reader.c(reader.f(i6, 63) - 1), reader.e()));
            } else if ((b2 & 32) == 32) {
                int iF2 = reader.f(i6, 31);
                reader.f77213b = iF2;
                if (iF2 < 0 || iF2 > reader.f77212a) {
                    mt.e(reader.f77213b, "Invalid dynamic table size update ");
                    return null;
                }
                int i8 = reader.f77218i;
                if (iF2 < i8) {
                    if (iF2 == 0) {
                        Header[] headerArr4 = reader.f77216f;
                        ArraysKt.r(headerArr4, 0, headerArr4.length, null);
                        reader.g = reader.f77216f.length - 1;
                        reader.f77217h = 0;
                        reader.f77218i = 0;
                    } else {
                        reader.b(i8 - iF2);
                    }
                }
            } else if (i6 == 16 || i6 == 0) {
                Header[] headerArr5 = Hpack.f77210a;
                ByteString byteStringE2 = reader.e();
                Hpack.a(byteStringE2);
                reader.a(new Header(byteStringE2, reader.e()));
            } else {
                reader.a(new Header(reader.c(reader.f(i6, 15) - 1), reader.e()));
            }
        }
        ArrayList arrayList = reader.f77214c;
        List listY0 = CollectionsKt.y0(arrayList);
        arrayList.clear();
        reader.d = 0L;
        return listY0;
    }

    public final void g(Http2Connection.ReaderRunnable readerRunnable, int i2) {
        BufferedSource bufferedSource = this.f77254b;
        bufferedSource.readInt();
        bufferedSource.readByte();
        byte[] bArr = _UtilCommonKt.f77016a;
    }
}

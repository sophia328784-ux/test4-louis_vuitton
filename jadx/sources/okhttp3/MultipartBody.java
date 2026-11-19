package okhttp3;

import defpackage.md;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\u000b\f\rB'\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "Lokio/ByteString;", "boundaryByteString", "Lokhttp3/MediaType;", "type", "", "Lokhttp3/MultipartBody$Part;", "parts", "<init>", "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V", "Part", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MultipartBody extends RequestBody {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final MediaType f76938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final MediaType f76939i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f76940j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f76941k;
    public static final byte[] l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f76942c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaType f76943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f76944f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000b¨\u0006\u000e"}, d2 = {"Lokhttp3/MultipartBody$Companion;", "", "Lokhttp3/MediaType;", "MIXED", "Lokhttp3/MediaType;", "ALTERNATIVE", "DIGEST", "PARALLEL", "FORM", "", "COLONSPACE", "[B", "CRLF", "DASHDASH", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(String str, StringBuilder sb) {
            str.getClass();
            sb.append('\"');
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt != '\"') {
                    sb.append(cCharAt);
                } else {
                    sb.append("%22");
                }
            }
            sb.append('\"');
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/MultipartBody$Part;", "", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Part {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Companion f76948c = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Headers f76949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RequestBody f76950b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/MultipartBody$Part$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public static Part a(Headers headers, RequestBody requestBody) {
                requestBody.getClass();
                if (headers.a("Content-Type") != null) {
                    md.n("Unexpected header: Content-Type");
                    return null;
                }
                if (headers.a("Content-Length") == null) {
                    return new Part(headers, requestBody, null);
                }
                md.n("Unexpected header: Content-Length");
                return null;
            }

            public static Part b(String str, String str2, RequestBody requestBody) {
                str.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                MultipartBody.g.getClass();
                Companion.a(str, sb);
                if (str2 != null) {
                    sb.append("; filename=");
                    Companion.a(str2, sb);
                }
                String string = sb.toString();
                Headers.Builder builder = new Headers.Builder();
                builder.c("Content-Disposition", string);
                return a(builder.d(), requestBody);
            }
        }

        public Part(Headers headers, RequestBody requestBody, DefaultConstructorMarker defaultConstructorMarker) {
            this.f76949a = headers;
            this.f76950b = requestBody;
        }
    }

    static {
        MediaType.f76933e.getClass();
        f76938h = MediaType.Companion.a("multipart/mixed");
        MediaType.Companion.a("multipart/alternative");
        MediaType.Companion.a("multipart/digest");
        MediaType.Companion.a("multipart/parallel");
        f76939i = MediaType.Companion.a("multipart/form-data");
        f76940j = new byte[]{58, 32};
        f76941k = new byte[]{13, 10};
        l = new byte[]{45, 45};
    }

    public MultipartBody(ByteString byteString, MediaType mediaType, List<Part> list) {
        byteString.getClass();
        mediaType.getClass();
        list.getClass();
        this.f76942c = byteString;
        this.d = list;
        MediaType.Companion companion = MediaType.f76933e;
        String str = mediaType + "; boundary=" + byteString.C();
        companion.getClass();
        this.f76943e = MediaType.Companion.a(str);
        this.f76944f = -1L;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        long j2 = this.f76944f;
        if (j2 != -1) {
            return j2;
        }
        long jF = f(null, true);
        this.f76944f = jF;
        return jF;
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: b, reason: from getter */
    public final MediaType getF76943e() {
        return this.f76943e;
    }

    @Override // okhttp3.RequestBody
    public final boolean d() {
        List list = this.d;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Part) it.next()).f76950b.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // okhttp3.RequestBody
    public final void e(BufferedSink bufferedSink) {
        f(bufferedSink, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long f(BufferedSink bufferedSink, boolean z) {
        Buffer buffer;
        BufferedSink buffer2;
        if (z) {
            buffer2 = new Buffer();
            buffer = buffer2;
        } else {
            buffer = 0;
            buffer2 = bufferedSink;
        }
        List list = this.d;
        int size = list.size();
        long j2 = 0;
        int i2 = 0;
        while (true) {
            ByteString byteString = this.f76942c;
            byte[] bArr = l;
            byte[] bArr2 = f76941k;
            if (i2 >= size) {
                buffer2.getClass();
                buffer2.write(bArr);
                buffer2.G1(byteString);
                buffer2.write(bArr);
                buffer2.write(bArr2);
                if (!z) {
                    return j2;
                }
                buffer.getClass();
                long j3 = j2 + buffer.f77390c;
                buffer.h();
                return j3;
            }
            Part part = (Part) list.get(i2);
            Headers headers = part.f76949a;
            RequestBody requestBody = part.f76950b;
            buffer2.getClass();
            buffer2.write(bArr);
            buffer2.G1(byteString);
            buffer2.write(bArr2);
            if (headers != null) {
                int size2 = headers.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    buffer2.r0(headers.f(i3)).write(f76940j).r0(headers.m(i3)).write(bArr2);
                }
            }
            MediaType f76943e = requestBody.getF76943e();
            if (f76943e != null) {
                buffer2.r0("Content-Type: ").r0(f76943e.f76935a).write(bArr2);
            }
            long jA = requestBody.a();
            if (jA == -1 && z) {
                buffer.getClass();
                buffer.h();
                return -1L;
            }
            buffer2.write(bArr2);
            if (z) {
                j2 += jA;
            } else {
                requestBody.e(buffer2);
            }
            buffer2.write(bArr2);
            i2++;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/MultipartBody$Builder;", "", "", "boundary", "<init>", "(Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteString f76945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MediaType f76946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f76947c;

        public Builder(String str) {
            str.getClass();
            ByteString.f77398e.getClass();
            this.f76945a = ByteString.Companion.c(str);
            this.f76946b = MultipartBody.f76938h;
            this.f76947c = new ArrayList();
        }

        public final void a(String str, String str2) {
            str2.getClass();
            Part.f76948c.getClass();
            RequestBody.f76978a.getClass();
            this.f76947c.add(Part.Companion.b(str, null, RequestBody.Companion.b(str2, null)));
        }

        public final MultipartBody b() {
            ArrayList arrayList = this.f76947c;
            if (arrayList.isEmpty()) {
                md.k("Multipart body must have at least one part.");
                return null;
            }
            return new MultipartBody(this.f76945a, this.f76946b, _UtilJvmKt.j(arrayList));
        }

        public final void c(MediaType mediaType) {
            mediaType.getClass();
            if (Intrinsics.c(mediaType.f76936b, "multipart")) {
                this.f76946b = mediaType;
            } else {
                tg0.n(mediaType, "multipart != ");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i2 & 1) != 0) {
                str = UUID.randomUUID().toString();
                str.getClass();
            }
            this(str);
        }
    }
}

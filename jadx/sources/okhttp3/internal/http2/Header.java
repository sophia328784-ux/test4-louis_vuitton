package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/http2/Header;", "", "Lokio/ByteString;", "name", "value", "<init>", "(Lokio/ByteString;Lokio/ByteString;)V", "", "(Ljava/lang/String;Ljava/lang/String;)V", "(Lokio/ByteString;Ljava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Header {
    public static final ByteString d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteString f77203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ByteString f77204f;
    public static final ByteString g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ByteString f77205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ByteString f77206i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteString f77207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f77208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77209c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http2/Header$Companion;", "", "Lokio/ByteString;", "PSEUDO_PREFIX", "Lokio/ByteString;", "", "RESPONSE_STATUS_UTF8", "Ljava/lang/String;", "TARGET_METHOD_UTF8", "TARGET_PATH_UTF8", "TARGET_SCHEME_UTF8", "TARGET_AUTHORITY_UTF8", "RESPONSE_STATUS", "TARGET_METHOD", "TARGET_PATH", "TARGET_SCHEME", "TARGET_AUTHORITY", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        ByteString.f77398e.getClass();
        d = ByteString.Companion.c(":");
        f77203e = ByteString.Companion.c(":status");
        f77204f = ByteString.Companion.c(":method");
        g = ByteString.Companion.c(":path");
        f77205h = ByteString.Companion.c(":scheme");
        f77206i = ByteString.Companion.c(":authority");
    }

    public Header(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        this.f77207a = byteString;
        this.f77208b = byteString2;
        this.f77209c = byteString2.e() + byteString.e() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return Intrinsics.c(this.f77207a, header.f77207a) && Intrinsics.c(this.f77208b, header.f77208b);
    }

    public final int hashCode() {
        return this.f77208b.hashCode() + (this.f77207a.hashCode() * 31);
    }

    public final String toString() {
        return this.f77207a.C() + ": " + this.f77208b.C();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(ByteString.Companion.c(str), ByteString.Companion.c(str2));
        str.getClass();
        str2.getClass();
        ByteString.f77398e.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(ByteString byteString, String str) {
        this(byteString, ByteString.Companion.c(str));
        byteString.getClass();
        str.getClass();
        ByteString.f77398e.getClass();
    }
}

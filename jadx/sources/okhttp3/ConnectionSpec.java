package okhttp3;

import defpackage.d21;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lokhttp3/ConnectionSpec;", "", "", "isTls", "supportsTlsExtensions", "", "", "cipherSuitesAsString", "tlsVersionsAsString", "<init>", "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectionSpec {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List f76872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List f76873f;
    public static final ConnectionSpec g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ConnectionSpec f76874h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f76875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f76876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f76877c;
    public final String[] d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lokhttp3/ConnectionSpec$Companion;", "", "", "Lokhttp3/CipherSuite;", "RESTRICTED_CIPHER_SUITES", "Ljava/util/List;", "APPROVED_CIPHER_SUITES", "Lokhttp3/ConnectionSpec;", "RESTRICTED_TLS", "Lokhttp3/ConnectionSpec;", "MODERN_TLS", "COMPATIBLE_TLS", "CLEARTEXT", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CipherSuite cipherSuite = CipherSuite.r;
        CipherSuite cipherSuite2 = CipherSuite.s;
        CipherSuite cipherSuite3 = CipherSuite.t;
        CipherSuite cipherSuite4 = CipherSuite.l;
        CipherSuite cipherSuite5 = CipherSuite.n;
        CipherSuite cipherSuite6 = CipherSuite.m;
        CipherSuite cipherSuite7 = CipherSuite.o;
        CipherSuite cipherSuite8 = CipherSuite.q;
        CipherSuite cipherSuite9 = CipherSuite.p;
        List listP = CollectionsKt.P(cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9);
        f76872e = listP;
        List listP2 = CollectionsKt.P(cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.f76868j, CipherSuite.f76869k, CipherSuite.f76866h, CipherSuite.f76867i, CipherSuite.f76865f, CipherSuite.g, CipherSuite.f76864e);
        f76873f = listP2;
        Builder builder = new Builder(true);
        CipherSuite[] cipherSuiteArr = (CipherSuite[]) listP.toArray(new CipherSuite[0]);
        builder.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length));
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        builder.e(tlsVersion, tlsVersion2);
        if (!builder.f76878a) {
            md.n("no TLS extensions for cleartext connections");
            return;
        }
        builder.d = true;
        builder.a();
        Builder builder2 = new Builder(true);
        List list = listP2;
        CipherSuite[] cipherSuiteArr2 = (CipherSuite[]) list.toArray(new CipherSuite[0]);
        builder2.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length));
        builder2.e(tlsVersion, tlsVersion2);
        if (!builder2.f76878a) {
            md.n("no TLS extensions for cleartext connections");
            return;
        }
        builder2.d = true;
        g = builder2.a();
        Builder builder3 = new Builder(true);
        CipherSuite[] cipherSuiteArr3 = (CipherSuite[]) list.toArray(new CipherSuite[0]);
        builder3.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr3, cipherSuiteArr3.length));
        builder3.e(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        if (!builder3.f76878a) {
            md.n("no TLS extensions for cleartext connections");
            return;
        }
        builder3.d = true;
        builder3.a();
        f76874h = new Builder(false).a();
    }

    public ConnectionSpec(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.f76875a = z;
        this.f76876b = z2;
        this.f76877c = strArr;
        this.d = strArr2;
    }

    public final void a(SSLSocket sSLSocket, boolean z) {
        String[] enabledProtocols;
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        enabledCipherSuites.getClass();
        String[] strArr = this.f76877c;
        if (strArr != null) {
            CipherSuite.f76862b.getClass();
            enabledCipherSuites = _UtilCommonKt.l(strArr, enabledCipherSuites, CipherSuite.f76863c);
        }
        String[] strArr2 = this.d;
        if (strArr2 != null) {
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            enabledProtocols2.getClass();
            enabledProtocols = _UtilCommonKt.l(enabledProtocols2, strArr2, ComparisonsKt.c());
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        supportedCipherSuites.getClass();
        CipherSuite.f76862b.getClass();
        CipherSuite$Companion$ORDER_BY_NAME$1 cipherSuite$Companion$ORDER_BY_NAME$1 = CipherSuite.f76863c;
        byte[] bArr = _UtilCommonKt.f77016a;
        cipherSuite$Companion$ORDER_BY_NAME$1.getClass();
        int length = supportedCipherSuites.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (cipherSuite$Companion$ORDER_BY_NAME$1.compare(supportedCipherSuites[i2], "TLS_FALLBACK_SCSV") == 0) {
                break;
            } else {
                i2++;
            }
        }
        if (z && i2 != -1) {
            String str = supportedCipherSuites[i2];
            str.getClass();
            enabledCipherSuites.getClass();
            enabledCipherSuites = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        Builder builder = new Builder(this);
        builder.b((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        builder.d((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        ConnectionSpec connectionSpecA = builder.a();
        if (connectionSpecA.c() != null) {
            sSLSocket.setEnabledProtocols(connectionSpecA.d);
        }
        if (connectionSpecA.b() != null) {
            sSLSocket.setEnabledCipherSuites(connectionSpecA.f76877c);
        }
    }

    public final ArrayList b() {
        String[] strArr = this.f76877c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(CipherSuite.f76862b.b(str));
        }
        return arrayList;
    }

    public final ArrayList c() {
        String[] strArr = this.d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            TlsVersion.INSTANCE.getClass();
            arrayList.add(TlsVersion.Companion.a(str));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        boolean z = connectionSpec.f76875a;
        boolean z2 = this.f76875a;
        if (z2 != z) {
            return false;
        }
        return !z2 || (Arrays.equals(this.f76877c, connectionSpec.f76877c) && Arrays.equals(this.d, connectionSpec.d) && this.f76876b == connectionSpec.f76876b);
    }

    public final int hashCode() {
        if (!this.f76875a) {
            return 17;
        }
        String[] strArr = this.f76877c;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f76876b ? 1 : 0);
    }

    public final String toString() {
        if (!this.f76875a) {
            return "ConnectionSpec()";
        }
        StringBuilder sb = new StringBuilder("ConnectionSpec(cipherSuites=");
        sb.append(Objects.toString(b(), "[all enabled]"));
        sb.append(", tlsVersions=");
        sb.append(Objects.toString(c(), "[all enabled]"));
        sb.append(", supportsTlsExtensions=");
        return d21.q(sb, this.f76876b, ')');
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", "", "", "tls", "<init>", "(Z)V", "Lokhttp3/ConnectionSpec;", "connectionSpec", "(Lokhttp3/ConnectionSpec;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f76878a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String[] f76879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String[] f76880c;
        public boolean d;

        public Builder(ConnectionSpec connectionSpec) {
            connectionSpec.getClass();
            this.f76878a = connectionSpec.f76875a;
            this.f76879b = connectionSpec.f76877c;
            this.f76880c = connectionSpec.d;
            this.d = connectionSpec.f76876b;
        }

        public final ConnectionSpec a() {
            return new ConnectionSpec(this.f76878a, this.d, this.f76879b, this.f76880c);
        }

        public final void b(String... strArr) {
            if (!this.f76878a) {
                md.n("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.f76879b = (String[]) Arrays.copyOf(strArr, strArr.length);
            } else {
                md.n("At least one cipher suite is required");
            }
        }

        public final void c(CipherSuite... cipherSuiteArr) {
            if (!this.f76878a) {
                md.n("no cipher suites for cleartext connections");
                return;
            }
            ArrayList arrayList = new ArrayList(cipherSuiteArr.length);
            for (CipherSuite cipherSuite : cipherSuiteArr) {
                arrayList.add(cipherSuite.f76870a);
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            b((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final void d(String... strArr) {
            if (!this.f76878a) {
                md.n("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.f76880c = (String[]) Arrays.copyOf(strArr, strArr.length);
            } else {
                md.n("At least one TLS version is required");
            }
        }

        public final void e(TlsVersion... tlsVersionArr) {
            if (!this.f76878a) {
                md.n("no TLS versions for cleartext connections");
                return;
            }
            ArrayList arrayList = new ArrayList(tlsVersionArr.length);
            for (TlsVersion tlsVersion : tlsVersionArr) {
                arrayList.add(tlsVersion.getJavaName());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            d((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public Builder(boolean z) {
            this.f76878a = z;
        }
    }
}

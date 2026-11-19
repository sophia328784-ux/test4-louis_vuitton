package okhttp3;

import defpackage.az;
import defpackage.db;
import defpackage.md;
import defpackage.py;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\rB;\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lokhttp3/Handshake;", "", "Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "cipherSuite", "", "Ljava/security/cert/Certificate;", "localCertificates", "Lkotlin/Function0;", "peerCertificatesFn", "<init>", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Handshake {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f76911e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TlsVersion f76912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CipherSuite f76913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f76914c;
    public final Lazy d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Handshake$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Handshake a(SSLSession sSLSession) throws IOException {
            List listK;
            sSLSession.getClass();
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                md.k("cipherSuite == null");
                return null;
            }
            if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                az.o("cipherSuite == ".concat(cipherSuite));
                return null;
            }
            CipherSuite cipherSuiteB = CipherSuite.f76862b.b(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                md.k("tlsVersion == null");
                return null;
            }
            if ("NONE".equals(protocol)) {
                az.o("tlsVersion == NONE");
                return null;
            }
            TlsVersion.INSTANCE.getClass();
            TlsVersion tlsVersionA = TlsVersion.Companion.a(protocol);
            try {
                listK = _UtilJvmKt.k(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                listK = EmptyList.f71768b;
            }
            return new Handshake(tlsVersionA, cipherSuiteB, _UtilJvmKt.k(sSLSession.getLocalCertificates()), new db(listK, 4));
        }
    }

    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, Function0<? extends List<? extends Certificate>> function0) {
        tlsVersion.getClass();
        cipherSuite.getClass();
        list.getClass();
        function0.getClass();
        this.f76912a = tlsVersion;
        this.f76913b = cipherSuite;
        this.f76914c = list;
        this.d = LazyKt.b(new py(function0, 4));
    }

    public final List a() {
        return (List) this.d.getF71699b();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        return handshake.f76912a == this.f76912a && Intrinsics.c(handshake.f76913b, this.f76913b) && Intrinsics.c(handshake.a(), a()) && Intrinsics.c(handshake.f76914c, this.f76914c);
    }

    public final int hashCode() {
        return this.f76914c.hashCode() + ((a().hashCode() + ((this.f76913b.hashCode() + ((this.f76912a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> listA = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        for (Certificate certificate : listA) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                type2.getClass();
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.f76912a);
        sb.append(" cipherSuite=");
        sb.append(this.f76913b);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List<Certificate> list = this.f76914c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                type.getClass();
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}

package okhttp3;

import defpackage.b21;
import defpackage.bm;
import defpackage.fc;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB#\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lokhttp3/CertificatePinner;", "", "", "Lokhttp3/CertificatePinner$Pin;", "pins", "Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "<init>", "(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V", "Pin", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CertificatePinner {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f76853c = new Companion(null);
    public static final CertificatePinner d = new CertificatePinner(CollectionsKt.B0(new Builder().f76856a), null, 2, 0 == true ? 1 : 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f76854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CertificateChainCleaner f76855b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/CertificatePinner$Builder;", "", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f76856a = new ArrayList();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/CertificatePinner$Companion;", "", "Lokhttp3/CertificatePinner;", "DEFAULT", "Lokhttp3/CertificatePinner;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(X509Certificate x509Certificate) {
            x509Certificate.getClass();
            StringBuilder sb = new StringBuilder("sha256/");
            ByteString.Companion companion = ByteString.f77398e;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            encoded.getClass();
            sb.append(ByteString.Companion.d(companion, encoded).d("SHA-256").a());
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/CertificatePinner$Pin;", "", "", "pattern", "pin", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Pin {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f76857a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f76858b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ByteString f76859c;

        public Pin(String str, String str2) {
            str.getClass();
            str2.getClass();
            if ((!StringsKt.P(str, "*.", false) || StringsKt.v(str, Browse.CAPS_WILDCARD, 1, false, 4) != -1) && ((!StringsKt.P(str, "**.", false) || StringsKt.v(str, Browse.CAPS_WILDCARD, 2, false, 4) != -1) && StringsKt.v(str, Browse.CAPS_WILDCARD, 0, false, 6) != -1)) {
                b21.n("Unexpected pattern: ".concat(str));
                throw null;
            }
            String strB = _HostnamesCommonKt.b(str);
            if (strB == null) {
                md.n("Invalid pattern: ".concat(str));
                throw null;
            }
            this.f76857a = strB;
            if (StringsKt.P(str2, "sha1/", false)) {
                this.f76858b = "sha1";
                ByteString.Companion companion = ByteString.f77398e;
                String strSubstring = str2.substring(5);
                companion.getClass();
                ByteString byteStringA = ByteString.Companion.a(strSubstring);
                if (byteStringA != null) {
                    this.f76859c = byteStringA;
                    return;
                } else {
                    md.n("Invalid pin hash: ".concat(str2));
                    throw null;
                }
            }
            if (!StringsKt.P(str2, "sha256/", false)) {
                md.n("pins must start with 'sha256/' or 'sha1/': ".concat(str2));
                throw null;
            }
            this.f76858b = "sha256";
            ByteString.Companion companion2 = ByteString.f77398e;
            String strSubstring2 = str2.substring(7);
            companion2.getClass();
            ByteString byteStringA2 = ByteString.Companion.a(strSubstring2);
            if (byteStringA2 != null) {
                this.f76859c = byteStringA2;
            } else {
                md.n("Invalid pin hash: ".concat(str2));
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return Intrinsics.c(this.f76857a, pin.f76857a) && Intrinsics.c(this.f76858b, pin.f76858b) && Intrinsics.c(this.f76859c, pin.f76859c);
        }

        public final int hashCode() {
            return this.f76859c.hashCode() + fc.b(this.f76857a.hashCode() * 31, 31, this.f76858b);
        }

        public final String toString() {
            return this.f76858b + '/' + this.f76859c.a();
        }
    }

    public CertificatePinner(Set<Pin> set, CertificateChainCleaner certificateChainCleaner) {
        set.getClass();
        this.f76854a = set;
        this.f76855b = certificateChainCleaner;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    public final void a(String str, Function0 function0) {
        str.getClass();
        Set set = this.f76854a;
        EmptyList emptyList = EmptyList.f71768b;
        List<Pin> arrayList = emptyList;
        for (Object obj : set) {
            Pin pin = (Pin) obj;
            pin.getClass();
            String str2 = pin.f76857a;
            boolean zEquals = false;
            if (StringsKt.P(str2, "**.", false)) {
                int length = str2.length() - 3;
                int length2 = str.length() - length;
                if (StringsKt.D(str, str.length() - length, false, pin.f76857a, 3, length) && (length2 == 0 || str.charAt(length2 - 1) == '.')) {
                    zEquals = true;
                }
            } else if (StringsKt.P(str2, "*.", false)) {
                int length3 = str2.length() - 1;
                int length4 = str.length() - length3;
                if (StringsKt.D(str, str.length() - length3, false, pin.f76857a, 1, length3) && StringsKt.z(str, JwtParser.SEPARATOR_CHAR, length4 - 1, 4) == -1) {
                    zEquals = true;
                }
            } else {
                zEquals = str.equals(str2);
            }
            if (zEquals) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                TypeIntrinsics.b(arrayList).add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) function0.mo47invoke();
        Iterator it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            Companion companion = f76853c;
            if (!zHasNext) {
                StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
                for (X509Certificate x509Certificate : list) {
                    sb.append("\n    ");
                    companion.getClass();
                    sb.append(Companion.a(x509Certificate));
                    sb.append(": ");
                    sb.append(x509Certificate.getSubjectDN().getName());
                }
                sb.append("\n  Pinned certificates for ");
                sb.append(str);
                sb.append(":");
                for (Pin pin2 : arrayList) {
                    sb.append("\n    ");
                    sb.append(pin2);
                }
                throw new SSLPeerUnverifiedException(sb.toString());
            }
            X509Certificate x509Certificate2 = (X509Certificate) it.next();
            ByteString byteStringD = null;
            ByteString byteStringD2 = null;
            for (Pin pin3 : arrayList) {
                String str3 = pin3.f76858b;
                ByteString byteString = pin3.f76859c;
                if (Intrinsics.c(str3, "sha256")) {
                    if (byteStringD == null) {
                        companion.getClass();
                        x509Certificate2.getClass();
                        ByteString.Companion companion2 = ByteString.f77398e;
                        byte[] encoded = x509Certificate2.getPublicKey().getEncoded();
                        encoded.getClass();
                        byteStringD = ByteString.Companion.d(companion2, encoded).d("SHA-256");
                    }
                    if (Intrinsics.c(byteString, byteStringD)) {
                        return;
                    }
                } else {
                    if (!Intrinsics.c(str3, "sha1")) {
                        bm.d(pin3.f76858b, "unsupported hashAlgorithm: ");
                        return;
                    }
                    if (byteStringD2 == null) {
                        companion.getClass();
                        x509Certificate2.getClass();
                        ByteString.Companion companion3 = ByteString.f77398e;
                        byte[] encoded2 = x509Certificate2.getPublicKey().getEncoded();
                        encoded2.getClass();
                        byteStringD2 = ByteString.Companion.d(companion3, encoded2).d(McElieceCCA2KeyGenParameterSpec.SHA1);
                    }
                    if (Intrinsics.c(byteString, byteStringD2)) {
                        return;
                    }
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CertificatePinner)) {
            return false;
        }
        CertificatePinner certificatePinner = (CertificatePinner) obj;
        return Intrinsics.c(certificatePinner.f76854a, this.f76854a) && Intrinsics.c(certificatePinner.f76855b, this.f76855b);
    }

    public final int hashCode() {
        int iHashCode = (this.f76854a.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.f76855b;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i2 & 2) != 0 ? null : certificateChainCleaner);
    }
}

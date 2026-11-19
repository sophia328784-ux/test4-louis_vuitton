package androidx.tracing;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
public abstract class Trace {
    public static boolean a() {
        return TraceApi29Impl.a();
    }

    public static String b(String str) {
        return str.length() <= 127 ? str : str.substring(0, CertificateBody.profileType);
    }
}

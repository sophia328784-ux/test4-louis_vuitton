package com.perfectcorp.uma.countly;

import com.sightcall.universal.media.offline.FileUtils;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes3.dex */
final class t implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f43255a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f43256b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static List a(X509Certificate x509Certificate, int i2) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i2 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    public static boolean b(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(FileUtils.HIDDEN_PREFIX) && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(FileUtils.HIDDEN_PREFIX) && !str2.endsWith("..")) {
            if (!str.endsWith(FileUtils.HIDDEN_PREFIX)) {
                str = str.concat(FileUtils.HIDDEN_PREFIX);
            }
            if (!str2.endsWith(FileUtils.HIDDEN_PREFIX)) {
                str2 = str2.concat(FileUtils.HIDDEN_PREFIX);
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(Browse.CAPS_WILDCARD)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        String strB;
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            if (f43256b.matcher(str).matches()) {
                List listA = a(x509Certificate, 7);
                int size = listA.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!str.equalsIgnoreCase((String) listA.get(i2))) {
                    }
                }
                return false;
            }
            String lowerCase = str.toLowerCase(Locale.US);
            List listA2 = a(x509Certificate, 2);
            int size2 = listA2.size();
            int i3 = 0;
            boolean z = false;
            while (i3 < size2) {
                if (!b(lowerCase, (String) listA2.get(i3))) {
                    i3++;
                    z = true;
                }
            }
            if (z || (strB = new q(x509Certificate.getSubjectX500Principal()).b()) == null) {
                return false;
            }
            return b(lowerCase, strB);
            return true;
        } catch (SSLException unused) {
            return false;
        }
    }
}

package org.teleal.common.util;

import defpackage.a;
import defpackage.md;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes5.dex */
public class MimeType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f78648c;

    /* JADX INFO: renamed from: org.teleal.common.util.MimeType$1, reason: invalid class name */
    public class AnonymousClass1 implements Comparator<String> {
        @Override // java.util.Comparator
        public final int compare(String str, String str2) {
            return str.compareToIgnoreCase(str2);
        }
    }

    public MimeType(String str, String str2, Map<String, String> map) {
        this.f78646a = str == null ? Browse.CAPS_WILDCARD : str;
        this.f78647b = str2 == null ? Browse.CAPS_WILDCARD : str2;
        if (map == null) {
            this.f78648c = Collections.EMPTY_MAP;
            return;
        }
        TreeMap treeMap = new TreeMap(new AnonymousClass1());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(entry.getKey().toLowerCase(), entry.getValue());
        }
        this.f78648c = Collections.unmodifiableMap(treeMap);
    }

    public static MimeType a(String str) {
        String strTrim;
        String strTrim2;
        int iIndexOf;
        String strTrim3 = null;
        if (str == null) {
            md.n("String value is null");
            return null;
        }
        int iIndexOf2 = str.indexOf(";");
        if (iIndexOf2 > -1) {
            strTrim = str.substring(iIndexOf2 + 1).trim();
            str = str.substring(0, iIndexOf2);
        } else {
            strTrim = null;
        }
        String[] strArrSplit = str.split("/");
        if (strArrSplit.length < 2 && str.equals(Browse.CAPS_WILDCARD)) {
            strTrim2 = Browse.CAPS_WILDCARD;
            strTrim3 = strTrim2;
        } else if (strArrSplit.length == 2) {
            strTrim3 = strArrSplit[0].trim();
            strTrim2 = strArrSplit[1].trim();
        } else {
            if (strArrSplit.length != 2) {
                md.n("Error parsing string: ".concat(str));
                return null;
            }
            strTrim2 = null;
        }
        if (strTrim == null || strTrim.length() <= 0) {
            return new MimeType(strTrim3, strTrim2);
        }
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < strTrim.length(); i2 = iIndexOf) {
            iIndexOf = strTrim.indexOf(61, i2);
            int iIndexOf3 = strTrim.indexOf(59, i2);
            if (iIndexOf == -1 && iIndexOf3 == -1) {
                iIndexOf = strTrim.length();
            } else if (iIndexOf == -1 || (iIndexOf3 != -1 && iIndexOf >= iIndexOf3)) {
                iIndexOf = iIndexOf3;
            }
            String strTrim4 = strTrim.substring(i2, iIndexOf).trim();
            if (iIndexOf < strTrim.length() && strTrim.charAt(iIndexOf) == '=') {
                iIndexOf++;
            }
            StringBuilder sb = new StringBuilder(strTrim.length() - iIndexOf);
            boolean z = false;
            while (true) {
                if (iIndexOf >= strTrim.length()) {
                    map.put(strTrim4, sb.toString().trim());
                    break;
                }
                char cCharAt = strTrim.charAt(iIndexOf);
                if (cCharAt == '\"') {
                    z = !z;
                } else if (cCharAt == ';') {
                    if (!z) {
                        map.put(strTrim4, sb.toString().trim());
                        iIndexOf++;
                        break;
                    }
                    sb.append(cCharAt);
                } else if (cCharAt != '\\') {
                    sb.append(cCharAt);
                }
                iIndexOf++;
            }
        }
        return new MimeType(strTrim3, strTrim2, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MimeType mimeType = (MimeType) obj;
        Map map = mimeType.f78648c;
        Map map2 = this.f78648c;
        if (map2 == null ? map == null : map2.equals(map)) {
            return this.f78647b.equalsIgnoreCase(mimeType.f78647b) && this.f78646a.equalsIgnoreCase(mimeType.f78646a);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f78647b.toLowerCase().hashCode() + (this.f78646a.toLowerCase().hashCode() * 31)) * 31;
        Map map = this.f78648c;
        return iHashCode + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f78646a.toLowerCase());
        sb.append("/");
        sb.append(this.f78647b.toLowerCase());
        Map map = this.f78648c;
        if (map != null || map.size() > 0) {
            for (String str : map.keySet()) {
                a.B(sb, ";", str, "=\"");
                sb.append((String) map.get(str));
                sb.append("\"");
            }
        }
        return sb.toString();
    }

    public MimeType() {
        this(Browse.CAPS_WILDCARD, Browse.CAPS_WILDCARD);
    }

    public MimeType(String str, String str2) {
        this(str, str2, Collections.EMPTY_MAP);
    }
}

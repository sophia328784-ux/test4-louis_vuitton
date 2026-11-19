package org.teleal.common.http;

import java.io.ByteArrayInputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class Headers implements Map<String, List<String>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f78640b = new HashMap(32);

    public Headers(ByteArrayInputStream byteArrayInputStream) {
        char cCharAt;
        Headers headers = new Headers();
        String strF = f(byteArrayInputStream);
        if (strF.length() != 0) {
            String str = null;
            do {
                char cCharAt2 = strF.charAt(0);
                if (str == null || !(cCharAt2 == ' ' || cCharAt2 == '\t')) {
                    int i2 = 0;
                    while (i2 < strF.length() && Character.isWhitespace(strF.charAt(i2))) {
                        i2++;
                    }
                    int i3 = i2;
                    while (i3 < strF.length() && (cCharAt = strF.charAt(i3)) != ':' && !Character.isWhitespace(cCharAt)) {
                        i3++;
                    }
                    int i4 = i3;
                    while (i4 < strF.length()) {
                        if (strF.charAt(i4) == ':') {
                            i4++;
                            break;
                        }
                        i4++;
                    }
                    while (i4 < strF.length() && Character.isWhitespace(strF.charAt(i4))) {
                        i4++;
                    }
                    int length = strF.length();
                    while (length > 0 && Character.isWhitespace(strF.charAt(length - 1))) {
                        length--;
                    }
                    String[] strArr = {strF.substring(i2, i3), (strF.length() < i4 || strF.length() < length || i4 >= length) ? null : strF.substring(i4, length)};
                    headers.a(strArr[0], strArr[1]);
                    str = strArr[0];
                } else {
                    List list = headers.get(str);
                    int size = list.size() - 1;
                    list.set(size, ((String) list.get(size)) + strF.trim());
                }
                strF = f(byteArrayInputStream);
            } while (strF.length() != 0);
        }
        putAll(headers);
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char c2 = charArray[0];
        if (c2 >= 'a' && c2 <= 'z') {
            charArray[0] = (char) (c2 - ' ');
        }
        for (int i2 = 1; i2 < str.length(); i2++) {
            char c3 = charArray[i2];
            if (c3 >= 'A' && c3 <= 'Z') {
                charArray[i2] = (char) (c3 + ' ');
            }
        }
        return new String(charArray);
    }

    public static String f(ByteArrayInputStream byteArrayInputStream) {
        StringBuilder sb = new StringBuilder(64);
        while (true) {
            int i2 = byteArrayInputStream.read();
            if (i2 == -1) {
                break;
            }
            char c2 = (char) i2;
            if (c2 == '\r') {
                if (((char) byteArrayInputStream.read()) == '\n') {
                    break;
                }
                sb.append(c2);
            } else {
                if (c2 == '\n') {
                    break;
                }
                sb.append(c2);
            }
        }
        return sb.toString();
    }

    public void a(String str, String str2) {
        String strD = d(str);
        HashMap map = this.f78640b;
        List linkedList = (List) map.get(strD);
        if (linkedList == null) {
            linkedList = new LinkedList();
            map.put(strD, linkedList);
        }
        linkedList.add(str2);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final List get(Object obj) {
        return (List) this.f78640b.get(d((String) obj));
    }

    @Override // java.util.Map
    public void clear() {
        this.f78640b.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj == null || !(obj instanceof String)) {
            return false;
        }
        return this.f78640b.containsKey(d((String) obj));
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f78640b.containsValue(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public List put(String str, List list) {
        return (List) this.f78640b.put(d(str), list);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, List<String>>> entrySet() {
        return this.f78640b.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return this.f78640b.equals(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public List remove(Object obj) {
        return (List) this.f78640b.remove(d((String) obj));
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f78640b.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f78640b.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return this.f78640b.keySet();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends List<String>> map) {
        for (Map.Entry<? extends String, ? extends List<String>> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f78640b.size();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : this.f78640b.entrySet()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((String) entry.getKey());
            sb2.append(": ");
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
                sb2.append(",");
            }
            sb2.delete(sb2.length() - 1, sb2.length());
            sb.append((CharSequence) sb2);
            sb.append("\r\n");
        }
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection<List<String>> values() {
        return this.f78640b.values();
    }

    public Headers(Map<String, List<String>> map) {
        putAll(map);
    }

    public Headers() {
    }
}

package okhttp3;

import defpackage.az;
import defpackage.md;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\b\tB\u0017\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/Headers;", "", "Lkotlin/Pair;", "", "", "namesAndValues", "<init>", "([Ljava/lang/String;)V", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f76915c = new Companion(null);
    public static final Headers d = new Headers(new String[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f76916b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/Headers$Builder;", "", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f76917a = new ArrayList(20);

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            _HeadersCommonKt.b(str);
            _HeadersCommonKt.c(str2, str);
            _HeadersCommonKt.a(this, str, str2);
        }

        public final void b(String str) {
            int iU = StringsKt.u(str, ':', 1, 4);
            if (iU != -1) {
                _HeadersCommonKt.a(this, str.substring(0, iU), str.substring(iU + 1));
            } else if (str.charAt(0) == ':') {
                _HeadersCommonKt.a(this, "", str.substring(1));
            } else {
                _HeadersCommonKt.a(this, "", str);
            }
        }

        public final void c(String str, String str2) {
            str.getClass();
            str2.getClass();
            _HeadersCommonKt.b(str);
            _HeadersCommonKt.a(this, str, str2);
        }

        public final Headers d() {
            return new Headers((String[]) this.f76917a.toArray(new String[0]));
        }

        public final String e(String str) {
            str.getClass();
            ArrayList arrayList = this.f76917a;
            int size = arrayList.size() - 2;
            int iA = ProgressionUtilKt.a(size, 0, -2);
            if (iA > size) {
                return null;
            }
            while (!str.equalsIgnoreCase((String) arrayList.get(size))) {
                if (size == iA) {
                    return null;
                }
                size -= 2;
            }
            return (String) arrayList.get(size + 1);
        }

        public final void f(String str) {
            str.getClass();
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.f76917a;
                if (i2 >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i2))) {
                    arrayList.remove(i2);
                    arrayList.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/Headers$Companion;", "", "Lokhttp3/Headers;", "EMPTY", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Headers a(String... strArr) {
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
            if (strArr2.length % 2 != 0) {
                md.n("Expected alternating header names and values");
                return null;
            }
            String[] strArr3 = (String[]) Arrays.copyOf(strArr2, strArr2.length);
            int length = strArr3.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (strArr3[i3] == null) {
                    md.n("Headers cannot be null");
                    return null;
                }
                strArr3[i3] = StringsKt.a0(strArr2[i3]).toString();
            }
            int iA = ProgressionUtilKt.a(0, strArr3.length - 1, 2);
            if (iA >= 0) {
                while (true) {
                    String str = strArr3[i2];
                    String str2 = strArr3[i2 + 1];
                    _HeadersCommonKt.b(str);
                    _HeadersCommonKt.c(str2, str);
                    if (i2 == iA) {
                        break;
                    }
                    i2 += 2;
                }
            }
            return new Headers(strArr3);
        }
    }

    public Headers(String[] strArr) {
        strArr.getClass();
        this.f76916b = strArr;
    }

    public final String a(String str) {
        str.getClass();
        String[] strArr = this.f76916b;
        strArr.getClass();
        str.getClass();
        int length = strArr.length - 2;
        int iA = ProgressionUtilKt.a(length, 0, -2);
        if (iA > length) {
            return null;
        }
        while (!StringsKt.s(str, strArr[length], true)) {
            if (length == iA) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return Arrays.equals(this.f76916b, ((Headers) obj).f76916b);
        }
        return false;
    }

    public final String f(int i2) {
        String str = (String) ArraysKt.C(i2 * 2, this.f76916b);
        if (str != null) {
            return str;
        }
        az.v(n00.q("name[", i2, ']'));
        return null;
    }

    public final Builder h() {
        Builder builder = new Builder();
        CollectionsKt.k(builder.f76917a, this.f76916b);
        return builder;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f76916b);
    }

    public final TreeMap i() {
        StringCompanionObject.f71926a.getClass();
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        comparator.getClass();
        TreeMap treeMap = new TreeMap(comparator);
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            String strF = f(i2);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = strF.toLowerCase(locale);
            lowerCase.getClass();
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(m(i2));
        }
        return treeMap;
    }

    @Override // java.lang.Iterable
    public final Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i2 = 0; i2 < size; i2++) {
            pairArr[i2] = new Pair(f(i2), m(i2));
        }
        return ArrayIteratorKt.a(pairArr);
    }

    public final String m(int i2) {
        String str = (String) ArraysKt.C((i2 * 2) + 1, this.f76916b);
        if (str != null) {
            return str;
        }
        az.v(n00.q("value[", i2, ']'));
        return null;
    }

    public final List n(String str) {
        str.getClass();
        str.getClass();
        int size = size();
        List listUnmodifiableList = null;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            if (StringsKt.s(str, f(i2), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(m(i2));
            }
        }
        if (arrayList != null) {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
        }
        return listUnmodifiableList == null ? EmptyList.f71768b : listUnmodifiableList;
    }

    public final int size() {
        return this.f76916b.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            String strF = f(i2);
            String strM = m(i2);
            sb.append(strF);
            sb.append(": ");
            if (_UtilCommonKt.m(strF)) {
                strM = "██";
            }
            sb.append(strM);
            sb.append("\n");
        }
        return sb.toString();
    }
}

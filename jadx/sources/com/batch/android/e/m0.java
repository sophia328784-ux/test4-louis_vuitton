package com.batch.android.e;

import defpackage.r81;
import defpackage.tr;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class m0 {
    private static final String d = "URLBuilder";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f23115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f23116c;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23117a;

        static {
            int[] iArr = new int[b.values().length];
            f23117a = iArr;
            try {
                iArr[b.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23117a[b.VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23117a[b.EACH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        ALL(2),
        VALUE(0),
        EACH(1);


        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f23121b;

        b(int i2) {
            this.f23121b = i2;
        }

        public static b a(int i2) {
            for (b bVar : values()) {
                if (bVar.b() == i2) {
                    return bVar;
                }
            }
            return null;
        }

        public int b() {
            return this.f23121b;
        }
    }

    public m0(String str, b bVar, String[] strArr) throws MalformedURLException {
        if (str == null || str.length() == 0) {
            r81.d("Null urlString");
            throw null;
        }
        this.f23115b = new HashMap();
        a(str, strArr);
        this.f23116c = bVar;
    }

    private void a(String str, String[] strArr) throws MalformedURLException {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    ArrayList arrayList = new ArrayList(strArr.length);
                    for (String str2 : strArr) {
                        if (str2 == null) {
                            arrayList.add("null");
                        } else {
                            arrayList.add(URLEncoder.encode(str2, "UTF-8"));
                        }
                    }
                    str = String.format(str, arrayList.toArray());
                }
            } catch (Exception e2) {
                t.c(d, "MalformedURLException source: ", e2);
                throw new MalformedURLException(tr.g("Error while initializing URL with pattern : ", str));
            }
        }
        String query = new URL(str).getQuery();
        if (query == null || query.length() <= 0) {
            this.f23114a = str;
            return;
        }
        try {
            this.f23114a = str.substring(0, str.indexOf("?"));
            this.f23115b.putAll(a(query));
        } catch (Exception e3) {
            throw new MalformedURLException(e3.getMessage());
        }
    }

    private String b(b0 b0Var, c cVar) {
        if (b0Var == null) {
            r81.d("null sorter");
            return null;
        }
        if (this.f23115b.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (cVar == null) {
            a(b0Var, sb);
            return sb.toString();
        }
        int i2 = a.f23117a[this.f23116c.ordinal()];
        if (i2 == 1) {
            a(b0Var, sb);
            return "o=" + cVar.a(sb.toString());
        }
        if (i2 == 2) {
            for (String str : b0Var.a(this.f23115b)) {
                a(sb, str, cVar.a(this.f23115b.get(str)));
            }
            a(sb);
            return sb.toString();
        }
        if (i2 != 3) {
            a(b0Var, sb);
            return sb.toString();
        }
        for (String str2 : b0Var.a(this.f23115b)) {
            a(sb, cVar.a(str2), cVar.a(this.f23115b.get(str2)));
        }
        a(sb);
        return sb.toString();
    }

    public static Map<String, String> a(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("&")) {
            String[] strArrSplit = str2.split("=");
            if (strArrSplit.length == 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        return map;
    }

    public void a(String str, String str2) {
        if (str != null && str.length() != 0) {
            if (str2 != null && str2.length() != 0) {
                this.f23115b.put(str, str2);
                return;
            } else {
                r81.d("Null value");
                return;
            }
        }
        r81.d("Null key");
    }

    public URL a() {
        return a((b0) null, (c) null);
    }

    public URL a(b0 b0Var, c cVar) {
        if (b0Var == null) {
            b0Var = new b0();
        }
        String strB = b(b0Var, cVar);
        try {
            if (strB == null) {
                return new URL(this.f23114a);
            }
            return new URL(this.f23114a + "?" + strB);
        } catch (MalformedURLException e2) {
            t.c(d, "Error while building URL", e2);
            return null;
        }
    }

    private void a(b0 b0Var, StringBuilder sb) {
        for (String str : b0Var.a(this.f23115b)) {
            a(sb, str, this.f23115b.get(str));
        }
        a(sb);
    }

    private void a(StringBuilder sb, String str, String str2) {
        sb.append(str + "=" + str2 + "&");
    }

    private void a(StringBuilder sb) {
        sb.deleteCharAt(sb.length() - 1);
    }

    public void b(String str) {
        if (str != null) {
            this.f23115b.remove(str);
        } else {
            r81.d("Null key");
        }
    }
}

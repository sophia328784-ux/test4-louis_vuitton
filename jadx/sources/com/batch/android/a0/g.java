package com.batch.android.a0;

import android.text.TextUtils;
import defpackage.n00;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f22881k = Pattern.compile("@import sdk\\(\"([^\"]*)\"\\);");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f22882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f22884c;
    private d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f22885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f22886f;
    private com.batch.android.a0.c g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.batch.android.a0.d f22887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f22888i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f22889j = false;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f22890a;

        static {
            int[] iArr = new int[b.values().length];
            f22890a = iArr;
            try {
                iArr[b.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22890a[b.BLOCK_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22890a[b.BLOCK_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22890a[b.PROPERTY_SEPARATOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22890a[b.PROPERTY_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22890a[b.NEW_LINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        UNKNOWN,
        BLOCK_START,
        BLOCK_END,
        PROPERTY_SEPARATOR,
        PROPERTY_END,
        NEW_LINE;

        public static b a(char c2) {
            if (c2 == '\n') {
                return NEW_LINE;
            }
            if (c2 == '{') {
                return BLOCK_START;
            }
            if (c2 == '}') {
                return BLOCK_END;
            }
            if (c2 != ':') {
                return c2 != ';' ? UNKNOWN : PROPERTY_END;
            }
            return PROPERTY_SEPARATOR;
        }
    }

    public enum c {
        ROOT,
        MEDIA_QUERY
    }

    public enum d {
        SELECTOR,
        RULESET,
        PROPERTY_NAME,
        PROPERTY_VALUE
    }

    public g(e eVar, String str) {
        this.f22882a = eVar;
        this.f22883b = str;
        a();
    }

    private void a() {
        if (TextUtils.isEmpty(this.f22883b)) {
            return;
        }
        Matcher matcher = f22881k.matcher(this.f22883b);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strA = this.f22882a.a(matcher.group(1));
            matcher.appendReplacement(stringBuffer, strA != null ? Matcher.quoteReplacement(strA) : "");
        }
        matcher.appendTail(stringBuffer);
        this.f22883b = stringBuffer.toString();
    }

    private void d() {
        this.f22884c = c.ROOT;
        this.d = d.SELECTOR;
        this.f22887h = new com.batch.android.a0.d();
        this.f22886f = null;
        this.f22885e = null;
        this.f22888i = null;
        this.g = null;
    }

    private void e() throws com.batch.android.a0.a {
        char cCharAt;
        StringTokenizer stringTokenizer = new StringTokenizer(this.f22883b, ":;{}\n", true);
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.length() == 1 && ((cCharAt = strNextToken.charAt(0)) == ':' || cCharAt == ';' || cCharAt == '{' || cCharAt == '}' || cCharAt == '\n')) {
                a(cCharAt);
            } else {
                a(strNextToken);
            }
        }
    }

    public com.batch.android.a0.d b() throws com.batch.android.a0.a {
        d();
        e();
        com.batch.android.a0.d dVar = this.f22887h;
        d();
        return dVar;
    }

    public void c() throws com.batch.android.a0.a {
        if (this.d == d.PROPERTY_VALUE) {
            g();
        }
    }

    public void f() throws com.batch.android.a0.a {
        if (this.f22884c == c.ROOT && this.d == d.SELECTOR) {
            this.f22889j = true;
            this.f22888i = n00.r(this.f22888i, ":", new StringBuilder());
            return;
        }
        if (this.d != d.PROPERTY_NAME || this.f22886f == null || this.g != null || TextUtils.isEmpty(this.f22888i)) {
            j();
        }
        if (this.f22888i.startsWith("--")) {
            this.g = new i();
        } else {
            this.g = new com.batch.android.a0.c();
        }
        this.g.f22874a = this.f22888i.toLowerCase(Locale.US).trim();
        this.d = d.PROPERTY_VALUE;
    }

    public void g() throws com.batch.android.a0.a {
        if (this.d != d.PROPERTY_VALUE || TextUtils.isEmpty(this.f22888i) || this.g == null || this.f22886f == null) {
            j();
        }
        this.g.f22875b = this.f22888i.trim();
        this.f22886f.f22903b.add(this.g);
        this.g = null;
        this.d = d.PROPERTY_NAME;
    }

    public void h() throws com.batch.android.a0.a {
        if (this.d == d.PROPERTY_VALUE) {
            g();
        }
        d dVar = this.d;
        if (dVar != d.PROPERTY_NAME && this.f22884c == c.MEDIA_QUERY && dVar != d.SELECTOR) {
            j();
        }
        if (this.f22884c != c.MEDIA_QUERY) {
            if (this.f22887h == null || this.f22886f == null) {
                j();
            }
            this.f22887h.f22877a.add(this.f22886f);
            this.f22886f = null;
        } else if (this.f22886f != null) {
            if (this.f22885e == null) {
                j();
            }
            this.f22885e.f22880b.add(this.f22886f);
            this.f22886f = null;
        } else {
            if (this.f22887h == null || this.f22885e == null) {
                j();
            }
            this.f22887h.f22878b.add(this.f22885e);
            this.f22885e = null;
            this.f22884c = c.ROOT;
        }
        this.d = d.SELECTOR;
    }

    public void i() throws com.batch.android.a0.a {
        if (this.d != d.SELECTOR || this.f22886f != null || TextUtils.isEmpty(this.f22888i)) {
            j();
        }
        if (!this.f22888i.startsWith("@")) {
            h hVar = new h();
            this.f22886f = hVar;
            hVar.f22902a = this.f22888i;
            this.d = d.PROPERTY_NAME;
            return;
        }
        if (this.f22884c != c.ROOT) {
            j();
        }
        this.f22884c = c.MEDIA_QUERY;
        if (this.f22885e != null) {
            j();
        }
        f fVar = new f();
        this.f22885e = fVar;
        fVar.f22879a = this.f22888i;
    }

    public void j() throws com.batch.android.a0.a {
        throw new com.batch.android.a0.a("Internal parsing error");
    }

    private void a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f22889j ? this.f22888i : "");
        sb.append(str != null ? str.trim() : "");
        this.f22888i = sb.toString();
        this.f22889j = false;
    }

    private void a(char c2) throws com.batch.android.a0.a {
        int i2 = a.f22890a[b.a(c2).ordinal()];
        if (i2 == 2) {
            i();
            return;
        }
        if (i2 == 3) {
            h();
            return;
        }
        if (i2 == 4) {
            f();
        } else if (i2 == 5) {
            g();
        } else {
            if (i2 != 6) {
                return;
            }
            c();
        }
    }
}

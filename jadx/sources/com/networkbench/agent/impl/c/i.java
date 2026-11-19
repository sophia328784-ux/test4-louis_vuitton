package com.networkbench.agent.impl.c;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f36567a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f36568b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadLocal<String> f36569c = new ThreadLocal<>();
    private l d;

    private String f(String str, Object... objArr) {
        return (objArr == null || objArr.length == 0) ? str : String.format(str, objArr);
    }

    public synchronized void a(int i2, String str, String str2, Throwable th) {
        if (th != null && str2 != null) {
            try {
                str2 = str2 + "\n " + c.a(th);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (th != null && str2 == null) {
            str2 = c.a(th);
        }
        if (c.a((CharSequence) str2)) {
            str2 = "Empty/NULL log message";
        }
        this.d.a(i2, str, str2);
    }

    public void b(String str) {
        if (c.a((CharSequence) str)) {
            a("Empty/Null json content");
            return;
        }
        try {
            String strTrim = str.trim();
            if (strTrim.startsWith("{")) {
                a((Object) new JSONObject(strTrim).toString(2));
            } else if (strTrim.startsWith("[")) {
                a((Object) new JSONArray(strTrim).toString(2));
            } else {
                b("Invalid Json", new Object[0]);
            }
        } catch (JSONException unused) {
            b("Invalid Json", new Object[0]);
        }
    }

    public void c(String str, Object... objArr) {
        a(4, (Throwable) null, str, objArr);
    }

    public void d(String str, Object... objArr) {
        a(2, (Throwable) null, str, objArr);
    }

    public void e(String str, Object... objArr) {
        a(5, (Throwable) null, str, objArr);
    }

    public void a(String str, Object... objArr) {
        a(3, (Throwable) null, str, objArr);
    }

    public void a(Object obj) {
        a(3, (Throwable) null, c.a(obj), new Object[0]);
    }

    public void a(Throwable th, String str, Object... objArr) {
        a(6, th, str, objArr);
    }

    public i a(String str) {
        if (str != null) {
            this.f36569c.set(str);
        }
        return this;
    }

    public void a(l lVar) {
        this.d = lVar;
    }

    private synchronized void a(int i2, Throwable th, String str, Object... objArr) {
        a(i2, a(), f(str, objArr), th);
    }

    private String a() {
        String str = this.f36569c.get();
        if (str == null) {
            return null;
        }
        this.f36569c.remove();
        return str;
    }

    public void b(String str, Object... objArr) {
        a(null, str, objArr);
    }
}

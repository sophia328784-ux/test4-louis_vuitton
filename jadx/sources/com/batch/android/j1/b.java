package com.batch.android.j1;

import com.batch.android.LoggerDelegate;
import com.batch.android.LoggerLevel;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LoggerDelegate f23566b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LoggerLevel f23567c = LoggerLevel.INFO;
    private Integer d = null;

    public b a() {
        b bVar = new b();
        bVar.a(this.f23565a);
        bVar.a(this.f23566b);
        bVar.a(this.f23567c);
        bVar.a(this.d);
        return bVar;
    }

    public String b() {
        return this.f23565a;
    }

    public LoggerDelegate c() {
        return this.f23566b;
    }

    public LoggerLevel d() {
        return this.f23567c;
    }

    public Integer e() {
        return this.d;
    }

    public void a(LoggerDelegate loggerDelegate) {
        t.f23186c = loggerDelegate;
        this.f23566b = loggerDelegate;
    }

    public void a(LoggerLevel loggerLevel) {
        t.d = loggerLevel;
        this.f23567c = loggerLevel;
    }

    public void a(Integer num) {
        this.d = num;
    }

    public void a(String str) {
        this.f23565a = str;
    }
}

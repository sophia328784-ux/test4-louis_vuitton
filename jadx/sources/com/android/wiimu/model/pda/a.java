package com.android.wiimu.model.pda;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f22446a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f22447b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22448c = "";
    String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f22449e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f22450f = "";

    public String a() {
        return this.f22448c;
    }

    public String b() {
        return this.f22446a;
    }

    public String c() {
        return this.f22447b;
    }

    public String d() {
        return this.f22450f;
    }

    public String e() {
        return this.f22449e;
    }

    public String f() {
        return this.d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LWAAccountParam{clientId='");
        sb.append(this.f22446a);
        sb.append("', endPoint='");
        sb.append(this.f22447b);
        sb.append("', certificateCrt='");
        sb.append(this.f22448c);
        sb.append("', privateKey='");
        sb.append(this.d);
        sb.append("', linkplay_account_info='");
        sb.append(this.f22449e);
        sb.append("', linkplayHostInfo='");
        return n00.r(this.f22450f, "'}", sb);
    }

    public void a(String str) {
        this.f22448c = str;
    }

    public void b(String str) {
        this.f22446a = str;
    }

    public void c(String str) {
        this.f22447b = str;
    }

    public void d(String str) {
        this.f22450f = str;
    }

    public void e(String str) {
        this.f22449e = str;
    }

    public void f(String str) {
        this.d = str;
    }
}

package com.networkbench.agent.impl.floatbtnmanager;

import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f37129k = "\\.";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.networkbench.agent.impl.data.a.a f37130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37132c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37134f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37137j;

    public String a() {
        return this.f37131b;
    }

    public void b(String str) {
        this.f37137j = str;
        String[] strArrSplit = str.split(f37129k);
        if (strArrSplit == null || strArrSplit.length != 2) {
            c(ContentTree.ROOT_ID);
        } else {
            c(strArrSplit[1]);
        }
    }

    public void c(String str) {
        this.f37131b = str;
    }

    public void d(String str) {
        if (str == null) {
            str = "";
        }
        this.f37132c = str;
    }

    public String e() {
        return this.f37133e;
    }

    public String f() {
        return this.f37135h;
    }

    public String g() {
        if (TextUtils.isEmpty(this.f37134f)) {
            this.f37134f = this.f37132c;
        }
        return this.f37134f;
    }

    public void h(String str) {
        this.f37134f = str;
    }

    public void i(String str) {
        this.f37136i = str;
    }

    public String toString() {
        return "appId:" + this.f37131b + ", className:" + this.f37132c + ", methodName:" + this.d + ", optTypeId:" + this.f37133e + ", vcName:" + this.f37134f + ", acName:" + this.g + ", token:" + this.f37135h + ", imgPath:" + this.f37136i;
    }

    public void a(String str) {
        this.f37135h = str;
    }

    public String c() {
        return this.f37132c;
    }

    public void e(String str) {
        this.d = str;
    }

    public void f(String str) {
        this.f37133e = str;
    }

    public String h() {
        return this.f37136i;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.g = str;
    }

    public String b() {
        if (TextUtils.isEmpty(this.g)) {
            this.g = this.d;
        }
        return this.g;
    }
}

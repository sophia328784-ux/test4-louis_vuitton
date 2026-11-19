package com.networkbench.agent.impl.floatbtnmanager;

import com.linkplay.medialib.ContentTree;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private static final String g = "\\.";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.networkbench.agent.impl.data.a.a f37117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37119c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37121f;

    public String a() {
        return this.f37118b;
    }

    public void b(String str) {
        String[] strArrSplit = str.split(g);
        if (strArrSplit == null || strArrSplit.length != 2) {
            a(ContentTree.ROOT_ID);
        } else {
            a(strArrSplit[1]);
        }
    }

    public void c(String str) {
        this.f37119c = str;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.f37120e = str;
    }

    public void f(String str) {
        this.f37121f = str;
    }

    public void a(String str) {
        this.f37118b = str;
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.f37120e;
    }

    public String e() {
        return this.f37121f;
    }

    public String b() {
        return this.f37119c;
    }
}

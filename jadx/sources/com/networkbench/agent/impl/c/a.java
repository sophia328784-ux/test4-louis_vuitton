package com.networkbench.agent.impl.c;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f36553a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Throwable f36555c;
    private Object[] d;

    public a(String str, Object[] objArr, Throwable th) {
        this.f36554b = str;
        this.f36555c = th;
        if (th == null) {
            this.d = objArr;
        } else {
            this.d = a(objArr);
        }
    }

    public static Object[] a(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            md.k("non-sensical empty or null argument array");
            return null;
        }
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        return objArr2;
    }

    public Object[] b() {
        return this.d;
    }

    public Throwable c() {
        return this.f36555c;
    }

    public a(String str) {
        this(str, null, null);
    }

    public String a() {
        return this.f36554b;
    }
}

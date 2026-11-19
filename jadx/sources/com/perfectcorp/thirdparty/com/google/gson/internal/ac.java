package com.perfectcorp.thirdparty.com.google.gson.internal;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class ac extends aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f42466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f42467b;

    public ac(Method method, int i2) {
        this.f42466a = method;
        this.f42467b = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.aa
    public final Object a(Class cls) {
        aa.b(cls);
        return this.f42466a.invoke(null, cls, Integer.valueOf(this.f42467b));
    }
}

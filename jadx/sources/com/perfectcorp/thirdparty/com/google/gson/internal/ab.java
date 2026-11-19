package com.perfectcorp.thirdparty.com.google.gson.internal;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class ab extends aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f42464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f42465b;

    public ab(Method method, Object obj) {
        this.f42464a = method;
        this.f42465b = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.aa
    public final Object a(Class cls) {
        aa.b(cls);
        return this.f42464a.invoke(this.f42465b, cls);
    }
}

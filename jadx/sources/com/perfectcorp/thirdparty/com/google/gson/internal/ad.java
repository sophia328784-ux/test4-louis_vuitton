package com.perfectcorp.thirdparty.com.google.gson.internal;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class ad extends aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f42468a;

    public ad(Method method) {
        this.f42468a = method;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.aa
    public final Object a(Class cls) {
        aa.b(cls);
        return this.f42468a.invoke(null, cls, Object.class);
    }
}

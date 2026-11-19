package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class a<E> extends com.perfectcorp.thirdparty.com.google.gson.k<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42470c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f42471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.k f42472b;

    public a(Gson gson, com.perfectcorp.thirdparty.com.google.gson.k<E> kVar, Class<E> cls) {
        this.f42472b = new o(gson, kVar, cls);
        this.f42471a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        if (aVar.w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
            aVar.C();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.h();
        while (aVar.u()) {
            arrayList.add(((o) this.f42472b).f42506b.a(aVar));
        }
        aVar.o();
        Object objNewInstance = Array.newInstance((Class<?>) this.f42471a, arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Array.set(objNewInstance, i2, arrayList.get(i2));
        }
        return objNewInstance;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        if (obj == null) {
            dVar.y();
            return;
        }
        dVar.q();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f42472b.b(dVar, Array.get(obj, i2));
        }
        dVar.s();
    }
}

package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.r81;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends com.perfectcorp.thirdparty.com.google.gson.k<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42483b = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Gson f42484a;

    public i(Gson gson) {
        this.f42484a = gson;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        switch (k.f42485a[aVar.w().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.h();
                while (aVar.u()) {
                    arrayList.add(a(aVar));
                }
                aVar.o();
                return arrayList;
            case 2:
                com.perfectcorp.thirdparty.com.google.gson.internal.t tVar = new com.perfectcorp.thirdparty.com.google.gson.internal.t();
                aVar.r();
                while (aVar.u()) {
                    tVar.put(aVar.y(), a(aVar));
                }
                aVar.t();
                return tVar;
            case 3:
                return aVar.z();
            case 4:
                return Double.valueOf(aVar.E());
            case 5:
                return Boolean.valueOf(aVar.B());
            case 6:
                aVar.C();
                return null;
            default:
                r81.b();
                return null;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        if (obj == null) {
            dVar.y();
            return;
        }
        com.perfectcorp.thirdparty.com.google.gson.k kVarA = this.f42484a.a(new TypeToken(obj.getClass()));
        if (!(kVarA instanceof i)) {
            kVarA.b(dVar, obj);
        } else {
            dVar.t();
            dVar.w();
        }
    }
}

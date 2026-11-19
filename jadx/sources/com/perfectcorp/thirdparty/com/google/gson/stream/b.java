package com.perfectcorp.thirdparty.com.google.gson.stream;

import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.com.google.gson.internal.r;
import defpackage.az;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class b extends r {
    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.r
    public final void a(a aVar) {
        if (aVar instanceof com.perfectcorp.thirdparty.com.google.gson.internal.bind.d) {
            com.perfectcorp.thirdparty.com.google.gson.internal.bind.d dVar = (com.perfectcorp.thirdparty.com.google.gson.internal.bind.d) aVar;
            dVar.p0(c.f42569e);
            Map.Entry entry = (Map.Entry) ((Iterator) dVar.v0()).next();
            dVar.q0(entry.getValue());
            dVar.q0(new JsonPrimitive((String) entry.getKey()));
            return;
        }
        int iJ0 = aVar.f42563i;
        if (iJ0 == 0) {
            iJ0 = aVar.j0();
        }
        if (iJ0 == 13) {
            aVar.f42563i = 9;
            return;
        }
        if (iJ0 == 12) {
            aVar.f42563i = 8;
        } else {
            if (iJ0 == 14) {
                aVar.f42563i = 10;
                return;
            }
            StringBuilder sb = new StringBuilder("Expected a name but was ");
            sb.append(aVar.w());
            az.n(aVar.n0(), sb);
        }
    }
}

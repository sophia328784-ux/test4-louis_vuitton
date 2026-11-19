package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializationContext;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializer;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.az;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class n<T> extends com.perfectcorp.thirdparty.com.google.gson.k<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.i f42497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonDeserializer f42498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Gson f42499c;
    public final TypeToken d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.l f42500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f42501f = new a();
    public com.perfectcorp.thirdparty.com.google.gson.k g;

    public final class a implements com.perfectcorp.thirdparty.com.getkeepsafe.relinker.elf.a, JsonDeserializationContext {
    }

    public static final class b implements com.perfectcorp.thirdparty.com.google.gson.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TypeToken f42502a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f42503b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.i f42504c;
        public final JsonDeserializer d;

        public b(Object obj, TypeToken typeToken, boolean z) {
            com.perfectcorp.thirdparty.com.google.gson.i iVar = obj instanceof com.perfectcorp.thirdparty.com.google.gson.i ? (com.perfectcorp.thirdparty.com.google.gson.i) obj : null;
            this.f42504c = iVar;
            JsonDeserializer jsonDeserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            this.d = jsonDeserializer;
            CLShare3DRelatedClasses.c((iVar == null && jsonDeserializer == null) ? false : true);
            this.f42502a = typeToken;
            this.f42503b = z;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.l
        public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
            TypeToken typeToken2 = this.f42502a;
            if (typeToken2 == null) {
                Class cls = typeToken.f42555a;
                throw null;
            }
            if (typeToken2.equals(typeToken) || (this.f42503b && typeToken2.f42556b == typeToken.f42555a)) {
                return new n(this.f42504c, this.d, gson, typeToken, this);
            }
            return null;
        }
    }

    public n(com.perfectcorp.thirdparty.com.google.gson.i<T> iVar, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, com.perfectcorp.thirdparty.com.google.gson.l lVar) {
        this.f42497a = iVar;
        this.f42498b = jsonDeserializer;
        this.f42499c = gson;
        this.d = typeToken;
        this.f42500e = lVar;
    }

    public static com.perfectcorp.thirdparty.com.google.gson.l d(TypeToken typeToken, Object obj) {
        return new b(obj, typeToken, typeToken.f42556b == typeToken.f42555a);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        JsonDeserializer jsonDeserializer = this.f42498b;
        if (jsonDeserializer == null) {
            return c().a(aVar);
        }
        JsonElement jsonElementA = com.perfectcorp.thirdparty.com.google.gson.internal.z.a(aVar);
        if (jsonElementA instanceof JsonNull) {
            return null;
        }
        Type type = this.d.f42556b;
        return jsonDeserializer.a(jsonElementA, this.f42501f);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        com.perfectcorp.thirdparty.com.google.gson.i iVar = this.f42497a;
        if (iVar == null) {
            c().b(dVar, obj);
        } else if (obj == null) {
            dVar.y();
        } else {
            Type type = this.d.f42556b;
            com.perfectcorp.thirdparty.com.google.gson.internal.z.b(iVar.a(obj), dVar);
        }
    }

    public final com.perfectcorp.thirdparty.com.google.gson.k c() {
        com.perfectcorp.thirdparty.com.google.gson.k kVar = this.g;
        if (kVar != null) {
            return kVar;
        }
        Gson gson = this.f42499c;
        Iterator it = gson.f42446c.iterator();
        boolean z = false;
        while (true) {
            boolean zHasNext = it.hasNext();
            TypeToken typeToken = this.d;
            if (!zHasNext) {
                az.m(typeToken, "GSON cannot serialize ");
                return null;
            }
            com.perfectcorp.thirdparty.com.google.gson.l lVar = (com.perfectcorp.thirdparty.com.google.gson.l) it.next();
            if (z) {
                com.perfectcorp.thirdparty.com.google.gson.k kVarA = lVar.a(gson, typeToken);
                if (kVarA != null) {
                    this.g = kVarA;
                    return kVarA;
                }
            } else if (lVar == this.f42500e) {
                z = true;
            }
        }
    }
}

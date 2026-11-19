package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.internal.b f42475a;

    public static final class a<E> extends com.perfectcorp.thirdparty.com.google.gson.k<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.k f42476a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.internal.x f42477b;

        public a(Gson gson, Type type, com.perfectcorp.thirdparty.com.google.gson.k<E> kVar, com.perfectcorp.thirdparty.com.google.gson.internal.x<? extends Collection<E>> xVar) {
            this.f42476a = new o(gson, kVar, type);
            this.f42477b = xVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
            if (aVar.w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
                aVar.C();
                return null;
            }
            Collection collection = (Collection) this.f42477b.a();
            aVar.h();
            while (aVar.u()) {
                collection.add(((o) this.f42476a).f42506b.a(aVar));
            }
            aVar.o();
            return collection;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                dVar.y();
                return;
            }
            dVar.q();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f42476a.b(dVar, it.next());
            }
            dVar.s();
        }
    }

    public c(com.perfectcorp.thirdparty.com.google.gson.internal.b bVar) {
        this.f42475a = bVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Type type = typeToken.f42556b;
        Class cls = typeToken.f42555a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        CLShare3DRelatedClasses.c(Collection.class.isAssignableFrom(cls));
        Type typeB = com.perfectcorp.thirdparty.com.google.gson.internal.a.b(type, cls, com.perfectcorp.thirdparty.com.google.gson.internal.a.a(type, cls, Collection.class));
        if (typeB instanceof WildcardType) {
            typeB = ((WildcardType) typeB).getUpperBounds()[0];
        }
        Type type2 = typeB instanceof ParameterizedType ? ((ParameterizedType) typeB).getActualTypeArguments()[0] : Object.class;
        return new a(gson, type2, gson.a(new TypeToken(type2)), this.f42475a.a(typeToken));
    }
}

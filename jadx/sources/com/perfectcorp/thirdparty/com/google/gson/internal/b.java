package com.perfectcorp.thirdparty.com.google.gson.internal;

import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f42469a;

    public b(Map<Type, com.perfectcorp.thirdparty.com.google.gson.g<?>> map) {
        this.f42469a = map;
    }

    public final x a(TypeToken typeToken) {
        j jVar;
        f fVar;
        e eVar;
        d dVar;
        p pVar;
        o oVar;
        n nVar;
        m mVar;
        l lVar;
        k kVar;
        Type type = typeToken.f42556b;
        Class cls = typeToken.f42555a;
        Map map = this.f42469a;
        com.perfectcorp.thirdparty.com.google.gson.g gVar = (com.perfectcorp.thirdparty.com.google.gson.g) map.get(type);
        if (gVar != null) {
            c cVar = new c();
            cVar.f42525a = gVar;
            cVar.f42526b = type;
            return cVar;
        }
        com.perfectcorp.thirdparty.com.google.gson.g gVar2 = (com.perfectcorp.thirdparty.com.google.gson.g) map.get(cls);
        if (gVar2 != null) {
            i iVar = new i();
            iVar.f42530a = gVar2;
            iVar.f42531b = type;
            return iVar;
        }
        x gVar3 = null;
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            jVar = new j();
            jVar.f42532a = declaredConstructor;
        } catch (NoSuchMethodException unused) {
            jVar = null;
        }
        if (jVar != null) {
            return jVar;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                kVar = new k();
            } else if (EnumSet.class.isAssignableFrom(cls)) {
                lVar = new l();
                lVar.f42533a = type;
            } else if (Set.class.isAssignableFrom(cls)) {
                mVar = new m();
            } else if (Queue.class.isAssignableFrom(cls)) {
                nVar = new n();
            } else {
                oVar = new o();
            }
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                pVar = new p();
            } else if (ConcurrentMap.class.isAssignableFrom(cls)) {
                dVar = new d();
            } else if (SortedMap.class.isAssignableFrom(cls)) {
                eVar = new e();
            } else if (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(new TypeToken(((ParameterizedType) type).getActualTypeArguments()[0]).f42555a)) {
                gVar3 = new g();
            } else {
                fVar = new f();
            }
        }
        if (gVar3 != null) {
            gVar3 = fVar;
            gVar3 = eVar;
            gVar3 = dVar;
            gVar3 = pVar;
            gVar3 = oVar;
            gVar3 = nVar;
            gVar3 = mVar;
            gVar3 = lVar;
            gVar3 = kVar;
            return gVar3;
        }
        gVar3 = fVar;
        gVar3 = eVar;
        gVar3 = dVar;
        gVar3 = pVar;
        gVar3 = oVar;
        gVar3 = nVar;
        gVar3 = mVar;
        gVar3 = lVar;
        gVar3 = kVar;
        return new h(type, cls);
    }

    public final String toString() {
        return this.f42469a.toString();
    }
}

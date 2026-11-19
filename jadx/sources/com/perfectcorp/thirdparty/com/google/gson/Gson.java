package com.perfectcorp.thirdparty.com.google.gson;

import com.perfectcorp.thirdparty.com.google.gson.internal.bind.p;
import com.perfectcorp.thirdparty.com.google.gson.internal.y;
import com.perfectcorp.thirdparty.com.google.gson.internal.z;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.r81;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class Gson {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f42444a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f42445b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f42446c;
    public final com.perfectcorp.thirdparty.com.google.gson.internal.b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f42447e;

    public static class a<T> extends k<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public k f42448a;

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
            k kVar = this.f42448a;
            if (kVar != null) {
                return kVar.a(aVar);
            }
            r81.b();
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) {
            k kVar = this.f42448a;
            if (kVar != null) {
                kVar.b(dVar, obj);
            } else {
                r81.b();
            }
        }
    }

    static {
        new d();
    }

    public Gson(HashMap map, boolean z, ArrayList arrayList) {
        com.perfectcorp.thirdparty.com.google.gson.internal.b bVar = new com.perfectcorp.thirdparty.com.google.gson.internal.b(map);
        this.d = bVar;
        this.f42447e = z;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(p.g);
        arrayList2.add(com.perfectcorp.thirdparty.com.google.gson.internal.bind.i.f42483b);
        arrayList2.addAll(arrayList);
        arrayList2.add(p.f42511e);
        arrayList2.add(p.f42510c);
        arrayList2.add(p.f42509b);
        arrayList2.add(p.b(Long.TYPE, Long.class, p.d));
        arrayList2.add(p.b(Double.TYPE, Double.class, new e()));
        arrayList2.add(p.b(Float.TYPE, Float.class, new f()));
        arrayList2.add(com.perfectcorp.thirdparty.com.google.gson.internal.bind.a.f42470c);
        arrayList2.add(new com.perfectcorp.thirdparty.com.google.gson.internal.bind.c(bVar));
        arrayList2.add(new com.perfectcorp.thirdparty.com.google.gson.internal.bind.h(bVar, false));
        arrayList2.add(p.f42513h);
        arrayList2.add(new com.perfectcorp.thirdparty.com.google.gson.internal.bind.l(bVar, com.perfectcorp.thirdparty.com.google.gson.a.f42457a));
        this.f42446c = Collections.unmodifiableList(arrayList2);
    }

    public static void d(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static void f(Object obj, com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        if (obj != null) {
            try {
                if (aVar.w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42573j) {
                } else {
                    throw new h("JSON document was not fully consumed.");
                }
            } catch (com.perfectcorp.thirdparty.com.google.gson.stream.e e2) {
                throw new j(e2);
            } catch (IOException e3) {
                throw new h(e3);
            }
        }
    }

    public final k a(TypeToken typeToken) {
        boolean z;
        ConcurrentHashMap concurrentHashMap = this.f42445b;
        k kVar = (k) concurrentHashMap.get(typeToken);
        if (kVar != null) {
            return kVar;
        }
        ThreadLocal threadLocal = this.f42444a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            z = false;
        }
        a aVar = (a) map.get(typeToken);
        if (aVar != null) {
            return aVar;
        }
        try {
            a aVar2 = new a();
            map.put(typeToken, aVar2);
            Iterator it = this.f42446c.iterator();
            while (it.hasNext()) {
                k kVarA = ((l) it.next()).a(this, typeToken);
                if (kVarA != null) {
                    if (aVar2.f42448a != null) {
                        throw new AssertionError();
                    }
                    aVar2.f42448a = kVarA;
                    concurrentHashMap.put(typeToken, kVarA);
                    map.remove(typeToken);
                    if (z) {
                        threadLocal.remove();
                    }
                    return kVarA;
                }
            }
            throw new IllegalArgumentException("GSON cannot handle " + typeToken);
        } catch (Throwable th) {
            map.remove(typeToken);
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final com.perfectcorp.thirdparty.com.google.gson.stream.d b(Writer writer) {
        com.perfectcorp.thirdparty.com.google.gson.stream.d dVar = new com.perfectcorp.thirdparty.com.google.gson.stream.d(writer);
        dVar.f42582i = false;
        return dVar;
    }

    public final Object c(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar, Type type) {
        boolean z = aVar.f42559c;
        boolean z2 = true;
        aVar.f42559c = true;
        try {
            try {
                try {
                    aVar.w();
                    z2 = false;
                    Object objA = a(new TypeToken(type)).a(aVar);
                    aVar.f42559c = z;
                    return objA;
                } catch (IllegalStateException e2) {
                    throw new j(e2);
                }
            } catch (EOFException e3) {
                if (!z2) {
                    throw new j(e3);
                }
                aVar.f42559c = z;
                return null;
            } catch (IOException e4) {
                throw new j(e4);
            }
        } catch (Throwable th) {
            aVar.f42559c = z;
            throw th;
        }
    }

    public final void e(JsonElement jsonElement, com.perfectcorp.thirdparty.com.google.gson.stream.d dVar) {
        boolean z = dVar.f42580f;
        dVar.f42580f = true;
        boolean z2 = dVar.g;
        dVar.g = this.f42447e;
        boolean z3 = dVar.f42582i;
        dVar.f42582i = false;
        try {
            try {
                z.b(jsonElement, dVar);
                dVar.f42580f = z;
                dVar.g = z2;
                dVar.f42582i = z3;
            } catch (IOException e2) {
                throw new h(e2);
            }
        } catch (Throwable th) {
            dVar.f42580f = z;
            dVar.g = z2;
            dVar.f42582i = z3;
            throw th;
        }
    }

    public final void g(Object obj, Type type, com.perfectcorp.thirdparty.com.google.gson.stream.d dVar) {
        k kVarA = a(new TypeToken(type));
        boolean z = dVar.f42580f;
        dVar.f42580f = true;
        boolean z2 = dVar.g;
        dVar.g = this.f42447e;
        boolean z3 = dVar.f42582i;
        dVar.f42582i = false;
        try {
            try {
                kVarA.b(dVar, obj);
                dVar.f42580f = z;
                dVar.g = z2;
                dVar.f42582i = z3;
            } catch (IOException e2) {
                throw new h(e2);
            }
        } catch (Throwable th) {
            dVar.f42580f = z;
            dVar.g = z2;
            dVar.f42582i = z3;
            throw th;
        }
    }

    public final Object h(JsonElement jsonElement, Type type) {
        if (jsonElement == null) {
            return null;
        }
        return c(new com.perfectcorp.thirdparty.com.google.gson.internal.bind.d(jsonElement), type);
    }

    public final Object i(String str, Class cls) {
        Object objJ = j(str, cls);
        Class cls2 = (Class) y.f42554a.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls.cast(objJ);
    }

    public final Object j(String str, Type type) {
        if (str == null) {
            return null;
        }
        com.perfectcorp.thirdparty.com.google.gson.stream.a aVar = new com.perfectcorp.thirdparty.com.google.gson.stream.a(new StringReader(str));
        aVar.f42559c = false;
        Object objC = c(aVar, type);
        f(objC, aVar);
        return objC;
    }

    public final String k(Object obj) {
        if (obj != null) {
            return l(obj, obj.getClass());
        }
        JsonElement jsonElement = JsonNull.f42453b;
        StringWriter stringWriter = new StringWriter();
        try {
            e(jsonElement, b(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new h(e2);
        }
    }

    public final String l(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        try {
            g(obj, type, b(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new h(e2);
        }
    }

    public final String toString() {
        return "{serializeNulls:falsefactories:" + this.f42446c + ",instanceCreators:" + this.d + "}";
    }
}

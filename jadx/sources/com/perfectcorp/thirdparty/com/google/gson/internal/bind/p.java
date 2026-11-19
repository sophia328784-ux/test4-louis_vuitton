package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.md;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.k f42508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42510c;
    public static final com.perfectcorp.thirdparty.com.google.gson.k d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.k f42512f;
    public static final com.perfectcorp.thirdparty.com.google.gson.l g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.gson.l f42513h;

    public static final class a<T extends Enum<T>> extends com.perfectcorp.thirdparty.com.google.gson.k<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f42514a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f42515b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(strName).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        strName = serializedName.value();
                        for (String str : serializedName.alternate()) {
                            this.f42514a.put(str, t);
                        }
                    }
                    this.f42514a.put(strName, t);
                    this.f42515b.put(t, strName);
                }
            } catch (NoSuchFieldException e2) {
                md.h(e2);
                throw null;
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
            if (aVar.w() != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
                return (Enum) this.f42514a.get(aVar.z());
            }
            aVar.C();
            return null;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
            Enum r2 = (Enum) obj;
            dVar.r(r2 == null ? null : (String) this.f42515b.get(r2));
        }
    }

    static {
        q qVar = new q();
        f42508a = new w();
        f42509b = b(Boolean.TYPE, Boolean.class, qVar);
        f42510c = b(Integer.TYPE, Integer.class, new x());
        d = new y();
        new z();
        aa aaVar = new aa();
        r rVar = new r();
        rVar.f42516a = String.class;
        rVar.f42517b = aaVar;
        f42511e = rVar;
        ab abVar = new ab();
        f42512f = abVar;
        g = new t(abVar);
        f42513h = new ac();
    }

    public static com.perfectcorp.thirdparty.com.google.gson.l a(TypeToken typeToken, com.perfectcorp.thirdparty.com.google.gson.k kVar) {
        ad adVar = new ad();
        adVar.f42473a = typeToken;
        adVar.f42474b = kVar;
        return adVar;
    }

    public static com.perfectcorp.thirdparty.com.google.gson.l b(Class cls, Class cls2, com.perfectcorp.thirdparty.com.google.gson.k kVar) {
        s sVar = new s();
        sVar.f42518a = cls;
        sVar.f42519b = cls2;
        sVar.f42520c = kVar;
        return sVar;
    }
}

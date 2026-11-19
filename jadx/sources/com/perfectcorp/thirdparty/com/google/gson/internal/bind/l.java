package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.b21;
import defpackage.md;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class l implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.internal.b f42486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.c f42487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.internal.q f42488c = com.perfectcorp.thirdparty.com.google.gson.internal.q.f42534a;

    public static final class a<T> extends com.perfectcorp.thirdparty.com.google.gson.k<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.internal.x f42489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LinkedHashMap f42490b;

        public a(com.perfectcorp.thirdparty.com.google.gson.internal.x xVar, LinkedHashMap linkedHashMap) {
            this.f42489a = xVar;
            this.f42490b = linkedHashMap;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) throws com.perfectcorp.thirdparty.com.google.gson.stream.e {
            if (aVar.w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
                aVar.C();
                return null;
            }
            Object objA = this.f42489a.a();
            try {
                aVar.r();
                while (aVar.u()) {
                    b bVar = (b) this.f42490b.get(aVar.y());
                    if (bVar == null || !bVar.f42493c) {
                        aVar.H();
                    } else {
                        m mVar = (m) bVar;
                        Object objA2 = mVar.f42495f.a(aVar);
                        if (objA2 != null || !mVar.f42496h) {
                            mVar.d.set(objA, objA2);
                        }
                    }
                }
                aVar.t();
                return objA;
            } catch (IllegalAccessException e2) {
                md.h(e2);
                return null;
            } catch (IllegalStateException e3) {
                throw new com.perfectcorp.thirdparty.com.google.gson.j(e3);
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
            if (obj == null) {
                dVar.y();
                return;
            }
            dVar.t();
            try {
                for (b bVar : this.f42490b.values()) {
                    m mVar = (m) bVar;
                    boolean z = false;
                    if (mVar.f42492b && mVar.d.get(obj) != obj) {
                        z = true;
                    }
                    if (z) {
                        dVar.o(bVar.f42491a);
                        m mVar2 = (m) bVar;
                        new o(mVar2.f42494e, mVar2.f42495f, mVar2.g.f42556b).b(dVar, mVar2.d.get(obj));
                    }
                }
                dVar.w();
            } catch (IllegalAccessException e2) {
                md.h(e2);
            }
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f42491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f42492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f42493c;

        public b(String str, boolean z, boolean z2) {
            this.f42491a = str;
            this.f42492b = z;
            this.f42493c = z2;
        }
    }

    public l(com.perfectcorp.thirdparty.com.google.gson.internal.b bVar, com.perfectcorp.thirdparty.com.google.gson.c cVar) {
        this.f42486a = bVar;
        this.f42487b = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.perfectcorp.thirdparty.com.google.gson.internal.bind.l$b] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        com.perfectcorp.thirdparty.com.google.gson.k kVar;
        List listSingletonList;
        ?? r3;
        int i2;
        Field[] fieldArr;
        b bVar;
        l lVar = this;
        TypeToken typeToken2 = typeToken;
        Class<?> cls = typeToken2.f42555a;
        Class<?> cls2 = Object.class;
        com.perfectcorp.thirdparty.com.google.gson.k kVar2 = null;
        if (!cls2.isAssignableFrom(cls)) {
            return null;
        }
        com.perfectcorp.thirdparty.com.google.gson.internal.x xVarA = lVar.f42486a.a(typeToken2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            Type type = typeToken2.f42556b;
            while (true) {
                Type type2 = typeToken2.f42556b;
                if (cls == cls2) {
                    break;
                }
                Field[] declaredFields = cls.getDeclaredFields();
                int length = declaredFields.length;
                int i3 = 0;
                while (i3 < length) {
                    Field field = declaredFields[i3];
                    boolean zB = lVar.b(field);
                    boolean zB2 = lVar.b(field);
                    if (zB || zB2) {
                        field.setAccessible(true);
                        kVar = kVar2;
                        Type typeB = com.perfectcorp.thirdparty.com.google.gson.internal.a.b(type2, cls, field.getGenericType());
                        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                        if (serializedName == null) {
                            listSingletonList = Collections.singletonList(lVar.f42487b.a(field));
                        } else {
                            String strValue = serializedName.value();
                            String[] strArrAlternate = serializedName.alternate();
                            if (strArrAlternate.length == 0) {
                                listSingletonList = Collections.singletonList(strValue);
                            } else {
                                ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
                                arrayList.add(strValue);
                                int i4 = 0;
                                for (int length2 = strArrAlternate.length; i4 < length2; length2 = length2) {
                                    arrayList.add(strArrAlternate[i4]);
                                    i4++;
                                }
                                listSingletonList = arrayList;
                            }
                            r3 = kVar;
                            i2 = 0;
                            while (i2 < listSingletonList.size()) {
                                String str = (String) listSingletonList.get(i2);
                                if (i2 != 0) {
                                    zB = false;
                                }
                                int i5 = i2;
                                TypeToken typeToken3 = new TypeToken(typeB);
                                Type type3 = typeB;
                                Field[] fieldArr2 = declaredFields;
                                Field field2 = field;
                                boolean z = zB;
                                bVar = (b) linkedHashMap.put(str, new m(str, z, zB2, field2, gson, gson.a(typeToken3), typeToken3, com.perfectcorp.thirdparty.com.google.gson.internal.y.f42554a.containsKey(typeToken3.f42555a)));
                                if (r3 == 0) {
                                    r3 = bVar;
                                }
                                i2 = i5 + 1;
                                zB = z;
                                field = field2;
                                typeB = type3;
                                declaredFields = fieldArr2;
                                r3 = r3;
                            }
                            fieldArr = declaredFields;
                            if (r3 == 0) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(type);
                                b21.w(sb, " declares multiple JSON fields named ", r3.f42491a);
                                return kVar;
                            }
                        }
                        r3 = kVar;
                        i2 = 0;
                        while (i2 < listSingletonList.size()) {
                            String str2 = (String) listSingletonList.get(i2);
                            if (i2 != 0) {
                                zB = false;
                            }
                            int i6 = i2;
                            TypeToken typeToken4 = new TypeToken(typeB);
                            Type type4 = typeB;
                            Field[] fieldArr3 = declaredFields;
                            Field field3 = field;
                            boolean z2 = zB;
                            bVar = (b) linkedHashMap.put(str2, new m(str2, z2, zB2, field3, gson, gson.a(typeToken4), typeToken4, com.perfectcorp.thirdparty.com.google.gson.internal.y.f42554a.containsKey(typeToken4.f42555a)));
                            if (r3 == 0) {
                                r3 = bVar;
                            }
                            i2 = i6 + 1;
                            zB = z2;
                            field = field3;
                            typeB = type4;
                            declaredFields = fieldArr3;
                            r3 = r3;
                        }
                        fieldArr = declaredFields;
                        if (r3 == 0) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(type);
                            b21.w(sb2, " declares multiple JSON fields named ", r3.f42491a);
                            return kVar;
                        }
                    } else {
                        cls2 = cls2;
                        kVar = kVar2;
                        fieldArr = declaredFields;
                    }
                    i3++;
                    lVar = this;
                    kVar2 = kVar;
                    cls2 = cls2;
                    declaredFields = fieldArr;
                }
                typeToken2 = new TypeToken(com.perfectcorp.thirdparty.com.google.gson.internal.a.b(type2, cls, cls.getGenericSuperclass()));
                cls = typeToken2.f42555a;
                lVar = this;
            }
        }
        return new a(xVarA, linkedHashMap);
    }

    public final boolean b(Field field) {
        Class<?> type = field.getType();
        this.f42488c.getClass();
        if ((!Enum.class.isAssignableFrom(type) && (type.isAnonymousClass() || type.isLocalClass())) || (field.getModifiers() & 136) != 0 || field.isSynthetic()) {
            return false;
        }
        Class<?> type2 = field.getType();
        if (Enum.class.isAssignableFrom(type2)) {
            return true;
        }
        return (type2.isAnonymousClass() || type2.isLocalClass()) ? false : true;
    }
}

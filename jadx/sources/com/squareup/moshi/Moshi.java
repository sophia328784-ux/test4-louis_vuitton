package com.squareup.moshi;

import com.sightcall.universal.agent.Usecase;
import com.squareup.moshi.internal.Util;
import defpackage.az;
import defpackage.b21;
import defpackage.lc0;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class Moshi {
    public static final ArrayList d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f43405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadLocal f43406b = new ThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f43407c = new LinkedHashMap();

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f43409a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f43410b = 0;

        /* JADX WARN: Code duplicated, block: B:100:0x01cc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:40:0x00f4  */
        /* JADX WARN: Code duplicated, block: B:77:0x01c8  */
        /* JADX WARN: Code duplicated, block: B:97:0x00fc A[SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        public final void a(final Usecase.MultipleFormatsMultipartyAdapter multipleFormatsMultipartyAdapter) {
            Class<Usecase.MultipleFormatsMultipartyAdapter> cls;
            Object obj;
            String str;
            Class cls2;
            int i2;
            int i3;
            AdapterMethodsFactory.AdapterMethod anonymousClass4;
            AdapterMethodsFactory.AdapterMethod adapterMethodA;
            final boolean z;
            String str2;
            AdapterMethodsFactory.AdapterMethod anonymousClass2;
            AdapterMethodsFactory.AdapterMethod adapterMethodA2;
            final boolean z2;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Class<Usecase.MultipleFormatsMultipartyAdapter> cls3 = Usecase.MultipleFormatsMultipartyAdapter.class;
            Class<Usecase.MultipleFormatsMultipartyAdapter> superclass = cls3;
            while (superclass != Object.class) {
                Method[] declaredMethods = superclass.getDeclaredMethods();
                int length = declaredMethods.length;
                int i4 = 0;
                while (i4 < length) {
                    final Method method = declaredMethods[i4];
                    boolean zIsAnnotationPresent = method.isAnnotationPresent(ToJson.class);
                    Class<JsonAdapter> cls4 = JsonAdapter.class;
                    Class cls5 = Void.TYPE;
                    if (zIsAnnotationPresent) {
                        method.setAccessible(true);
                        final Type genericReturnType = method.getGenericReturnType();
                        final Type[] genericParameterTypes = method.getGenericParameterTypes();
                        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                        i2 = 0;
                        if (genericParameterTypes.length >= 2 && genericParameterTypes[0] == JsonWriter.class && genericReturnType == cls5) {
                            int length2 = genericParameterTypes.length;
                            int i5 = 2;
                            while (true) {
                                if (i5 < length2) {
                                    int i6 = length2;
                                    Type type = genericParameterTypes[i5];
                                    cls = superclass;
                                    if ((type instanceof ParameterizedType) && ((ParameterizedType) type).getRawType() == cls4) {
                                        i5++;
                                        length2 = i6;
                                        superclass = cls;
                                    }
                                } else {
                                    cls = superclass;
                                    obj = "Nullable";
                                    str2 = "Unexpected signature for ";
                                    anonymousClass2 = new AdapterMethodsFactory.AnonymousClass2(genericParameterTypes[1], Util.f(parameterAnnotations[1]), multipleFormatsMultipartyAdapter, method, genericParameterTypes.length, 2, true);
                                    cls2 = cls5;
                                }
                                adapterMethodA2 = AdapterMethodsFactory.a(arrayList, anonymousClass2.f43340a, anonymousClass2.f43341b);
                                if (adapterMethodA2 == null) {
                                    StringBuilder sb = new StringBuilder("Conflicting @ToJson methods:\n    ");
                                    sb.append(adapterMethodA2.d);
                                    b21.w(sb, "\n    ", anonymousClass2.d);
                                    return;
                                }
                                arrayList.add(anonymousClass2);
                                str = str2;
                            }
                        } else {
                            cls = superclass;
                        }
                        obj = "Nullable";
                        str2 = "Unexpected signature for ";
                        if (genericParameterTypes.length != 1 || genericReturnType == cls5) {
                            lc0.n(str2, method, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n");
                            return;
                        }
                        Set set = Util.f43424a;
                        final Set setF = Util.f(method.getAnnotations());
                        final Set setF2 = Util.f(parameterAnnotations[0]);
                        Annotation[] annotationArr = parameterAnnotations[0];
                        int length3 = annotationArr.length;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= length3) {
                                z2 = false;
                                break;
                            } else {
                                if (annotationArr[i7].annotationType().getSimpleName().equals(obj)) {
                                    z2 = true;
                                    break;
                                }
                                i7++;
                            }
                        }
                        final Type type2 = genericParameterTypes[0];
                        final int length4 = genericParameterTypes.length;
                        cls2 = cls5;
                        anonymousClass2 = new AdapterMethodsFactory.AdapterMethod(type2, setF2, multipleFormatsMultipartyAdapter, method, length4, z2) { // from class: com.squareup.moshi.AdapterMethodsFactory.3

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public JsonAdapter f43332h;

                            @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
                            public final void a(Moshi moshi, JsonAdapter.Factory factory) {
                                super.a(moshi, factory);
                                Type type3 = genericParameterTypes[0];
                                Type type4 = genericReturnType;
                                boolean zB = Types.b(type3, type4);
                                Set set2 = setF;
                                this.f43332h = (zB && setF2.equals(set2)) ? moshi.d(factory, type4, set2) : moshi.c(type4, set2, null);
                            }

                            @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
                            public final void d(JsonWriter jsonWriter, Object obj2) throws IOException {
                                this.f43332h.toJson(jsonWriter, c(obj2));
                            }
                        };
                        adapterMethodA2 = AdapterMethodsFactory.a(arrayList, anonymousClass2.f43340a, anonymousClass2.f43341b);
                        if (adapterMethodA2 == null) {
                            StringBuilder sb2 = new StringBuilder("Conflicting @ToJson methods:\n    ");
                            sb2.append(adapterMethodA2.d);
                            b21.w(sb2, "\n    ", anonymousClass2.d);
                            return;
                        }
                        arrayList.add(anonymousClass2);
                        str = str2;
                    } else {
                        cls = superclass;
                        obj = "Nullable";
                        cls4 = cls4;
                        str = "Unexpected signature for ";
                        cls2 = cls5;
                        i2 = 0;
                    }
                    if (method.isAnnotationPresent(FromJson.class)) {
                        method.setAccessible(true);
                        String str3 = str;
                        final Type genericReturnType2 = method.getGenericReturnType();
                        Set set2 = Util.f43424a;
                        final Set setF3 = Util.f(method.getAnnotations());
                        final Type[] genericParameterTypes2 = method.getGenericParameterTypes();
                        Annotation[][] parameterAnnotations2 = method.getParameterAnnotations();
                        if (genericParameterTypes2.length < 1 || genericParameterTypes2[i2] != JsonReader.class || genericReturnType2 == cls2) {
                            i3 = length;
                        } else {
                            int length5 = genericParameterTypes2.length;
                            int i8 = 1;
                            while (true) {
                                if (i8 < length5) {
                                    int i9 = length5;
                                    Type type3 = genericParameterTypes2[i8];
                                    i3 = length;
                                    if ((type3 instanceof ParameterizedType) && ((ParameterizedType) type3).getRawType() == cls4) {
                                        i8++;
                                        length5 = i9;
                                        length = i3;
                                    }
                                } else {
                                    i3 = length;
                                    anonymousClass4 = new AdapterMethodsFactory.AnonymousClass4(genericReturnType2, setF3, multipleFormatsMultipartyAdapter, method, genericParameterTypes2.length, 1, true);
                                }
                                adapterMethodA = AdapterMethodsFactory.a(arrayList2, anonymousClass4.f43340a, anonymousClass4.f43341b);
                                if (adapterMethodA == null) {
                                    StringBuilder sb3 = new StringBuilder("Conflicting @FromJson methods:\n    ");
                                    sb3.append(adapterMethodA.d);
                                    b21.w(sb3, "\n    ", anonymousClass4.d);
                                    return;
                                }
                                arrayList2.add(anonymousClass4);
                            }
                        }
                        if (genericParameterTypes2.length != 1 || genericReturnType2 == cls2) {
                            lc0.n(str3, method, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n");
                            return;
                        }
                        final Set setF4 = Util.f(parameterAnnotations2[i2]);
                        Annotation[] annotationArr2 = parameterAnnotations2[i2];
                        int length6 = annotationArr2.length;
                        int i10 = i2;
                        while (true) {
                            if (i10 >= length6) {
                                z = i2;
                                break;
                            } else {
                                if (annotationArr2[i10].annotationType().getSimpleName().equals(obj)) {
                                    z = 1;
                                    break;
                                }
                                i10++;
                            }
                        }
                        final int length7 = genericParameterTypes2.length;
                        anonymousClass4 = new AdapterMethodsFactory.AdapterMethod(genericReturnType2, setF3, multipleFormatsMultipartyAdapter, method, length7, z) { // from class: com.squareup.moshi.AdapterMethodsFactory.5

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public JsonAdapter f43336h;

                            @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
                            public final void a(Moshi moshi, JsonAdapter.Factory factory) {
                                super.a(moshi, factory);
                                Type[] typeArr = genericParameterTypes2;
                                boolean zB = Types.b(typeArr[0], genericReturnType2);
                                Set set3 = setF4;
                                this.f43336h = (zB && set3.equals(setF3)) ? moshi.d(factory, typeArr[0], set3) : moshi.c(typeArr[0], set3, null);
                            }

                            @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
                            public final Object b(JsonReader jsonReader) {
                                return c(this.f43336h.fromJson(jsonReader));
                            }
                        };
                        adapterMethodA = AdapterMethodsFactory.a(arrayList2, anonymousClass4.f43340a, anonymousClass4.f43341b);
                        if (adapterMethodA == null) {
                            StringBuilder sb4 = new StringBuilder("Conflicting @FromJson methods:\n    ");
                            sb4.append(adapterMethodA.d);
                            b21.w(sb4, "\n    ", anonymousClass4.d);
                            return;
                        }
                        arrayList2.add(anonymousClass4);
                    } else {
                        i3 = length;
                    }
                    i4++;
                    cls3 = cls3;
                    superclass = cls;
                    declaredMethods = declaredMethods;
                    length = i3;
                }
                superclass = superclass.getSuperclass();
            }
            Class<Usecase.MultipleFormatsMultipartyAdapter> cls6 = cls3;
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                md.n("Expected at least one @ToJson or @FromJson method on ".concat(cls6.getName()));
            } else {
                b(new AdapterMethodsFactory(arrayList, arrayList2));
            }
        }

        public final void b(JsonAdapter.Factory factory) {
            if (factory == null) {
                md.n("factory == null");
                return;
            }
            int i2 = this.f43410b;
            this.f43410b = i2 + 1;
            this.f43409a.add(i2, factory);
        }

        public final void c(final JsonAdapter jsonAdapter) {
            ArrayList arrayList = Moshi.d;
            if (jsonAdapter != null) {
                b(new JsonAdapter.Factory() { // from class: com.squareup.moshi.Moshi.1
                    @Override // com.squareup.moshi.JsonAdapter.Factory
                    public final JsonAdapter create(Type type, Set set, Moshi moshi) {
                        if (!set.isEmpty()) {
                            return null;
                        }
                        Set set2 = Util.f43424a;
                        if (Types.b(Date.class, type)) {
                            return jsonAdapter;
                        }
                        return null;
                    }
                });
            } else {
                md.n("jsonAdapter == null");
            }
        }
    }

    public static final class Lookup<T> extends JsonAdapter<T> {

        @Nullable
        JsonAdapter<T> adapter;
        final Object cacheKey;

        @Nullable
        final String fieldName;
        final Type type;

        public Lookup(Type type, @Nullable String str, Object obj) {
            this.type = type;
            this.fieldName = str;
            this.cacheKey = obj;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public T fromJson(JsonReader jsonReader) throws IOException {
            JsonAdapter<T> jsonAdapter = this.adapter;
            if (jsonAdapter != null) {
                return jsonAdapter.fromJson(jsonReader);
            }
            md.k("JsonAdapter isn't ready");
            return null;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public void toJson(JsonWriter jsonWriter, T t) throws IOException {
            JsonAdapter<T> jsonAdapter = this.adapter;
            if (jsonAdapter != null) {
                jsonAdapter.toJson(jsonWriter, t);
            } else {
                md.k("JsonAdapter isn't ready");
            }
        }

        public String toString() {
            JsonAdapter<T> jsonAdapter = this.adapter;
            return jsonAdapter != null ? jsonAdapter.toString() : super.toString();
        }
    }

    public final class LookupChain {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f43411a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayDeque f43412b = new ArrayDeque();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f43413c;

        public LookupChain() {
        }

        public final IllegalArgumentException a(IllegalArgumentException illegalArgumentException) {
            if (!this.f43413c) {
                this.f43413c = true;
                ArrayDeque arrayDeque = this.f43412b;
                if (arrayDeque.size() != 1 || ((Lookup) arrayDeque.getFirst()).fieldName != null) {
                    StringBuilder sb = new StringBuilder(illegalArgumentException.getMessage());
                    Iterator itDescendingIterator = arrayDeque.descendingIterator();
                    while (itDescendingIterator.hasNext()) {
                        Lookup lookup = (Lookup) itDescendingIterator.next();
                        sb.append("\nfor ");
                        sb.append(lookup.type);
                        if (lookup.fieldName != null) {
                            sb.append(' ');
                            sb.append(lookup.fieldName);
                        }
                    }
                    return new IllegalArgumentException(sb.toString(), illegalArgumentException);
                }
            }
            return illegalArgumentException;
        }

        public final void b(boolean z) {
            this.f43412b.removeLast();
            if (this.f43412b.isEmpty()) {
                Moshi.this.f43406b.remove();
                if (z) {
                    synchronized (Moshi.this.f43407c) {
                        try {
                            int size = this.f43411a.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                Lookup lookup = (Lookup) this.f43411a.get(i2);
                                JsonAdapter<T> jsonAdapter = (JsonAdapter) Moshi.this.f43407c.put(lookup.cacheKey, lookup.adapter);
                                if (jsonAdapter != 0) {
                                    lookup.adapter = jsonAdapter;
                                    Moshi.this.f43407c.put(lookup.cacheKey, jsonAdapter);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        d = arrayList;
        arrayList.add(StandardJsonAdapters.f43414a);
        arrayList.add(CollectionJsonAdapter.FACTORY);
        arrayList.add(MapJsonAdapter.FACTORY);
        arrayList.add(ArrayJsonAdapter.FACTORY);
        arrayList.add(RecordJsonAdapter.FACTORY);
        arrayList.add(ClassJsonAdapter.FACTORY);
    }

    public Moshi(Builder builder) {
        ArrayList arrayList = builder.f43409a;
        int size = arrayList.size();
        ArrayList arrayList2 = d;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.f43405a = Collections.unmodifiableList(arrayList3);
    }

    public final JsonAdapter a(Class cls) {
        return c(cls, Util.f43424a, null);
    }

    public final JsonAdapter b(Type type, Set set) {
        return c(type, set, null);
    }

    public final JsonAdapter c(Type type, Set set, String str) {
        JsonAdapter jsonAdapter = null;
        if (type == null) {
            r81.d("type == null");
            return null;
        }
        if (set == null) {
            r81.d("annotations == null");
            return null;
        }
        Type typeG = Util.g(Util.a(type));
        Object objAsList = set.isEmpty() ? typeG : Arrays.asList(typeG, set);
        synchronized (this.f43407c) {
            try {
                JsonAdapter jsonAdapter2 = (JsonAdapter) this.f43407c.get(objAsList);
                if (jsonAdapter2 != null) {
                    return jsonAdapter2;
                }
                LookupChain lookupChain = (LookupChain) this.f43406b.get();
                if (lookupChain == null) {
                    lookupChain = new LookupChain();
                    this.f43406b.set(lookupChain);
                }
                ArrayDeque arrayDeque = lookupChain.f43412b;
                ArrayList arrayList = lookupChain.f43411a;
                int size = arrayList.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        Lookup lookup = new Lookup(typeG, str, objAsList);
                        arrayList.add(lookup);
                        arrayDeque.add(lookup);
                        break;
                    }
                    Lookup lookup2 = (Lookup) arrayList.get(i2);
                    if (lookup2.cacheKey.equals(objAsList)) {
                        arrayDeque.add(lookup2);
                        jsonAdapter = lookup2.adapter;
                        if (jsonAdapter != null) {
                            break;
                        }
                        jsonAdapter = lookup2;
                        break;
                    }
                    i2++;
                }
                try {
                    if (jsonAdapter != null) {
                        lookupChain.b(false);
                        return jsonAdapter;
                    }
                    try {
                        int size2 = this.f43405a.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            JsonAdapter jsonAdapterCreate = ((JsonAdapter.Factory) this.f43405a.get(i3)).create(typeG, set, this);
                            if (jsonAdapterCreate != null) {
                                ((Lookup) lookupChain.f43412b.getLast()).adapter = jsonAdapterCreate;
                                lookupChain.b(true);
                                return jsonAdapterCreate;
                            }
                        }
                        throw new IllegalArgumentException("No JsonAdapter for " + Util.j(typeG, set));
                    } catch (IllegalArgumentException e2) {
                        throw lookupChain.a(e2);
                    }
                } catch (Throwable th) {
                    lookupChain.b(false);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final JsonAdapter d(JsonAdapter.Factory factory, Type type, Set set) {
        if (set == null) {
            r81.d("annotations == null");
            return null;
        }
        Type typeG = Util.g(Util.a(type));
        List list = this.f43405a;
        int iIndexOf = list.indexOf(factory);
        if (iIndexOf == -1) {
            az.m(factory, "Unable to skip past unknown factory ");
            return null;
        }
        int size = list.size();
        for (int i2 = iIndexOf + 1; i2 < size; i2++) {
            JsonAdapter jsonAdapterCreate = ((JsonAdapter.Factory) list.get(i2)).create(typeG, set, this);
            if (jsonAdapterCreate != null) {
                return jsonAdapterCreate;
            }
        }
        md.n("No next JsonAdapter for ".concat(Util.j(typeG, set)));
        return null;
    }
}

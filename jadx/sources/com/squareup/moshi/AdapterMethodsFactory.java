package com.squareup.moshi;

import com.sightcall.universal.agent.Usecase;
import com.squareup.moshi.internal.Util;
import defpackage.a61;
import defpackage.pq0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class AdapterMethodsFactory implements JsonAdapter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f43330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f43331b;

    /* JADX INFO: renamed from: com.squareup.moshi.AdapterMethodsFactory$2, reason: invalid class name */
    class AnonymousClass2 extends AdapterMethod {
        @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
        public final void d(JsonWriter jsonWriter, Object obj) throws InvocationTargetException {
            JsonAdapter[] jsonAdapterArr = this.f43344f;
            Object[] objArr = new Object[jsonAdapterArr.length + 2];
            objArr[0] = jsonWriter;
            objArr[1] = obj;
            System.arraycopy(jsonAdapterArr, 0, objArr, 2, jsonAdapterArr.length);
            try {
                this.d.invoke(this.f43342c, objArr);
            } catch (IllegalAccessException unused) {
                a61.h();
            }
        }
    }

    /* JADX INFO: renamed from: com.squareup.moshi.AdapterMethodsFactory$4, reason: invalid class name */
    class AnonymousClass4 extends AdapterMethod {
        @Override // com.squareup.moshi.AdapterMethodsFactory.AdapterMethod
        public final Object b(JsonReader jsonReader) {
            return c(jsonReader);
        }
    }

    public static abstract class AdapterMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Type f43340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Set f43341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Usecase.MultipleFormatsMultipartyAdapter f43342c;
        public final Method d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f43343e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final JsonAdapter[] f43344f;
        public final boolean g;

        public AdapterMethod(Type type, Set set, Usecase.MultipleFormatsMultipartyAdapter multipleFormatsMultipartyAdapter, Method method, int i2, int i3, boolean z) {
            this.f43340a = Util.a(type);
            this.f43341b = set;
            this.f43342c = multipleFormatsMultipartyAdapter;
            this.d = method;
            this.f43343e = i3;
            this.f43344f = new JsonAdapter[i2 - i3];
            this.g = z;
        }

        public void a(Moshi moshi, JsonAdapter.Factory factory) {
            JsonAdapter[] jsonAdapterArr = this.f43344f;
            if (jsonAdapterArr.length > 0) {
                Method method = this.d;
                Type[] genericParameterTypes = method.getGenericParameterTypes();
                Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                int length = genericParameterTypes.length;
                int i2 = this.f43343e;
                for (int i3 = i2; i3 < length; i3++) {
                    Type type = ((ParameterizedType) genericParameterTypes[i3]).getActualTypeArguments()[0];
                    Set setF = Util.f(parameterAnnotations[i3]);
                    jsonAdapterArr[i3 - i2] = (Types.b(this.f43340a, type) && this.f43341b.equals(setF)) ? moshi.d(factory, type, setF) : moshi.c(type, setF, null);
                }
            }
        }

        public Object b(JsonReader jsonReader) {
            throw new AssertionError();
        }

        public final Object c(Object obj) {
            JsonAdapter[] jsonAdapterArr = this.f43344f;
            Object[] objArr = new Object[jsonAdapterArr.length + 1];
            objArr[0] = obj;
            System.arraycopy(jsonAdapterArr, 0, objArr, 1, jsonAdapterArr.length);
            try {
                return this.d.invoke(this.f43342c, objArr);
            } catch (IllegalAccessException unused) {
                a61.h();
                return null;
            }
        }

        public void d(JsonWriter jsonWriter, Object obj) {
            throw new AssertionError();
        }
    }

    public AdapterMethodsFactory(ArrayList arrayList, ArrayList arrayList2) {
        this.f43330a = arrayList;
        this.f43331b = arrayList2;
    }

    public static AdapterMethod a(ArrayList arrayList, Type type, Set set) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterMethod adapterMethod = (AdapterMethod) arrayList.get(i2);
            if (Types.b(adapterMethod.f43340a, type) && adapterMethod.f43341b.equals(set)) {
                return adapterMethod;
            }
        }
        return null;
    }

    @Override // com.squareup.moshi.JsonAdapter.Factory
    public final JsonAdapter create(final Type type, final Set set, final Moshi moshi) {
        final AdapterMethod adapterMethodA = a(this.f43330a, type, set);
        final AdapterMethod adapterMethodA2 = a(this.f43331b, type, set);
        JsonAdapter jsonAdapterD = null;
        if (adapterMethodA == null && adapterMethodA2 == null) {
            return null;
        }
        if (adapterMethodA == null || adapterMethodA2 == null) {
            try {
                jsonAdapterD = moshi.d(this, type, set);
            } catch (IllegalArgumentException e2) {
                StringBuilder sbR = pq0.r("No ", adapterMethodA == null ? "@ToJson" : "@FromJson", " adapter for ");
                sbR.append(Util.j(type, set));
                throw new IllegalArgumentException(sbR.toString(), e2);
            }
        }
        final JsonAdapter jsonAdapter = jsonAdapterD;
        if (adapterMethodA != null) {
            adapterMethodA.a(moshi, this);
        }
        if (adapterMethodA2 != null) {
            adapterMethodA2.a(moshi, this);
        }
        return new JsonAdapter<Object>() { // from class: com.squareup.moshi.AdapterMethodsFactory.1
            @Override // com.squareup.moshi.JsonAdapter
            @Nullable
            public Object fromJson(JsonReader jsonReader) throws IOException {
                AdapterMethod adapterMethod = adapterMethodA2;
                if (adapterMethod == null) {
                    return jsonAdapter.fromJson(jsonReader);
                }
                if (!adapterMethod.g && jsonReader.z() == JsonReader.Token.NULL) {
                    jsonReader.u();
                    return null;
                }
                try {
                    return adapterMethodA2.b(jsonReader);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(cause);
                    String strN = jsonReader.n();
                    sb.append(" at ");
                    sb.append(strN);
                    throw new JsonDataException(sb.toString(), cause);
                }
            }

            @Override // com.squareup.moshi.JsonAdapter
            public void toJson(JsonWriter jsonWriter, @Nullable Object obj) throws IOException {
                AdapterMethod adapterMethod = adapterMethodA;
                if (adapterMethod == null) {
                    jsonAdapter.toJson(jsonWriter, obj);
                    return;
                }
                if (!adapterMethod.g && obj == null) {
                    jsonWriter.r();
                    return;
                }
                try {
                    adapterMethod.d(jsonWriter, obj);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(cause);
                    String strP = jsonWriter.p();
                    sb.append(" at ");
                    sb.append(strP);
                    throw new JsonDataException(sb.toString(), cause);
                }
            }

            public String toString() {
                return "JsonAdapter" + set + "(" + type + ")";
            }
        };
    }
}

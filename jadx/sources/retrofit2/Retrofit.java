package retrofit2;

import defpackage.az;
import defpackage.md;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class Retrofit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f79452a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final okhttp3.Call.Factory f79453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HttpUrl f79454c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f79455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f79456f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f79457h;

    public Retrofit(okhttp3.Call.Factory factory, HttpUrl httpUrl, List list, int i2, List list2, int i3, Executor executor) {
        this.f79453b = factory;
        this.f79454c = httpUrl;
        this.d = list;
        this.f79455e = i2;
        this.f79456f = list2;
        this.g = i3;
        this.f79457h = executor;
    }

    public final CallAdapter a(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = this.f79456f;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            CallAdapter callAdapterA = ((CallAdapter.Factory) list.get(i2)).a(type, annotationArr);
            if (callAdapterA != null) {
                return callAdapterA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((CallAdapter.Factory) list.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final Object b(final Class cls) {
        if (!cls.isInterface()) {
            md.n("API declarations must be interfaces.");
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Object[] f79458a = new Object[0];

            /* JADX WARN: Code duplicated, block: B:51:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:54:0x006a A[SYNTHETIC] */
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                ServiceMethod serviceMethodA;
                Object obj2;
                Class cls3 = cls;
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (objArr == null) {
                    objArr = this.f79458a;
                }
                Object[] objArr2 = objArr;
                Reflection reflection = Platform.f79419b;
                if (reflection.c(method)) {
                    return reflection.b(method, cls3, obj, objArr2);
                }
                Retrofit retrofit = Retrofit.this;
                while (true) {
                    Object objPutIfAbsent = retrofit.f79452a.get(method);
                    if (!(objPutIfAbsent instanceof ServiceMethod)) {
                        if (objPutIfAbsent != null) {
                            synchronized (objPutIfAbsent) {
                                obj2 = retrofit.f79452a.get(method);
                                if (obj2 == null) {
                                    serviceMethodA = (ServiceMethod) obj2;
                                    break;
                                }
                            }
                        } else {
                            Object obj3 = new Object();
                            synchronized (obj3) {
                                try {
                                    objPutIfAbsent = retrofit.f79452a.putIfAbsent(method, obj3);
                                    if (objPutIfAbsent != null) {
                                        synchronized (objPutIfAbsent) {
                                            try {
                                                obj2 = retrofit.f79452a.get(method);
                                                if (obj2 == null) {
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        serviceMethodA = (ServiceMethod) obj2;
                                        break;
                                    }
                                    try {
                                        serviceMethodA = ServiceMethod.a(retrofit, cls3, method);
                                        retrofit.f79452a.put(method, serviceMethodA);
                                        break;
                                    } catch (Throwable th2) {
                                        retrofit.f79452a.remove(method);
                                        throw th2;
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                        }
                    } else {
                        serviceMethodA = (ServiceMethod) objPutIfAbsent;
                        break;
                    }
                }
                HttpServiceMethod httpServiceMethod = (HttpServiceMethod) serviceMethodA;
                return httpServiceMethod.b(new OkHttpCall(httpServiceMethod.f79348a, obj, objArr2, httpServiceMethod.f79349b, httpServiceMethod.f79350c), objArr2);
            }
        });
    }

    public final Converter c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        List list = this.d;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            Converter converterA = ((Converter.Factory) list.get(i2)).a(type, annotationArr, annotationArr2, this);
            if (converterA != null) {
                return converterA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) list.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final Converter d(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = this.d;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            Converter converterB = ((Converter.Factory) list.get(i2)).b(type, annotationArr, this);
            if (converterB != null) {
                return converterB;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) list.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final Converter e(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        List list = this.d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Converter converterC = ((Converter.Factory) list.get(i2)).c(type, annotationArr, this);
            if (converterC != null) {
                return converterC;
            }
        }
        return BuiltInConverters.ToStringConverter.f79330b;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public okhttp3.Call.Factory f79461a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HttpUrl f79462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f79463c = new ArrayList();
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Executor f79464e;

        public Builder(Retrofit retrofit) {
            okhttp3.Call.Factory factory = retrofit.f79453b;
            List list = retrofit.f79456f;
            this.f79461a = factory;
            this.f79462b = retrofit.f79454c;
            List list2 = retrofit.d;
            int size = list2.size() - retrofit.f79455e;
            for (int i2 = 1; i2 < size; i2++) {
                this.f79463c.add((Converter.Factory) list2.get(i2));
            }
            int size2 = list.size() - retrofit.g;
            for (int i3 = 0; i3 < size2; i3++) {
                this.d.add((CallAdapter.Factory) list.get(i3));
            }
            this.f79464e = retrofit.f79457h;
        }

        public final void a(Converter.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f79463c.add(factory);
        }

        public final void b(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            HttpUrl.f76918j.getClass();
            c(HttpUrl.Companion.c(str));
        }

        public final void c(HttpUrl httpUrl) {
            List list = httpUrl.f76923f;
            if ("".equals(list.get(list.size() - 1))) {
                this.f79462b = httpUrl;
            } else {
                az.m(httpUrl, "baseUrl must end in /: ");
            }
        }

        public final Retrofit d() {
            if (this.f79462b == null) {
                md.k("Base URL required.");
                return null;
            }
            okhttp3.Call.Factory okHttpClient = this.f79461a;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            okhttp3.Call.Factory factory = okHttpClient;
            Executor executor = this.f79464e;
            if (executor == null) {
                executor = Platform.f79418a;
            }
            Executor executor2 = executor;
            BuiltInFactories builtInFactories = Platform.f79420c;
            ArrayList arrayList = new ArrayList(this.d);
            List listA = builtInFactories.a(executor2);
            arrayList.addAll(listA);
            List listB = builtInFactories.b();
            int size = listB.size();
            ArrayList arrayList2 = this.f79463c;
            ArrayList arrayList3 = new ArrayList(arrayList2.size() + 1 + size);
            arrayList3.add(new BuiltInConverters());
            arrayList3.addAll(arrayList2);
            arrayList3.addAll(listB);
            return new Retrofit(factory, this.f79462b, Collections.unmodifiableList(arrayList3), size, Collections.unmodifiableList(arrayList), listA.size(), executor2);
        }

        public Builder() {
        }
    }
}

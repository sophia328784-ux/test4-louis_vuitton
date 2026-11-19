package retrofit2;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.QueryName;
import retrofit2.http.Tag;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes5.dex */
abstract class ServiceMethod<T> {
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static HttpServiceMethod a(Retrofit retrofit, Class cls, Method method) {
        Type genericReturnType;
        boolean z;
        boolean z2;
        boolean z3;
        ParameterHandler parameterHandler;
        int i2;
        Type type;
        Annotation[] annotationArr;
        int i3;
        int i4;
        ParameterHandler[] parameterHandlerArr;
        int i5;
        String str;
        ParameterHandler tag;
        ParameterHandler part;
        ParameterHandler parameterHandler2;
        final ParameterHandler fieldMap;
        ParameterHandler queryName;
        RequestFactory.Builder builder = new RequestFactory.Builder(retrofit, cls, method);
        Annotation[] annotationArr2 = builder.d;
        int length = annotationArr2.length;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            String str2 = "HEAD";
            boolean z4 = true;
            ParameterHandler parameterHandler3 = null;
            if (i7 >= length) {
                if (builder.o == null) {
                    throw Utils.i(method, null, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
                }
                if (!builder.p) {
                    if (builder.r) {
                        throw Utils.i(method, null, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                    if (builder.q) {
                        throw Utils.i(method, null, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                Annotation[][] annotationArr3 = builder.f79443e;
                int length2 = annotationArr3.length;
                builder.w = new ParameterHandler[length2];
                int i8 = length2 - 1;
                int i9 = 0;
                while (i9 < length2) {
                    ParameterHandler[] parameterHandlerArr2 = builder.w;
                    Type type2 = builder.f79444f[i9];
                    Annotation[] annotationArr4 = annotationArr3[i9];
                    int i10 = i9 == i8 ? 1 : i6;
                    if (annotationArr4 != null) {
                        int length3 = annotationArr4.length;
                        int i11 = i6;
                        parameterHandler = parameterHandler3;
                        while (i11 < length3) {
                            Annotation annotation = annotationArr4[i11];
                            Annotation[][] annotationArr5 = annotationArr3;
                            if (annotation instanceof Url) {
                                builder.c(i9, type2);
                                if (builder.n) {
                                    throw Utils.j(method, i9, "Multiple @Url method annotations found.", new Object[0]);
                                }
                                if (builder.f79447j) {
                                    throw Utils.j(method, i9, "@Path parameters may not be used with @Url.", new Object[0]);
                                }
                                if (builder.f79448k) {
                                    throw Utils.j(method, i9, "A @Url parameter must not come after a @Query.", new Object[0]);
                                }
                                if (builder.l) {
                                    throw Utils.j(method, i9, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                                }
                                if (builder.m) {
                                    throw Utils.j(method, i9, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                                }
                                if (builder.s != null) {
                                    throw Utils.j(method, i9, "@Url cannot be used with @%s URL", builder.o);
                                }
                                builder.n = true;
                                if (type2 != HttpUrl.class && type2 != String.class && type2 != URI.class && (!(type2 instanceof Class) || !"android.net.Uri".equals(((Class) type2).getName()))) {
                                    throw Utils.j(method, i9, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                }
                                tag = new ParameterHandler.RelativeUrl(method, i9);
                                i2 = length2;
                                str = str2;
                                i5 = i8;
                                parameterHandlerArr = parameterHandlerArr2;
                                type = type2;
                                annotationArr = annotationArr4;
                                i3 = length3;
                                i4 = i11;
                            } else {
                                i2 = length2;
                                boolean z5 = annotation instanceof Path;
                                Retrofit retrofit3 = builder.f79440a;
                                if (z5) {
                                    builder.c(i9, type2);
                                    if (builder.f79448k) {
                                        throw Utils.j(method, i9, "A @Path parameter must not come after a @Query.", new Object[0]);
                                    }
                                    if (builder.l) {
                                        throw Utils.j(method, i9, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                                    }
                                    if (builder.m) {
                                        throw Utils.j(method, i9, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                                    }
                                    if (builder.n) {
                                        throw Utils.j(method, i9, "@Path parameters may not be used with @Url.", new Object[0]);
                                    }
                                    if (builder.s == null) {
                                        throw Utils.j(method, i9, "@Path can only be used with relative url on @%s", builder.o);
                                    }
                                    builder.f79447j = true;
                                    Path path = (Path) annotation;
                                    String strValue = path.value();
                                    if (!RequestFactory.Builder.z.matcher(strValue).matches()) {
                                        throw Utils.j(method, i9, "@Path parameter name must match %s. Found: %s", RequestFactory.Builder.y.pattern(), strValue);
                                    }
                                    if (!builder.v.contains(strValue)) {
                                        throw Utils.j(method, i9, "URL \"%s\" does not contain \"{%s}\".", builder.s, strValue);
                                    }
                                    i3 = length3;
                                    i4 = i11;
                                    parameterHandlerArr = parameterHandlerArr2;
                                    tag = new ParameterHandler.Path(builder.f79442c, i9, strValue, retrofit3.e(type2, annotationArr4), path.encoded());
                                    type = type2;
                                    annotationArr = annotationArr4;
                                    str = str2;
                                    i5 = i8;
                                } else {
                                    ParameterHandler[] parameterHandlerArr3 = parameterHandlerArr2;
                                    type = type2;
                                    annotationArr = annotationArr4;
                                    i3 = length3;
                                    i4 = i11;
                                    parameterHandlerArr = parameterHandlerArr3;
                                    if (annotation instanceof Query) {
                                        builder.c(i9, type);
                                        Query query = (Query) annotation;
                                        String strValue2 = query.value();
                                        boolean zEncoded = query.encoded();
                                        Class clsE = Utils.e(type);
                                        i5 = i8;
                                        builder.f79448k = true;
                                        if (Iterable.class.isAssignableFrom(clsE)) {
                                            if (!(type instanceof ParameterizedType)) {
                                                throw Utils.j(method, i9, clsE.getSimpleName() + " must include generic type (e.g., " + clsE.getSimpleName() + "<String>)", new Object[0]);
                                            }
                                            final ParameterHandler.Query query2 = new ParameterHandler.Query(strValue2, retrofit3.e(Utils.d(0, (ParameterizedType) type), annotationArr), zEncoded);
                                            tag = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                public AnonymousClass1() {
                                                }

                                                @Override // retrofit2.ParameterHandler
                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                    Iterable iterable = (Iterable) obj;
                                                    if (iterable == null) {
                                                        return;
                                                    }
                                                    Iterator<T> it = iterable.iterator();
                                                    while (it.hasNext()) {
                                                        ParameterHandler.this.a(requestBuilder, it.next());
                                                    }
                                                }
                                            };
                                        } else if (clsE.isArray()) {
                                            final ParameterHandler.Query query3 = new ParameterHandler.Query(strValue2, retrofit3.e(RequestFactory.Builder.a(clsE.getComponentType()), annotationArr), zEncoded);
                                            tag = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                public AnonymousClass2() {
                                                }

                                                @Override // retrofit2.ParameterHandler
                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                    if (obj == null) {
                                                        return;
                                                    }
                                                    int length4 = Array.getLength(obj);
                                                    for (int i12 = 0; i12 < length4; i12++) {
                                                        ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                    }
                                                }
                                            };
                                        } else {
                                            queryName = new ParameterHandler.Query(strValue2, retrofit3.e(type, annotationArr), zEncoded);
                                            tag = queryName;
                                        }
                                        str = str2;
                                    } else {
                                        i5 = i8;
                                        if (annotation instanceof QueryName) {
                                            builder.c(i9, type);
                                            boolean zEncoded2 = ((QueryName) annotation).encoded();
                                            Class clsE2 = Utils.e(type);
                                            builder.l = true;
                                            if (Iterable.class.isAssignableFrom(clsE2)) {
                                                if (!(type instanceof ParameterizedType)) {
                                                    throw Utils.j(method, i9, clsE2.getSimpleName() + " must include generic type (e.g., " + clsE2.getSimpleName() + "<String>)", new Object[0]);
                                                }
                                                final ParameterHandler.QueryName queryName2 = new ParameterHandler.QueryName(retrofit3.e(Utils.d(0, (ParameterizedType) type), annotationArr), zEncoded2);
                                                tag = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                    public AnonymousClass1() {
                                                    }

                                                    @Override // retrofit2.ParameterHandler
                                                    public final void a(RequestBuilder requestBuilder, Object obj) {
                                                        Iterable iterable = (Iterable) obj;
                                                        if (iterable == null) {
                                                            return;
                                                        }
                                                        Iterator<T> it = iterable.iterator();
                                                        while (it.hasNext()) {
                                                            ParameterHandler.this.a(requestBuilder, it.next());
                                                        }
                                                    }
                                                };
                                            } else if (clsE2.isArray()) {
                                                final ParameterHandler.QueryName queryName3 = new ParameterHandler.QueryName(retrofit3.e(RequestFactory.Builder.a(clsE2.getComponentType()), annotationArr), zEncoded2);
                                                tag = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                    public AnonymousClass2() {
                                                    }

                                                    @Override // retrofit2.ParameterHandler
                                                    public final void a(RequestBuilder requestBuilder, Object obj) {
                                                        if (obj == null) {
                                                            return;
                                                        }
                                                        int length4 = Array.getLength(obj);
                                                        for (int i12 = 0; i12 < length4; i12++) {
                                                            ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                        }
                                                    }
                                                };
                                            } else {
                                                queryName = new ParameterHandler.QueryName(retrofit3.e(type, annotationArr), zEncoded2);
                                                tag = queryName;
                                            }
                                        } else if (annotation instanceof QueryMap) {
                                            builder.c(i9, type);
                                            Class clsE3 = Utils.e(type);
                                            builder.m = true;
                                            if (!Map.class.isAssignableFrom(clsE3)) {
                                                throw Utils.j(method, i9, "@QueryMap parameter type must be Map.", new Object[0]);
                                            }
                                            Type typeF = Utils.f(type, clsE3);
                                            if (!(typeF instanceof ParameterizedType)) {
                                                throw Utils.j(method, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                            }
                                            ParameterizedType parameterizedType = (ParameterizedType) typeF;
                                            Type typeD = Utils.d(0, parameterizedType);
                                            if (String.class != typeD) {
                                                throw Utils.j(method, i9, "@QueryMap keys must be of type String: " + typeD, new Object[0]);
                                            }
                                            tag = new ParameterHandler.QueryMap(method, i9, retrofit3.e(Utils.d(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
                                        } else {
                                            str = str2;
                                            if (annotation instanceof Header) {
                                                builder.c(i9, type);
                                                Header header = (Header) annotation;
                                                String strValue3 = header.value();
                                                Class clsE4 = Utils.e(type);
                                                if (Iterable.class.isAssignableFrom(clsE4)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw Utils.j(method, i9, clsE4.getSimpleName() + " must include generic type (e.g., " + clsE4.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    final ParameterHandler.Header header2 = new ParameterHandler.Header(strValue3, retrofit3.e(Utils.d(0, (ParameterizedType) type), annotationArr), header.allowUnsafeNonAsciiValues());
                                                    tag = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                        public AnonymousClass1() {
                                                        }

                                                        @Override // retrofit2.ParameterHandler
                                                        public final void a(RequestBuilder requestBuilder, Object obj) {
                                                            Iterable iterable = (Iterable) obj;
                                                            if (iterable == null) {
                                                                return;
                                                            }
                                                            Iterator<T> it = iterable.iterator();
                                                            while (it.hasNext()) {
                                                                ParameterHandler.this.a(requestBuilder, it.next());
                                                            }
                                                        }
                                                    };
                                                } else if (clsE4.isArray()) {
                                                    final ParameterHandler.Header header3 = new ParameterHandler.Header(strValue3, retrofit3.e(RequestFactory.Builder.a(clsE4.getComponentType()), annotationArr), header.allowUnsafeNonAsciiValues());
                                                    tag = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                        public AnonymousClass2() {
                                                        }

                                                        @Override // retrofit2.ParameterHandler
                                                        public final void a(RequestBuilder requestBuilder, Object obj) {
                                                            if (obj == null) {
                                                                return;
                                                            }
                                                            int length4 = Array.getLength(obj);
                                                            for (int i12 = 0; i12 < length4; i12++) {
                                                                ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                            }
                                                        }
                                                    };
                                                } else {
                                                    part = new ParameterHandler.Header(strValue3, retrofit3.e(type, annotationArr), header.allowUnsafeNonAsciiValues());
                                                    tag = part;
                                                }
                                            } else if (annotation instanceof HeaderMap) {
                                                if (type == Headers.class) {
                                                    tag = new ParameterHandler.Headers(method, i9);
                                                } else {
                                                    builder.c(i9, type);
                                                    Class clsE5 = Utils.e(type);
                                                    if (!Map.class.isAssignableFrom(clsE5)) {
                                                        throw Utils.j(method, i9, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                                                    }
                                                    Type typeF2 = Utils.f(type, clsE5);
                                                    if (!(typeF2 instanceof ParameterizedType)) {
                                                        throw Utils.j(method, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                    ParameterizedType parameterizedType2 = (ParameterizedType) typeF2;
                                                    Type typeD2 = Utils.d(0, parameterizedType2);
                                                    if (String.class != typeD2) {
                                                        throw Utils.j(method, i9, "@HeaderMap keys must be of type String: " + typeD2, new Object[0]);
                                                    }
                                                    fieldMap = new ParameterHandler.HeaderMap(method, i9, retrofit3.e(Utils.d(1, parameterizedType2), annotationArr), ((HeaderMap) annotation).allowUnsafeNonAsciiValues());
                                                    tag = fieldMap;
                                                }
                                            } else if (annotation instanceof Field) {
                                                builder.c(i9, type);
                                                if (!builder.q) {
                                                    throw Utils.j(method, i9, "@Field parameters can only be used with form encoding.", new Object[0]);
                                                }
                                                Field field = (Field) annotation;
                                                String strValue4 = field.value();
                                                boolean zEncoded3 = field.encoded();
                                                builder.g = true;
                                                Class clsE6 = Utils.e(type);
                                                if (Iterable.class.isAssignableFrom(clsE6)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw Utils.j(method, i9, clsE6.getSimpleName() + " must include generic type (e.g., " + clsE6.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    final ParameterHandler.Field field2 = new ParameterHandler.Field(strValue4, retrofit3.e(Utils.d(0, (ParameterizedType) type), annotationArr), zEncoded3);
                                                    tag = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                        public AnonymousClass1() {
                                                        }

                                                        @Override // retrofit2.ParameterHandler
                                                        public final void a(RequestBuilder requestBuilder, Object obj) {
                                                            Iterable iterable = (Iterable) obj;
                                                            if (iterable == null) {
                                                                return;
                                                            }
                                                            Iterator<T> it = iterable.iterator();
                                                            while (it.hasNext()) {
                                                                ParameterHandler.this.a(requestBuilder, it.next());
                                                            }
                                                        }
                                                    };
                                                } else if (clsE6.isArray()) {
                                                    final ParameterHandler.Field field3 = new ParameterHandler.Field(strValue4, retrofit3.e(RequestFactory.Builder.a(clsE6.getComponentType()), annotationArr), zEncoded3);
                                                    tag = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                        public AnonymousClass2() {
                                                        }

                                                        @Override // retrofit2.ParameterHandler
                                                        public final void a(RequestBuilder requestBuilder, Object obj) {
                                                            if (obj == null) {
                                                                return;
                                                            }
                                                            int length4 = Array.getLength(obj);
                                                            for (int i12 = 0; i12 < length4; i12++) {
                                                                ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                            }
                                                        }
                                                    };
                                                } else {
                                                    part = new ParameterHandler.Field(strValue4, retrofit3.e(type, annotationArr), zEncoded3);
                                                    tag = part;
                                                }
                                            } else {
                                                if (annotation instanceof FieldMap) {
                                                    builder.c(i9, type);
                                                    if (!builder.q) {
                                                        throw Utils.j(method, i9, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                                                    }
                                                    Class clsE7 = Utils.e(type);
                                                    if (!Map.class.isAssignableFrom(clsE7)) {
                                                        throw Utils.j(method, i9, "@FieldMap parameter type must be Map.", new Object[0]);
                                                    }
                                                    Type typeF3 = Utils.f(type, clsE7);
                                                    if (!(typeF3 instanceof ParameterizedType)) {
                                                        throw Utils.j(method, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                    ParameterizedType parameterizedType3 = (ParameterizedType) typeF3;
                                                    Type typeD3 = Utils.d(0, parameterizedType3);
                                                    if (String.class != typeD3) {
                                                        throw Utils.j(method, i9, "@FieldMap keys must be of type String: " + typeD3, new Object[0]);
                                                    }
                                                    Converter converterE = retrofit3.e(Utils.d(1, parameterizedType3), annotationArr);
                                                    builder.g = true;
                                                    fieldMap = new ParameterHandler.FieldMap(method, i9, converterE, ((FieldMap) annotation).encoded());
                                                } else if (annotation instanceof Part) {
                                                    builder.c(i9, type);
                                                    if (!builder.r) {
                                                        throw Utils.j(method, i9, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                                                    }
                                                    Part part2 = (Part) annotation;
                                                    builder.f79445h = true;
                                                    String strValue5 = part2.value();
                                                    Class clsE8 = Utils.e(type);
                                                    if (strValue5.isEmpty()) {
                                                        boolean zIsAssignableFrom = Iterable.class.isAssignableFrom(clsE8);
                                                        fieldMap = ParameterHandler.RawPart.f79414a;
                                                        if (zIsAssignableFrom) {
                                                            if (!(type instanceof ParameterizedType)) {
                                                                throw Utils.j(method, i9, clsE8.getSimpleName() + " must include generic type (e.g., " + clsE8.getSimpleName() + "<String>)", new Object[0]);
                                                            }
                                                            if (!MultipartBody.Part.class.isAssignableFrom(Utils.e(Utils.d(0, (ParameterizedType) type)))) {
                                                                throw Utils.j(method, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                            }
                                                            tag = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // retrofit2.ParameterHandler
                                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                                    Iterable iterable = (Iterable) obj;
                                                                    if (iterable == null) {
                                                                        return;
                                                                    }
                                                                    Iterator<T> it = iterable.iterator();
                                                                    while (it.hasNext()) {
                                                                        ParameterHandler.this.a(requestBuilder, it.next());
                                                                    }
                                                                }
                                                            };
                                                        } else if (clsE8.isArray()) {
                                                            if (!MultipartBody.Part.class.isAssignableFrom(clsE8.getComponentType())) {
                                                                throw Utils.j(method, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                            }
                                                            part = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                                public AnonymousClass2() {
                                                                }

                                                                @Override // retrofit2.ParameterHandler
                                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                                    if (obj == null) {
                                                                        return;
                                                                    }
                                                                    int length4 = Array.getLength(obj);
                                                                    for (int i12 = 0; i12 < length4; i12++) {
                                                                        ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                                    }
                                                                }
                                                            };
                                                            tag = part;
                                                        } else if (!MultipartBody.Part.class.isAssignableFrom(clsE8)) {
                                                            throw Utils.j(method, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                    } else {
                                                        String[] strArr = {"Content-Disposition", fc.h("form-data; name=\"", strValue5, "\""), "Content-Transfer-Encoding", part2.encoding()};
                                                        Headers.f76915c.getClass();
                                                        Headers headersA = Headers.Companion.a(strArr);
                                                        if (Iterable.class.isAssignableFrom(clsE8)) {
                                                            if (!(type instanceof ParameterizedType)) {
                                                                throw Utils.j(method, i9, clsE8.getSimpleName() + " must include generic type (e.g., " + clsE8.getSimpleName() + "<String>)", new Object[0]);
                                                            }
                                                            Type typeD4 = Utils.d(0, (ParameterizedType) type);
                                                            if (MultipartBody.Part.class.isAssignableFrom(Utils.e(typeD4))) {
                                                                throw Utils.j(method, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                            }
                                                            final ParameterHandler.Part part3 = new ParameterHandler.Part(method, i9, headersA, retrofit3.c(typeD4, annotationArr, annotationArr2));
                                                            parameterHandler2 = new ParameterHandler<Iterable<Object>>() { // from class: retrofit2.ParameterHandler.1
                                                                public AnonymousClass1() {
                                                                }

                                                                @Override // retrofit2.ParameterHandler
                                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                                    Iterable iterable = (Iterable) obj;
                                                                    if (iterable == null) {
                                                                        return;
                                                                    }
                                                                    Iterator<T> it = iterable.iterator();
                                                                    while (it.hasNext()) {
                                                                        ParameterHandler.this.a(requestBuilder, it.next());
                                                                    }
                                                                }
                                                            };
                                                        } else if (clsE8.isArray()) {
                                                            Class clsA = RequestFactory.Builder.a(clsE8.getComponentType());
                                                            if (MultipartBody.Part.class.isAssignableFrom(clsA)) {
                                                                throw Utils.j(method, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                            }
                                                            final ParameterHandler.Part part4 = new ParameterHandler.Part(method, i9, headersA, retrofit3.c(clsA, annotationArr, annotationArr2));
                                                            parameterHandler2 = new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
                                                                public AnonymousClass2() {
                                                                }

                                                                @Override // retrofit2.ParameterHandler
                                                                public final void a(RequestBuilder requestBuilder, Object obj) {
                                                                    if (obj == null) {
                                                                        return;
                                                                    }
                                                                    int length4 = Array.getLength(obj);
                                                                    for (int i12 = 0; i12 < length4; i12++) {
                                                                        ParameterHandler.this.a(requestBuilder, Array.get(obj, i12));
                                                                    }
                                                                }
                                                            };
                                                        } else {
                                                            if (MultipartBody.Part.class.isAssignableFrom(clsE8)) {
                                                                throw Utils.j(method, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                            }
                                                            part = new ParameterHandler.Part(method, i9, headersA, retrofit3.c(type, annotationArr, annotationArr2));
                                                            tag = part;
                                                        }
                                                        tag = parameterHandler2;
                                                    }
                                                } else if (annotation instanceof PartMap) {
                                                    builder.c(i9, type);
                                                    if (!builder.r) {
                                                        throw Utils.j(method, i9, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                                                    }
                                                    builder.f79445h = true;
                                                    Class clsE9 = Utils.e(type);
                                                    if (!Map.class.isAssignableFrom(clsE9)) {
                                                        throw Utils.j(method, i9, "@PartMap parameter type must be Map.", new Object[0]);
                                                    }
                                                    Type typeF4 = Utils.f(type, clsE9);
                                                    if (!(typeF4 instanceof ParameterizedType)) {
                                                        throw Utils.j(method, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                    ParameterizedType parameterizedType4 = (ParameterizedType) typeF4;
                                                    Type typeD5 = Utils.d(0, parameterizedType4);
                                                    if (String.class != typeD5) {
                                                        throw Utils.j(method, i9, "@PartMap keys must be of type String: " + typeD5, new Object[0]);
                                                    }
                                                    Type typeD6 = Utils.d(1, parameterizedType4);
                                                    if (MultipartBody.Part.class.isAssignableFrom(Utils.e(typeD6))) {
                                                        throw Utils.j(method, i9, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                                                    }
                                                    tag = new ParameterHandler.PartMap(method, i9, retrofit3.c(typeD6, annotationArr, annotationArr2), ((PartMap) annotation).encoding());
                                                } else if (annotation instanceof Body) {
                                                    builder.c(i9, type);
                                                    if (builder.q || builder.r) {
                                                        throw Utils.j(method, i9, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                                                    }
                                                    if (builder.f79446i) {
                                                        throw Utils.j(method, i9, "Multiple @Body method annotations found.", new Object[0]);
                                                    }
                                                    try {
                                                        Converter converterC = retrofit3.c(type, annotationArr, annotationArr2);
                                                        builder.f79446i = true;
                                                        tag = new ParameterHandler.Body(method, i9, converterC);
                                                    } catch (RuntimeException e2) {
                                                        throw Utils.k(method, e2, i9, "Unable to create @Body converter for %s", type);
                                                    }
                                                } else if (annotation instanceof Tag) {
                                                    builder.c(i9, type);
                                                    Class clsA2 = RequestFactory.Builder.a(Utils.e(type));
                                                    for (int i12 = i9 - 1; i12 >= 0; i12--) {
                                                        ParameterHandler parameterHandler4 = builder.w[i12];
                                                        if ((parameterHandler4 instanceof ParameterHandler.Tag) && ((ParameterHandler.Tag) parameterHandler4).f79417a.equals(clsA2)) {
                                                            StringBuilder sb = new StringBuilder("@Tag type ");
                                                            o60.z(clsA2, sb, " is duplicate of ");
                                                            throw Utils.j(method, i9, n00.r(Platform.f79419b.a(method, i12), " and would always overwrite its value.", sb), new Object[0]);
                                                        }
                                                    }
                                                    tag = new ParameterHandler.Tag(clsA2);
                                                } else {
                                                    tag = null;
                                                }
                                                tag = fieldMap;
                                            }
                                        }
                                        str = str2;
                                    }
                                }
                            }
                            if (tag != null) {
                                if (parameterHandler != null) {
                                    throw Utils.j(method, i9, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                                }
                                parameterHandler = tag;
                            }
                            i11 = i4 + 1;
                            annotationArr4 = annotationArr;
                            annotationArr3 = annotationArr5;
                            length2 = i2;
                            length3 = i3;
                            i8 = i5;
                            str2 = str;
                            type2 = type;
                            parameterHandlerArr2 = parameterHandlerArr;
                        }
                    } else {
                        parameterHandler = null;
                    }
                    Annotation[][] annotationArr6 = annotationArr3;
                    int i13 = length2;
                    String str3 = str2;
                    int i14 = i8;
                    ParameterHandler[] parameterHandlerArr4 = parameterHandlerArr2;
                    Type type3 = type2;
                    if (parameterHandler == null) {
                        if (i10 != 0) {
                            try {
                                if (Utils.e(type3) == Continuation.class) {
                                    builder.x = true;
                                    parameterHandler = null;
                                }
                            } catch (NoClassDefFoundError unused) {
                            }
                        }
                        throw Utils.j(method, i9, "No Retrofit annotation found.", new Object[0]);
                    }
                    parameterHandlerArr4[i9] = parameterHandler;
                    i9++;
                    annotationArr3 = annotationArr6;
                    length2 = i13;
                    i8 = i14;
                    str2 = str3;
                    i6 = 0;
                    parameterHandler3 = null;
                }
                String str4 = str2;
                if (builder.s == null && !builder.n) {
                    throw Utils.i(method, null, "Missing either @%s URL or @Url parameter.", builder.o);
                }
                boolean z6 = builder.q;
                if (!z6 && !builder.r && !builder.p && builder.f79446i) {
                    throw Utils.i(method, null, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z6 && !builder.g) {
                    throw Utils.i(method, null, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (builder.r && !builder.f79445h) {
                    throw Utils.i(method, null, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                RequestFactory requestFactory = new RequestFactory(builder);
                Type genericReturnType2 = method.getGenericReturnType();
                if (Utils.g(genericReturnType2)) {
                    throw Utils.i(method, null, "Method return type must not include a type variable or wildcard: %s", genericReturnType2);
                }
                if (genericReturnType2 == Void.TYPE) {
                    throw Utils.i(method, null, "Service methods cannot return void.", new Object[0]);
                }
                Annotation[] annotations = method.getAnnotations();
                boolean z7 = requestFactory.l;
                if (z7) {
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    Type typeD7 = ((ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]).getActualTypeArguments()[0];
                    if (typeD7 instanceof WildcardType) {
                        typeD7 = ((WildcardType) typeD7).getLowerBounds()[0];
                    }
                    if (Utils.e(typeD7) == Response.class && (typeD7 instanceof ParameterizedType)) {
                        typeD7 = Utils.d(0, (ParameterizedType) typeD7);
                        z2 = true;
                        z3 = false;
                    } else {
                        if (Utils.e(typeD7) == Call.class) {
                            throw Utils.i(method, null, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", Utils.d(0, (ParameterizedType) typeD7));
                        }
                        z3 = Utils.f79467b && typeD7 == Unit.class;
                        z2 = false;
                    }
                    genericReturnType = new Utils.ParameterizedTypeImpl(null, Call.class, typeD7);
                    if (!Utils.h(annotations, SkipCallbackExecutor.class)) {
                        Annotation[] annotationArr7 = new Annotation[annotations.length + 1];
                        annotationArr7[0] = SkipCallbackExecutorImpl.f79465f;
                        System.arraycopy(annotations, 0, annotationArr7, 1, annotations.length);
                        annotations = annotationArr7;
                    }
                    z = z3;
                } else {
                    genericReturnType = method.getGenericReturnType();
                    z = false;
                    z2 = false;
                }
                try {
                    CallAdapter callAdapterA = retrofit.a(genericReturnType, annotations);
                    Type typeA = callAdapterA.a();
                    if (typeA == okhttp3.Response.class) {
                        throw Utils.i(method, null, n00.p(Utils.e(typeA), new StringBuilder("'"), "' is not a valid response body type. Did you mean ResponseBody?"), new Object[0]);
                    }
                    if (typeA == Response.class) {
                        throw Utils.i(method, null, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                    }
                    if (requestFactory.d.equals(str4) && !Void.class.equals(typeA) && (!Utils.f79467b || typeA != Unit.class)) {
                        throw Utils.i(method, null, "HEAD method must use Void or Unit as response type.", new Object[0]);
                    }
                    try {
                        Converter converterD = retrofit.d(typeA, method.getAnnotations());
                        okhttp3.Call.Factory factory = retrofit.f79453b;
                        if (z7) {
                            return z2 ? new HttpServiceMethod.SuspendForResponse(requestFactory, factory, converterD, callAdapterA) : new HttpServiceMethod.SuspendForBody(requestFactory, factory, converterD, callAdapterA, z);
                        }
                        return new HttpServiceMethod.CallAdapted(requestFactory, factory, converterD, callAdapterA);
                    } catch (RuntimeException e3) {
                        throw Utils.i(method, e3, "Unable to create converter for %s", typeA);
                    }
                } catch (RuntimeException e4) {
                    throw Utils.i(method, e4, "Unable to create call adapter for %s", genericReturnType);
                }
            }
            Annotation annotation2 = annotationArr2[i7];
            if (annotation2 instanceof DELETE) {
                builder.b("DELETE", ((DELETE) annotation2).value(), false);
            } else if (annotation2 instanceof GET) {
                builder.b("GET", ((GET) annotation2).value(), false);
            } else if (annotation2 instanceof HEAD) {
                builder.b("HEAD", ((HEAD) annotation2).value(), false);
            } else if (annotation2 instanceof PATCH) {
                builder.b("PATCH", ((PATCH) annotation2).value(), true);
            } else if (annotation2 instanceof POST) {
                builder.b("POST", ((POST) annotation2).value(), true);
            } else if (annotation2 instanceof PUT) {
                builder.b("PUT", ((PUT) annotation2).value(), true);
            } else if (annotation2 instanceof OPTIONS) {
                builder.b("OPTIONS", ((OPTIONS) annotation2).value(), false);
            } else if (annotation2 instanceof HTTP) {
                HTTP http = (HTTP) annotation2;
                builder.b(http.method(), http.path(), http.hasBody());
            } else if (annotation2 instanceof retrofit2.http.Headers) {
                retrofit2.http.Headers headers = (retrofit2.http.Headers) annotation2;
                String[] strArrValue = headers.value();
                if (strArrValue.length == 0) {
                    throw Utils.i(method, null, "@Headers annotation is empty.", new Object[0]);
                }
                boolean zAllowUnsafeNonAsciiValues = headers.allowUnsafeNonAsciiValues();
                Headers.Builder builder2 = new Headers.Builder();
                int length4 = strArrValue.length;
                int i15 = 0;
                while (i15 < length4) {
                    String str5 = strArrValue[i15];
                    int iIndexOf = str5.indexOf(58);
                    boolean z8 = z4;
                    if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str5.length() - 1) {
                        throw Utils.i(method, null, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str5);
                    }
                    String strSubstring = str5.substring(0, iIndexOf);
                    String strTrim = str5.substring(iIndexOf + 1).trim();
                    if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                        try {
                            MediaType.f76933e.getClass();
                            builder.u = MediaType.Companion.a(strTrim);
                        } catch (IllegalArgumentException e5) {
                            throw Utils.i(method, e5, "Malformed content type: %s", strTrim);
                        }
                    } else if (zAllowUnsafeNonAsciiValues) {
                        builder2.c(strSubstring, strTrim);
                    } else {
                        builder2.a(strSubstring, strTrim);
                    }
                    i15++;
                    z4 = z8;
                }
                builder.t = builder2.d();
            } else if (annotation2 instanceof Multipart) {
                if (builder.q) {
                    throw Utils.i(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                builder.r = true;
            } else if (!(annotation2 instanceof FormUrlEncoded)) {
                continue;
            } else {
                if (builder.r) {
                    throw Utils.i(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                builder.q = true;
            }
            i7++;
        }
    }
}

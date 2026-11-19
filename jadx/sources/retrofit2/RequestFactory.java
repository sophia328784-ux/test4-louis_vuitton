package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;

/* JADX INFO: loaded from: classes5.dex */
final class RequestFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f79431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f79432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HttpUrl f79433c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f79434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Headers f79435f;
    public final MediaType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f79436h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f79437i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f79438j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ParameterHandler[] f79439k;
    public final boolean l;

    public static final class Builder {
        public static final Pattern y = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
        public static final Pattern z = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Retrofit f79440a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f79441b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f79442c;
        public final Annotation[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Annotation[][] f79443e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Type[] f79444f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f79445h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f79446i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f79447j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f79448k;
        public boolean l;
        public boolean m;
        public boolean n;
        public String o;
        public boolean p;
        public boolean q;
        public boolean r;
        public String s;
        public Headers t;
        public MediaType u;
        public LinkedHashSet v;
        public ParameterHandler[] w;
        public boolean x;

        public Builder(Retrofit retrofit, Class cls, Method method) {
            this.f79440a = retrofit;
            this.f79441b = cls;
            this.f79442c = method;
            this.d = method.getAnnotations();
            this.f79444f = method.getGenericParameterTypes();
            this.f79443e = method.getParameterAnnotations();
        }

        public static Class a(Class cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            return Short.TYPE == cls ? Short.class : cls;
        }

        public final void b(String str, String str2, boolean z2) {
            String str3 = this.o;
            Method method = this.f79442c;
            if (str3 != null) {
                throw Utils.i(method, null, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.o = str;
            this.p = z2;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            Pattern pattern = y;
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (pattern.matcher(strSubstring).find()) {
                    throw Utils.i(method, null, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.s = str2;
            Matcher matcher = pattern.matcher(str2);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            this.v = linkedHashSet;
        }

        public final void c(int i2, Type type) {
            if (Utils.g(type)) {
                throw Utils.j(this.f79442c, i2, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }
    }

    public RequestFactory(Builder builder) {
        this.f79431a = builder.f79441b;
        this.f79432b = builder.f79442c;
        this.f79433c = builder.f79440a.f79454c;
        this.d = builder.o;
        this.f79434e = builder.s;
        this.f79435f = builder.t;
        this.g = builder.u;
        this.f79436h = builder.p;
        this.f79437i = builder.q;
        this.f79438j = builder.r;
        this.f79439k = builder.w;
        this.l = builder.x;
    }
}

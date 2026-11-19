package retrofit2;

import defpackage.a61;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.internal._HeadersCommonKt;
import okio.Buffer;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
abstract class ParameterHandler<T> {

    public static final class Body<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Converter f79381c;

        public Body(Method method, int i2, Converter converter) {
            this.f79379a = method;
            this.f79380b = i2;
            this.f79381c = converter;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            int i2 = this.f79380b;
            Method method = this.f79379a;
            if (obj == null) {
                throw Utils.j(method, i2, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                requestBuilder.f79429k = (RequestBody) this.f79381c.f(obj);
            } catch (IOException e2) {
                throw Utils.k(method, e2, i2, o60.n("Unable to convert ", obj, " to RequestBody"), new Object[0]);
            }
        }
    }

    public static final class Field<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f79382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Converter f79383b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f79384c;

        public Field(String str, Converter converter, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f79382a = str;
            this.f79383b = converter;
            this.f79384c = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f79383b.f(obj)) == null) {
                return;
            }
            requestBuilder.a(this.f79382a, str, this.f79384c);
        }
    }

    public static final class FieldMap<T> extends ParameterHandler<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Converter f79387c;
        public final boolean d;

        public FieldMap(Method method, int i2, Converter converter, boolean z) {
            this.f79385a = method;
            this.f79386b = i2;
            this.f79387c = converter;
            this.d = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            Map map = (Map) obj;
            int i2 = this.f79386b;
            Method method = this.f79385a;
            if (map == null) {
                throw Utils.j(method, i2, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw Utils.j(method, i2, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw Utils.j(method, i2, fc.h("Field map contained null value for key '", str, "'."), new Object[0]);
                }
                Converter converter = this.f79387c;
                String str2 = (String) converter.f(value);
                if (str2 == null) {
                    throw Utils.j(method, i2, "Field map value '" + value + "' converted to null by " + converter.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                requestBuilder.a(str, str2, this.d);
            }
        }
    }

    public static final class Header<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f79388a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Converter f79389b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f79390c;

        public Header(String str, Converter converter, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f79388a = str;
            this.f79389b = converter;
            this.f79390c = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f79389b.f(obj)) == null) {
                return;
            }
            requestBuilder.b(this.f79388a, str, this.f79390c);
        }
    }

    public static final class HeaderMap<T> extends ParameterHandler<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79391a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79392b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Converter f79393c;
        public final boolean d;

        public HeaderMap(Method method, int i2, Converter converter, boolean z) {
            this.f79391a = method;
            this.f79392b = i2;
            this.f79393c = converter;
            this.d = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            Map map = (Map) obj;
            int i2 = this.f79392b;
            Method method = this.f79391a;
            if (map == null) {
                throw Utils.j(method, i2, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw Utils.j(method, i2, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw Utils.j(method, i2, fc.h("Header map contained null value for key '", str, "'."), new Object[0]);
                }
                requestBuilder.b(str, (String) this.f79393c.f(value), this.d);
            }
        }
    }

    public static final class Headers extends ParameterHandler<okhttp3.Headers> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79394a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79395b;

        public Headers(Method method, int i2) {
            this.f79394a = method;
            this.f79395b = i2;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            okhttp3.Headers headers = (okhttp3.Headers) obj;
            if (headers == null) {
                throw Utils.j(this.f79394a, this.f79395b, "Headers parameter must not be null.", new Object[0]);
            }
            okhttp3.Headers.Builder builder = requestBuilder.f79425f;
            builder.getClass();
            int size = headers.size();
            for (int i2 = 0; i2 < size; i2++) {
                _HeadersCommonKt.a(builder, headers.f(i2), headers.m(i2));
            }
        }
    }

    public static final class Part<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79396a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79397b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final okhttp3.Headers f79398c;
        public final Converter d;

        public Part(Method method, int i2, okhttp3.Headers headers, Converter converter) {
            this.f79396a = method;
            this.f79397b = i2;
            this.f79398c = headers;
            this.d = converter;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            if (obj == null) {
                return;
            }
            try {
                RequestBody requestBody = (RequestBody) this.d.f(obj);
                MultipartBody.Builder builder = requestBuilder.f79427i;
                builder.getClass();
                requestBody.getClass();
                MultipartBody.Part.f76948c.getClass();
                builder.f76947c.add(MultipartBody.Part.Companion.a(this.f79398c, requestBody));
            } catch (IOException e2) {
                throw Utils.j(this.f79396a, this.f79397b, o60.n("Unable to convert ", obj, " to RequestBody"), e2);
            }
        }
    }

    public static final class PartMap<T> extends ParameterHandler<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Converter f79401c;
        public final String d;

        public PartMap(Method method, int i2, Converter converter, String str) {
            this.f79399a = method;
            this.f79400b = i2;
            this.f79401c = converter;
            this.d = str;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            Map map = (Map) obj;
            int i2 = this.f79400b;
            Method method = this.f79399a;
            if (map == null) {
                throw Utils.j(method, i2, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw Utils.j(method, i2, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw Utils.j(method, i2, fc.h("Part map contained null value for key '", str, "'."), new Object[0]);
                }
                String[] strArr = {"Content-Disposition", fc.h("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", this.d};
                okhttp3.Headers.f76915c.getClass();
                okhttp3.Headers headersA = okhttp3.Headers.Companion.a(strArr);
                RequestBody requestBody = (RequestBody) this.f79401c.f(value);
                MultipartBody.Builder builder = requestBuilder.f79427i;
                builder.getClass();
                requestBody.getClass();
                MultipartBody.Part.f76948c.getClass();
                builder.f76947c.add(MultipartBody.Part.Companion.a(headersA, requestBody));
            }
        }
    }

    public static final class Path<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79403b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f79404c;
        public final Converter d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f79405e;

        public Path(Method method, int i2, String str, Converter converter, boolean z) {
            this.f79402a = method;
            this.f79403b = i2;
            Objects.requireNonNull(str, "name == null");
            this.f79404c = str;
            this.d = converter;
            this.f79405e = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            String strH;
            String str = this.f79404c;
            if (obj == null) {
                throw Utils.j(this.f79402a, this.f79403b, fc.h("Path parameter \"", str, "\" value must not be null."), new Object[0]);
            }
            String str2 = (String) this.d.f(obj);
            if (requestBuilder.f79423c == null) {
                a61.h();
                return;
            }
            int length = str2.length();
            int iCharCount = 0;
            while (true) {
                if (iCharCount >= length) {
                    strH = str2;
                    break;
                }
                int iCodePointAt = str2.codePointAt(iCharCount);
                boolean z = this.f79405e;
                int i2 = 47;
                int i3 = -1;
                int i4 = CertificateBody.profileType;
                int i5 = 32;
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    Buffer buffer = new Buffer();
                    buffer.I0(0, iCharCount, str2);
                    Buffer buffer2 = null;
                    while (iCharCount < length) {
                        int iCodePointAt2 = str2.codePointAt(iCharCount);
                        if (!z || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                            if (iCodePointAt2 < i5 || iCodePointAt2 >= i4 || " \"<>^`{}|\\?#".indexOf(iCodePointAt2) != i3 || (!z && (iCodePointAt2 == i2 || iCodePointAt2 == 37))) {
                                if (buffer2 == null) {
                                    buffer2 = new Buffer();
                                }
                                buffer2.P0(iCodePointAt2);
                                long j2 = buffer2.f77390c;
                                long j3 = 0;
                                while (j3 < j2) {
                                    byte bW = buffer2.w(j3);
                                    buffer.m0(37);
                                    char[] cArr = RequestBuilder.l;
                                    buffer.m0(cArr[((bW & 255) >> 4) & 15]);
                                    buffer.m0(cArr[bW & 15]);
                                    j3++;
                                    buffer2 = buffer2;
                                }
                                buffer2.h();
                            } else {
                                buffer.P0(iCodePointAt2);
                            }
                        }
                        iCharCount += Character.charCount(iCodePointAt2);
                        i2 = 47;
                        i3 = -1;
                        i4 = CertificateBody.profileType;
                        i5 = 32;
                    }
                    strH = buffer.H();
                    break;
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
            String strReplace = requestBuilder.f79423c.replace("{" + str + "}", strH);
            if (RequestBuilder.m.matcher(strReplace).matches()) {
                md.n("@Path parameters shouldn't perform path traversal ('.' or '..'): ".concat(str2));
            } else {
                requestBuilder.f79423c = strReplace;
            }
        }
    }

    public static final class Query<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f79406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Converter f79407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f79408c;

        public Query(String str, Converter converter, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.f79406a = str;
            this.f79407b = converter;
            this.f79408c = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f79407b.f(obj)) == null) {
                return;
            }
            requestBuilder.c(this.f79406a, str, this.f79408c);
        }
    }

    public static final class QueryMap<T> extends ParameterHandler<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79410b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Converter f79411c;
        public final boolean d;

        public QueryMap(Method method, int i2, Converter converter, boolean z) {
            this.f79409a = method;
            this.f79410b = i2;
            this.f79411c = converter;
            this.d = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            Map map = (Map) obj;
            int i2 = this.f79410b;
            Method method = this.f79409a;
            if (map == null) {
                throw Utils.j(method, i2, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw Utils.j(method, i2, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw Utils.j(method, i2, fc.h("Query map contained null value for key '", str, "'."), new Object[0]);
                }
                Converter converter = this.f79411c;
                String str2 = (String) converter.f(value);
                if (str2 == null) {
                    throw Utils.j(method, i2, "Query map value '" + value + "' converted to null by " + converter.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                requestBuilder.c(str, str2, this.d);
            }
        }
    }

    public static final class QueryName<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Converter f79412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f79413b;

        public QueryName(Converter converter, boolean z) {
            this.f79412a = converter;
            this.f79413b = z;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            if (obj == null) {
                return;
            }
            requestBuilder.c((String) this.f79412a.f(obj), null, this.f79413b);
        }
    }

    public static final class RawPart extends ParameterHandler<MultipartBody.Part> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RawPart f79414a = new RawPart();

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            MultipartBody.Part part = (MultipartBody.Part) obj;
            if (part != null) {
                MultipartBody.Builder builder = requestBuilder.f79427i;
                builder.getClass();
                builder.f76947c.add(part);
            }
        }
    }

    public static final class RelativeUrl extends ParameterHandler<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f79415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f79416b;

        public RelativeUrl(Method method, int i2) {
            this.f79415a = method;
            this.f79416b = i2;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            if (obj != null) {
                requestBuilder.f79423c = obj.toString();
            } else {
                throw Utils.j(this.f79415a, this.f79416b, "@Url parameter is null.", new Object[0]);
            }
        }
    }

    public static final class Tag<T> extends ParameterHandler<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f79417a;

        public Tag(Class cls) {
            this.f79417a = cls;
        }

        @Override // retrofit2.ParameterHandler
        public final void a(RequestBuilder requestBuilder, Object obj) {
            requestBuilder.f79424e.d(this.f79417a, obj);
        }
    }

    public abstract void a(RequestBuilder requestBuilder, Object obj);
}

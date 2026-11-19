package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.Buffer;
import retrofit2.http.Streaming;

/* JADX INFO: loaded from: classes5.dex */
final class BuiltInConverters extends Converter.Factory {

    public static final class BufferingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final BufferingResponseBodyConverter f79327b = new BufferingResponseBodyConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            ResponseBody responseBody = (ResponseBody) obj;
            try {
                Buffer buffer = new Buffer();
                responseBody.getF77005h().N1(buffer);
                return ResponseBody.create(responseBody.getF77014f(), responseBody.getG(), buffer);
            } finally {
                responseBody.close();
            }
        }
    }

    public static final class RequestBodyConverter implements Converter<RequestBody, RequestBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final RequestBodyConverter f79328b = new RequestBodyConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            return (RequestBody) obj;
        }
    }

    public static final class StreamingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final StreamingResponseBodyConverter f79329b = new StreamingResponseBodyConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            return (ResponseBody) obj;
        }
    }

    public static final class ToStringConverter implements Converter<Object, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ToStringConverter f79330b = new ToStringConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            return obj.toString();
        }
    }

    public static final class UnitResponseBodyConverter implements Converter<ResponseBody, Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final UnitResponseBodyConverter f79331b = new UnitResponseBodyConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            ((ResponseBody) obj).close();
            return Unit.f71739a;
        }
    }

    public static final class VoidResponseBodyConverter implements Converter<ResponseBody, Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final VoidResponseBodyConverter f79332b = new VoidResponseBodyConverter();

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            ((ResponseBody) obj).close();
            return null;
        }
    }

    @Override // retrofit2.Converter.Factory
    public final Converter a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(Utils.e(type))) {
            return RequestBodyConverter.f79328b;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter b(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            return Utils.h(annotationArr, Streaming.class) ? StreamingResponseBodyConverter.f79329b : BufferingResponseBodyConverter.f79327b;
        }
        if (type == Void.class) {
            return VoidResponseBodyConverter.f79332b;
        }
        if (Utils.f79467b && type == Unit.class) {
            return UnitResponseBodyConverter.f79331b;
        }
        return null;
    }
}

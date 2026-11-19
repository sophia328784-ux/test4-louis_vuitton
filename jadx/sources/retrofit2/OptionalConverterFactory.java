package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
public final class OptionalConverterFactory extends Converter.Factory {

    public static final class OptionalConverter<T> implements Converter<ResponseBody, Optional<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Converter f79376b;

        public OptionalConverter(Converter converter) {
            this.f79376b = converter;
        }

        @Override // retrofit2.Converter
        public final Object f(Object obj) {
            return Optional.ofNullable(this.f79376b.f((ResponseBody) obj));
        }
    }

    @Override // retrofit2.Converter.Factory
    public final Converter b(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (Utils.e(type) != Optional.class) {
            return null;
        }
        return new OptionalConverter(retrofit.d(Utils.d(0, (ParameterizedType) type), annotationArr));
    }
}

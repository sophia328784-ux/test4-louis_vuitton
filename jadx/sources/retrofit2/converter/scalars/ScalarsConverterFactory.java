package retrofit2.converter.scalars;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes5.dex */
public final class ScalarsConverterFactory extends Converter.Factory {
    @Override // retrofit2.Converter.Factory
    public final Converter a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (type == String.class || type == Boolean.TYPE || type == Boolean.class || type == Byte.TYPE || type == Byte.class || type == Character.TYPE || type == Character.class || type == Double.TYPE || type == Double.class || type == Float.TYPE || type == Float.class || type == Integer.TYPE || type == Integer.class || type == Long.TYPE || type == Long.class || type == Short.TYPE || type == Short.class) {
            return ScalarRequestBodyConverter.f79505b;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter b(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == String.class) {
            return ScalarResponseBodyConverters$StringResponseBodyConverter.f79515b;
        }
        if (type == Boolean.class || type == Boolean.TYPE) {
            return ScalarResponseBodyConverters$BooleanResponseBodyConverter.f79507b;
        }
        if (type == Byte.class || type == Byte.TYPE) {
            return ScalarResponseBodyConverters$ByteResponseBodyConverter.f79508b;
        }
        if (type == Character.class || type == Character.TYPE) {
            return ScalarResponseBodyConverters$CharacterResponseBodyConverter.f79509b;
        }
        if (type == Double.class || type == Double.TYPE) {
            return ScalarResponseBodyConverters$DoubleResponseBodyConverter.f79510b;
        }
        if (type == Float.class || type == Float.TYPE) {
            return ScalarResponseBodyConverters$FloatResponseBodyConverter.f79511b;
        }
        if (type == Integer.class || type == Integer.TYPE) {
            return ScalarResponseBodyConverters$IntegerResponseBodyConverter.f79512b;
        }
        if (type == Long.class || type == Long.TYPE) {
            return ScalarResponseBodyConverters$LongResponseBodyConverter.f79513b;
        }
        if (type == Short.class || type == Short.TYPE) {
            return ScalarResponseBodyConverters$ShortResponseBodyConverter.f79514b;
        }
        return null;
    }
}

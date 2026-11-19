package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public interface Converter<F, T> {

    public static abstract class Factory {
        public Converter a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }

        public Converter b(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        public Converter c(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }
    }

    Object f(Object obj);
}

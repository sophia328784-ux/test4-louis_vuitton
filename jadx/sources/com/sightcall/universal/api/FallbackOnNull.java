package com.sightcall.universal.api;

import android.util.Pair;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonQualifier;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import defpackage.md;
import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Target({ElementType.FIELD, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@JsonQualifier
public @interface FallbackOnNull {
    public static final JsonAdapter.Factory ADAPTER_FACTORY = new JsonAdapter.Factory() { // from class: com.sightcall.universal.api.FallbackOnNull.1
        private String fallbackType(Class<?> cls) {
            String simpleName = cls.getSimpleName();
            return "fallback".concat(simpleName.substring(0, 1).toUpperCase(Locale.US) + simpleName.substring(1));
        }

        private <A extends Annotation> Pair<A, Set<Annotation>> nextAnnotations(Set<? extends Annotation> set, Class<A> cls) {
            if (!cls.isAnnotationPresent(JsonQualifier.class)) {
                throw new IllegalArgumentException(cls + " is not a JsonQualifier.");
            }
            if (set.isEmpty()) {
                return null;
            }
            for (Annotation annotation : set) {
                if (cls.equals(annotation.annotationType())) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(set);
                    linkedHashSet.remove(annotation);
                    return new Pair<>(annotation, Collections.unmodifiableSet(linkedHashSet));
                }
            }
            return null;
        }

        private Object retrieveFallback(FallbackOnNull fallbackOnNull, String str) {
            try {
                return FallbackOnNull.class.getMethod(str, null).invoke(fallbackOnNull, null);
            } catch (Exception e2) {
                md.h(e2);
                return null;
            }
        }

        @Override // com.squareup.moshi.JsonAdapter.Factory
        public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
            Pair pairNextAnnotations = nextAnnotations(set, FallbackOnNull.class);
            if (pairNextAnnotations != null) {
                Class<?> clsC = Types.c(type);
                if (FallbackOnNullJsonAdapter.PRIMITIVE_CLASSES.contains(clsC)) {
                    String strFallbackType = fallbackType(clsC);
                    return new FallbackOnNullJsonAdapter(moshi.c(type, (Set) pairNextAnnotations.second, null), retrieveFallback((FallbackOnNull) pairNextAnnotations.first, strFallbackType), strFallbackType);
                }
            }
            return null;
        }
    };

    boolean fallbackBoolean() default false;

    byte fallbackByte() default -128;

    char fallbackChar() default 0;

    double fallbackDouble() default Double.MIN_VALUE;

    float fallbackFloat() default Float.MIN_VALUE;

    int fallbackInt() default Integer.MIN_VALUE;

    long fallbackLong() default Long.MIN_VALUE;

    short fallbackShort() default Short.MIN_VALUE;
}

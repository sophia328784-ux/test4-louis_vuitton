package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonQualifier;
import com.squareup.moshi.Moshi;
import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Target({ElementType.FIELD, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@JsonQualifier
public @interface Transient {
    public static final JsonAdapter.Factory ADAPTER_FACTORY = new JsonAdapter.Factory() { // from class: com.sightcall.universal.api.Transient.1
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
            Set setUnmodifiableSet;
            if (!Transient.class.isAnnotationPresent(JsonQualifier.class)) {
                throw new IllegalArgumentException(Transient.class + " is not a JsonQualifier.");
            }
            if (set.isEmpty()) {
                setUnmodifiableSet = null;
            } else {
                for (Annotation annotation : set) {
                    if (Transient.class.equals(annotation.annotationType())) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
                        linkedHashSet.remove(annotation);
                        setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
                    }
                }
                setUnmodifiableSet = null;
            }
            if (setUnmodifiableSet == null) {
                return null;
            }
            return new TransientJsonAdapter();
        }
    };
}

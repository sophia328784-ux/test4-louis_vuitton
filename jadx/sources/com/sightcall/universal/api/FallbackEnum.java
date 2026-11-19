package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface FallbackEnum {
    public static final JsonAdapter.Factory ADAPTER_FACTORY = new JsonAdapter.Factory() { // from class: com.sightcall.universal.api.FallbackEnum.1
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
            FallbackEnum fallbackEnum;
            if (!set.isEmpty()) {
                return null;
            }
            Class clsC = Types.c(type);
            if (!clsC.isEnum() || (fallbackEnum = (FallbackEnum) clsC.getAnnotation(FallbackEnum.class)) == null) {
                return null;
            }
            return new FallbackEnumJsonAdapter(clsC, fallbackEnum.name()).nullSafe();
        }
    };

    String name();
}

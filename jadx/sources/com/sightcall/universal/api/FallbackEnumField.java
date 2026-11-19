package com.sightcall.universal.api;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonQualifier;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Retention(RetentionPolicy.RUNTIME)
@JsonQualifier
public @interface FallbackEnumField {
    public static final JsonAdapter.Factory ADAPTER_FACTORY = new JsonAdapter.Factory() { // from class: com.sightcall.universal.api.FallbackEnumField.1
        /* JADX WARN: Code duplicated, block: B:19:0x004c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x004d  */
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public JsonAdapter<?> create(Type type, Set<? extends Annotation> set, Moshi moshi) {
            Set setUnmodifiableSet;
            Enum enumValueOf;
            Class clsC = Types.c(type);
            if (!clsC.isEnum() || set.isEmpty()) {
                return null;
            }
            for (Annotation annotation : set) {
                if (annotation instanceof FallbackEnumField) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(set);
                    linkedHashSet.remove(annotation);
                    setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
                    String strValue = ((FallbackEnumField) annotation).value();
                    enumValueOf = !"".equals(strValue) ? Enum.valueOf(clsC, strValue) : null;
                    if (setUnmodifiableSet == null) {
                        return null;
                    }
                    return new FallbackEnumFieldJsonAdapter(clsC, enumValueOf);
                }
            }
            setUnmodifiableSet = null;
            enumValueOf = null;
            if (setUnmodifiableSet == null) {
                return null;
            }
            return new FallbackEnumFieldJsonAdapter(clsC, enumValueOf);
        }
    };
    public static final String NULL = "";

    String value();
}

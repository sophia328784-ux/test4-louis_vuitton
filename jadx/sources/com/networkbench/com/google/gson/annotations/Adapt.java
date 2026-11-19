package com.networkbench.com.google.gson.annotations;

import com.networkbench.com.google.gson.TypeAdapter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.TYPE, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Adapt {
    Class<? extends TypeAdapter<?>> value();
}

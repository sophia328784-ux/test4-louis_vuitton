package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.Gson$$$Internal;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.TypeAdapterFactory;
import com.networkbench.com.google.gson.annotations.Adapt;
import com.networkbench.com.google.gson.internal.ConstructorConstructor;
import com.networkbench.com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstructorConstructor f38635a;

    public a(ConstructorConstructor constructorConstructor) {
        this.f38635a = constructorConstructor;
    }

    public static TypeAdapter<?> a(Gson gson, ConstructorConstructor constructorConstructor, Adapt adapt) {
        TypeAdapter<?> typeAdapter = (TypeAdapter) constructorConstructor.get(TypeToken.get((Class) adapt.value())).construct();
        Gson$$$Internal.addGeneratedTypeAdapter(gson, typeAdapter);
        return typeAdapter;
    }

    @Override // com.networkbench.com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Adapt adapt = (Adapt) typeToken.getRawType().getAnnotation(Adapt.class);
        if (adapt == null) {
            return null;
        }
        return (TypeAdapter<T>) a(gson, this.f38635a, adapt);
    }
}

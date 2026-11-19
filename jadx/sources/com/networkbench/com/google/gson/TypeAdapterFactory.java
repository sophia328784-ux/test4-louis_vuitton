package com.networkbench.com.google.gson;

import com.networkbench.com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes2.dex */
public interface TypeAdapterFactory {
    <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken);
}

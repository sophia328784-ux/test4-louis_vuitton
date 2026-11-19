package com.networkbench.com.google.gson;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Gson$$$Internal {
    public static void addGeneratedTypeAdapter(Gson gson, TypeAdapter<?> typeAdapter) {
        if (gson.inConstructorPhase) {
            gson.preconfiguredGeneratedTypeAdapters.add(typeAdapter);
        } else {
            getRuntimeGeneratedTypeAdapters(gson).add(typeAdapter);
        }
    }

    private static Set<TypeAdapter<?>> getRuntimeGeneratedTypeAdapters(Gson gson) {
        Set<TypeAdapter<?>> hashSet = (Set) gson.runtimeGeneratedTypeAdapters.get();
        if (hashSet == null) {
            hashSet = new HashSet<>();
        }
        gson.runtimeGeneratedTypeAdapters.set(hashSet);
        return hashSet;
    }

    public static boolean isGeneratedTypeAdapter(Gson gson, TypeAdapter<?> typeAdapter) {
        boolean zContains = gson.preconfiguredGeneratedTypeAdapters.contains(typeAdapter);
        return !zContains ? getRuntimeGeneratedTypeAdapters(gson).contains(typeAdapter) : zContains;
    }
}

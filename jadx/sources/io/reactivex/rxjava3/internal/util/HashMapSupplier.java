package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.functions.Supplier;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class HashMapSupplier implements Supplier<Map<Object, Object>> {
    private static final /* synthetic */ HashMapSupplier[] $VALUES;
    public static final HashMapSupplier INSTANCE;

    static {
        HashMapSupplier hashMapSupplier = new HashMapSupplier("INSTANCE", 0);
        INSTANCE = hashMapSupplier;
        $VALUES = new HashMapSupplier[]{hashMapSupplier};
    }

    public static HashMapSupplier valueOf(String str) {
        return (HashMapSupplier) Enum.valueOf(HashMapSupplier.class, str);
    }

    public static HashMapSupplier[] values() {
        return (HashMapSupplier[]) $VALUES.clone();
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        return new HashMap();
    }
}

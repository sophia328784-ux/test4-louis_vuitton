package com.perfectcorp.thirdparty.io.reactivex.internal.util;

import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class b implements Function<Object, List<Object>>, Callable<List<Object>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f43150a = new b("INSTANCE", 0);

    private b(String str, int i2) {
        super(str, 0);
    }

    public static <T> Callable<List<T>> a() {
        return f43150a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) throws Exception {
        return new ArrayList();
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<Object> call() throws Exception {
        return new ArrayList();
    }
}

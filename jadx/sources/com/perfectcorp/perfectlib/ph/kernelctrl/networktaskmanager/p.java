package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.io.File;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p implements Function, Predicate {
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        ExecutorService executorService = c.b.z;
        return (File) ((List) obj).get(0);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        ExecutorService executorService = c.b.z;
        return com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.f(YMKDatabase.b(), (String) obj);
    }
}

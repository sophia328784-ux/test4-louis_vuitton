package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
final class f implements Predicate<YMKPrimitiveData.Effect> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ YMKPrimitiveData.Effect f41646b;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public final /* bridge */ /* synthetic */ boolean test(Object obj) {
        return ((YMKPrimitiveData.Effect) obj) != this.f41646b;
    }
}

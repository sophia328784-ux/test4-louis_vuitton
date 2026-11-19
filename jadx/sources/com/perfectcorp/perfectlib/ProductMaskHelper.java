package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.d8;
import defpackage.no0;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
abstract class ProductMaskHelper {
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h a(List list) {
        Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] start. featureTypes=" + list);
        Single singleCollectInto = Observable.fromIterable(list).flatMapSingle(new no0(12)).collectInto(Sets.e(), new no0(13));
        no0 no0Var = new no0(14);
        singleCollectInto.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleCollectInto, no0Var).f(new d8(20)), new d8(21));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k b(List list) {
        Log.g(3, "ProductMaskHelper", "[syncServer] start. featureTypes=" + list);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(Observable.fromIterable(list).flatMapSingle(new no0(7)).toList().f(new d8(18)), new d8(19)));
    }
}

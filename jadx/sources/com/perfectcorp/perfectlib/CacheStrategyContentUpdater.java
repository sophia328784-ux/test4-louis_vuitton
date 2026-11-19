package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
final class CacheStrategyContentUpdater {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.CacheStrategyContentUpdater$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39501a;

        static {
            int[] iArr = new int[com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.values().length];
            f39501a = iArr;
            try {
                iArr[com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.LOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39501a[com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39501a[com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static Completable updateCacheFirstThenUpdateContent(Configuration.ImageSource imageSource) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new v(imageSource, 0)), new md(15));
    }
}

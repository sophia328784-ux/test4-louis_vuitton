package com.perfectcorp.perfectlib;

import android.net.http.HttpResponseCache;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.exceptions.HttpCacheNotInstalledException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import defpackage.gn0;
import defpackage.tg0;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l3 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Configuration f40460c;
    public final /* synthetic */ PerfectLib.InitialCallbackWrapper d;

    public /* synthetic */ l3(Configuration configuration, PerfectLib.InitialCallbackWrapper initialCallbackWrapper, int i2) {
        this.f40459b = i2;
        this.f40460c = configuration;
        this.d = initialCallbackWrapper;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws NoSuchMethodException {
        switch (this.f40459b) {
            case 0:
                Configuration configuration = this.f40460c;
                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = this.d;
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                if (!ModuleConfig.t) {
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
                if (HttpResponseCache.getInstalled() == null) {
                    Log.d("PerfectLib", "HttpResponseCache doesn't be installed. Please refer to the doc of android.net.http.HttpResponseCache.");
                    throw new HttpCacheNotInstalledException("HttpResponseCache doesn't be installed, please check starting guide.");
                }
                try {
                    YMKDatabase.class.getDeclaredMethod("initDbAndCleanUp", null).invoke(null, null);
                    Completable completable = (Completable) CacheStrategyContentUpdater.class.getDeclaredMethod("updateCacheFirstThenUpdateContent", Configuration.ImageSource.class).invoke(null, configuration.d);
                    Objects.requireNonNull(completable);
                    int i2 = 1;
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(completable, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new gn0(configuration, i2))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new l3(configuration, initialCallbackWrapper, i2)));
                } catch (Throwable th) {
                    Log.e("PerfectLib", "[initDbAndCleanUp] failed.", th);
                    throw th;
                }
            default:
                Configuration configuration2 = this.f40460c;
                PerfectLib.InitialCallbackWrapper initialCallbackWrapper2 = this.d;
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                Path path = configuration2.f39515b;
                if (path == null || TextUtils.isEmpty(path.f39736b)) {
                    Log.g(3, "PerfectLib", "preloadPath is empty, ignore preload step");
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
                Completable completable2 = (Completable) ContentPreloader.class.getDeclaredMethod(Payload.TYPE_PRELOAD, null).invoke(ContentPreloader.class.getDeclaredConstructor(Path.class, PerfectLib.InitialCallbackWrapper.class, Configuration.ImageSource.class, Configuration.FunStickerQuality.class).newInstance(path, initialCallbackWrapper2, configuration2.d, configuration2.f39517e), null);
                Objects.requireNonNull(completable2);
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(completable2, new tg0(22));
        }
    }
}

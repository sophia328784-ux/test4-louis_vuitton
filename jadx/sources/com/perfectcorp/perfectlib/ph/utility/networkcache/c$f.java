package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.cache.CacheProviders$CacheProvider;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.CacheStrategies;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.CacheProviders$Helper;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.zw;

/* JADX INFO: loaded from: classes3.dex */
public final class c$f extends Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f41768c;

    public c$f(String str, boolean z) {
        this.f41767b = str;
        this.f41768c = z;
    }

    public final Single c() {
        c cVarB = b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 6)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new h())));
        Scheduler scheduler = Schedulers.f43170c;
        return cVarB.j(scheduler).i(scheduler).f(new Consumer() { // from class: com.perfectcorp.perfectlib.ph.utility.networkcache.a

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.utility.networkcache.a$a, reason: collision with other inner class name */
            public final class C0186a implements CacheProviders$CacheProvider, CacheProviders$Helper<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public static final C0186a f41754b = new C0186a();

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final BasicPreferences f41755a = new BasicPreferences(DatabaseSharedPreferences.a("com.cyberlink.youcammakeup.utility.networkcache.GetLookListCacheProvider"));

                public final com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a a() {
                    return (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a) GsonBaseResponse.f41999a.i(this.f41755a.getString("cacheKey", ""), com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.class);
                }
            }

            /* JADX WARN: Type inference failed for: r1v4, types: [com.perfectcorp.perfectlib.ph.utility.networkcache.b$a] */
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RequestTask.Response response = (RequestTask.Response) obj;
                if (this.f41753a.f41768c || response.f39357a == 304) {
                    return;
                }
                new CacheStrategies.CacheHandler<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a>() { // from class: com.perfectcorp.perfectlib.ph.utility.networkcache.b$a

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final a.C0186a f41756a = a.C0186a.f41754b;

                    @Override // com.perfectcorp.common.utility.CacheStrategies.CacheHandler
                    public final /* synthetic */ Object a(Object obj2) {
                        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a) obj2;
                        b(aVar);
                        return aVar;
                    }

                    public final void b(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a aVar) {
                        Log.g(3, "DataHandlers1", "[" + b$a.class.getName() + "]updateCache:" + aVar);
                        this.f41756a.f41755a.o("cacheKey", GsonBaseResponse.f41999a.k(aVar));
                    }
                }.b((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a) response.f39358b);
            }
        });
    }
}

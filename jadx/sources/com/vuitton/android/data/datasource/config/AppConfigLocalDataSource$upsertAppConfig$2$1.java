package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.android.data.dto.config.cache.AICompanionConfigCache;
import com.vuitton.android.data.dto.config.cache.AICompanionOnboardingConfigCache;
import com.vuitton.android.data.dto.config.cache.AbTestCache;
import com.vuitton.android.data.dto.config.cache.AddressAutocompleteConfigCache;
import com.vuitton.android.data.dto.config.cache.AppConfigCache;
import com.vuitton.android.data.dto.config.cache.AssetVideoCache;
import com.vuitton.android.data.dto.config.cache.CertificateConfigCache;
import com.vuitton.android.data.dto.config.cache.DistantRepairsConfigCache;
import com.vuitton.android.data.dto.config.cache.FeatureThemeCache;
import com.vuitton.android.data.dto.config.cache.FeaturesConfigCache;
import com.vuitton.android.data.dto.config.cache.FeedConfigCache;
import com.vuitton.android.data.dto.config.cache.HelpConfigCache;
import com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache;
import com.vuitton.android.data.dto.config.cache.NativeCartConfigCache;
import com.vuitton.android.data.dto.config.cache.PersonalSelectionsConfigCache;
import com.vuitton.android.data.dto.config.cache.PersonalisationConfigCache;
import com.vuitton.android.data.dto.config.cache.PowerFrontConfigCache;
import com.vuitton.android.data.dto.config.cache.RegionCache;
import com.vuitton.android.data.dto.config.cache.ServicesConfigCache;
import com.vuitton.android.data.dto.config.cache.UrlCatchingConfigCache;
import com.vuitton.android.data.dto.config.cache.VatIncludedConfigCache;
import com.vuitton.android.data.dto.config.cache.VirtualStudioConfigCache;
import com.vuitton.android.data.dto.config.cache.mapper.AICompanionConfigCacheMapperKt$WhenMappings;
import com.vuitton.android.data.dto.config.cache.mapper.FeatureThemeCacheMapperKt$WhenMappings;
import com.vuitton.android.data.dto.config.cache.mapper.PersonalisationConfigCacheMapperKt$WhenMappings;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.config.AICompanionConfig;
import com.vuitton.foundation.model.domain.model.config.AICompanionOnboarding;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.AddressAutocompleteConfig;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.CertificateConfig;
import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import com.vuitton.foundation.model.domain.model.config.FeaturesConfig;
import com.vuitton.foundation.model.domain.model.config.FeedConfig;
import com.vuitton.foundation.model.domain.model.config.HelpConfig;
import com.vuitton.foundation.model.domain.model.config.NativeCartConfig;
import com.vuitton.foundation.model.domain.model.config.PersonalSelectionsConfig;
import com.vuitton.foundation.model.domain.model.config.PersonalisationConfig;
import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import com.vuitton.foundation.model.domain.model.config.ServicesConfig;
import com.vuitton.foundation.model.domain.model.config.UrlCatchingConfig;
import com.vuitton.foundation.model.domain.model.config.VatIncludedConfig;
import com.vuitton.foundation.model.domain.model.config.VirtualStudioConfig;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppConfigLocalDataSource$upsertAppConfig$2$1", f = "AppConfigLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AppConfigLocalDataSource$upsertAppConfig$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppConfigLocalDataSource f43987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppConfig f43988c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigLocalDataSource$upsertAppConfig$2$1(AppConfigLocalDataSource appConfigLocalDataSource, AppConfig appConfig, Continuation continuation) {
        super(2, continuation);
        this.f43987b = appConfigLocalDataSource;
        this.f43988c = appConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppConfigLocalDataSource$upsertAppConfig$2$1(this.f43987b, this.f43988c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppConfigLocalDataSource$upsertAppConfig$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        NativeCartConfigCache nativeCartConfigCache;
        AICompanionConfigCache aICompanionConfigCache;
        NativeCartConfigCache nativeCartConfigCache2;
        FeatureThemeCache featureThemeCache;
        PersonalisationConfigCache personalisationConfigCache;
        RegionCache regionCache;
        AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache;
        FeatureThemeCache featureThemeCache2;
        LiveVideoStatusCache liveVideoStatusCache;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AppConfigLocalDataSource appConfigLocalDataSource = this.f43987b;
        Json json = appConfigLocalDataSource.f43976c;
        KSerializer<AppConfigCache> kSerializerSerializer = AppConfigCache.INSTANCE.serializer();
        AppConfig appConfig = this.f43988c;
        appConfig.getClass();
        List list = appConfig.f67230a;
        if (list != null) {
            List<AbTest> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (AbTest abTest : list2) {
                abTest.getClass();
                arrayList2.add(new AbTestCache(abTest.f67226a, abTest.f67227b, abTest.f67228c));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        AICompanionConfig aICompanionConfig = appConfig.f67237j;
        if (aICompanionConfig != null) {
            List list3 = aICompanionConfig.f67221a;
            AICompanionOnboarding aICompanionOnboarding = aICompanionConfig.f67222b;
            if (aICompanionOnboarding != null) {
                String str = aICompanionOnboarding.f67223a;
                FeatureTheme featureTheme = aICompanionOnboarding.f67224b;
                featureTheme.getClass();
                int i2 = FeatureThemeCacheMapperKt$WhenMappings.f45548a[featureTheme.ordinal()];
                if (i2 == 1) {
                    featureThemeCache2 = FeatureThemeCache.LIGHT;
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return null;
                    }
                    featureThemeCache2 = FeatureThemeCache.DARK;
                }
                AssetVideo assetVideo = aICompanionOnboarding.f67225c;
                String str2 = assetVideo.f67111a;
                nativeCartConfigCache = null;
                String str3 = assetVideo.f67112b;
                String str4 = assetVideo.d;
                String str5 = assetVideo.f67113c;
                int i3 = AICompanionConfigCacheMapperKt$WhenMappings.f45546a[assetVideo.f67115f.ordinal()];
                if (i3 == 1) {
                    liveVideoStatusCache = LiveVideoStatusCache.LIVE;
                } else if (i3 == 2) {
                    liveVideoStatusCache = LiveVideoStatusCache.LIVE_UPCOMING;
                } else if (i3 == 3) {
                    liveVideoStatusCache = LiveVideoStatusCache.LIVE_DONE;
                } else {
                    if (i3 != 4) {
                        v40.g();
                        return null;
                    }
                    liveVideoStatusCache = LiveVideoStatusCache.LIVE_REPLAY;
                }
                LiveVideoStatusCache liveVideoStatusCache2 = liveVideoStatusCache;
                Instant instant = assetVideo.f67114e;
                aICompanionOnboardingConfigCache = new AICompanionOnboardingConfigCache(str, featureThemeCache2, new AssetVideoCache(str2, str3, str5, str4, instant != null ? Long.valueOf(instant.getEpochSecond()) : null, liveVideoStatusCache2, assetVideo.g));
            } else {
                nativeCartConfigCache = null;
                aICompanionOnboardingConfigCache = null;
            }
            aICompanionConfigCache = new AICompanionConfigCache(list3, aICompanionOnboardingConfigCache);
        } else {
            nativeCartConfigCache = null;
            aICompanionConfigCache = null;
        }
        FeaturesConfig featuresConfig = appConfig.f67231b;
        featuresConfig.getClass();
        FeaturesConfigCache featuresConfigCache = new FeaturesConfigCache(featuresConfig.f67251a, featuresConfig.f67252b, featuresConfig.f67253c, featuresConfig.d, featuresConfig.f67254e, featuresConfig.f67255f, featuresConfig.g, featuresConfig.f67256h, featuresConfig.f67257i, featuresConfig.f67258j, featuresConfig.f67259k, featuresConfig.l, featuresConfig.m, featuresConfig.n, featuresConfig.o, featuresConfig.p, featuresConfig.q, featuresConfig.r, featuresConfig.s, featuresConfig.t, featuresConfig.u, featuresConfig.v, featuresConfig.w, featuresConfig.x, featuresConfig.y, featuresConfig.z, featuresConfig.A, featuresConfig.B, featuresConfig.C, featuresConfig.D, featuresConfig.E, featuresConfig.F, featuresConfig.G, featuresConfig.H, featuresConfig.I, featuresConfig.J, featuresConfig.K, featuresConfig.L, featuresConfig.M, featuresConfig.N, featuresConfig.O, featuresConfig.P, featuresConfig.Q, featuresConfig.R, featuresConfig.S, featuresConfig.T, featuresConfig.U, featuresConfig.V, featuresConfig.W, featuresConfig.X, featuresConfig.Y, featuresConfig.Z, featuresConfig.a0, featuresConfig.b0, featuresConfig.c0, featuresConfig.d0, featuresConfig.e0, featuresConfig.f0, featuresConfig.g0, featuresConfig.h0, featuresConfig.i0, featuresConfig.j0, featuresConfig.k0, featuresConfig.l0, featuresConfig.m0, featuresConfig.n0, featuresConfig.o0, featuresConfig.p0, featuresConfig.q0, featuresConfig.r0, featuresConfig.s0, featuresConfig.t0, featuresConfig.u0, featuresConfig.v0, featuresConfig.w0, featuresConfig.x0, featuresConfig.y0, featuresConfig.z0, featuresConfig.A0, featuresConfig.B0, featuresConfig.C0, featuresConfig.D0, featuresConfig.E0, featuresConfig.F0, featuresConfig.G0, featuresConfig.H0, featuresConfig.I0, featuresConfig.J0, featuresConfig.K0, featuresConfig.L0, featuresConfig.M0, featuresConfig.N0, featuresConfig.O0, featuresConfig.P0, featuresConfig.Q0, featuresConfig.R0, featuresConfig.S0);
        String str6 = appConfig.f67232c;
        String str7 = appConfig.d;
        String str8 = appConfig.f67233e;
        String str9 = appConfig.f67234f;
        String str10 = appConfig.g;
        String str11 = appConfig.f67235h;
        String str12 = appConfig.f67236i;
        String str13 = appConfig.f67238k;
        String str14 = appConfig.l;
        String str15 = appConfig.m;
        String str16 = appConfig.n;
        String str17 = appConfig.o;
        String str18 = appConfig.p;
        String str19 = appConfig.q;
        String str20 = appConfig.r;
        String str21 = appConfig.t;
        String str22 = appConfig.u;
        String str23 = appConfig.v;
        String str24 = appConfig.w;
        String str25 = appConfig.x;
        String str26 = appConfig.y;
        String str27 = appConfig.z;
        boolean z = appConfig.A;
        String str28 = appConfig.B;
        String str29 = appConfig.C;
        List list4 = appConfig.D;
        List list5 = appConfig.E;
        NativeCartConfig nativeCartConfig = appConfig.F;
        if (nativeCartConfig != null) {
            NativeCartConfig.CommercialNotification commercialNotification = nativeCartConfig.f67265a;
            nativeCartConfigCache2 = new NativeCartConfigCache(commercialNotification != null ? new NativeCartConfigCache.CommercialNotificationCache(commercialNotification.f67267a, commercialNotification.f67268b, commercialNotification.f67269c) : nativeCartConfigCache, nativeCartConfig.f67266b);
        } else {
            str9 = str9;
            str10 = str10;
            nativeCartConfigCache2 = nativeCartConfigCache;
        }
        CertificateConfig certificateConfig = appConfig.G;
        certificateConfig.getClass();
        CertificateConfigCache certificateConfigCache = new CertificateConfigCache(certificateConfig.f67239a, certificateConfig.f67240b, certificateConfig.f67241c);
        FeedConfig feedConfig = appConfig.H;
        feedConfig.getClass();
        FeatureTheme featureTheme2 = feedConfig.f67260a;
        featureTheme2.getClass();
        int i4 = FeatureThemeCacheMapperKt$WhenMappings.f45548a[featureTheme2.ordinal()];
        if (i4 == 1) {
            featureThemeCache = FeatureThemeCache.LIGHT;
        } else {
            if (i4 != 2) {
                v40.g();
                return nativeCartConfigCache;
            }
            featureThemeCache = FeatureThemeCache.DARK;
        }
        FeedConfigCache feedConfigCache = new FeedConfigCache(featureThemeCache);
        HelpConfig helpConfig = appConfig.I;
        HelpConfigCache helpConfigCache = helpConfig != null ? new HelpConfigCache(helpConfig.f67261a, helpConfig.f67262b, helpConfig.f67263c, helpConfig.d, helpConfig.f67264e) : nativeCartConfigCache;
        String str30 = appConfig.J;
        String str31 = appConfig.K;
        String str32 = appConfig.L;
        String str33 = appConfig.M;
        String str34 = appConfig.N;
        String str35 = appConfig.O;
        boolean z2 = appConfig.P;
        DistantRepairsConfig distantRepairsConfig = appConfig.Q;
        distantRepairsConfig.getClass();
        DistantRepairsConfigCache distantRepairsConfigCache = new DistantRepairsConfigCache(distantRepairsConfig.f67242a, distantRepairsConfig.f67243b, distantRepairsConfig.f67244c, distantRepairsConfig.d, distantRepairsConfig.f67245e, distantRepairsConfig.f67246f, distantRepairsConfig.g, distantRepairsConfig.f67247h, distantRepairsConfig.f67248i, distantRepairsConfig.f67249j, distantRepairsConfig.f67250k);
        ServicesConfig servicesConfig = appConfig.R;
        ServicesConfigCache servicesConfigCache = servicesConfig != null ? new ServicesConfigCache(servicesConfig.f67277a, servicesConfig.f67278b, servicesConfig.f67279c, servicesConfig.d) : nativeCartConfigCache;
        String str36 = appConfig.S;
        VirtualStudioConfig virtualStudioConfig = appConfig.T;
        VirtualStudioConfigCache virtualStudioConfigCache = virtualStudioConfig != null ? new VirtualStudioConfigCache(virtualStudioConfig.f67284a, virtualStudioConfig.f67285b, virtualStudioConfig.f67286c) : nativeCartConfigCache;
        PersonalSelectionsConfig personalSelectionsConfig = appConfig.U;
        PersonalSelectionsConfigCache personalSelectionsConfigCache = personalSelectionsConfig != null ? new PersonalSelectionsConfigCache(personalSelectionsConfig.f67270a) : nativeCartConfigCache;
        PersonalisationConfig personalisationConfig = appConfig.V;
        if (personalisationConfig != null) {
            String str37 = personalisationConfig.f67271a;
            int i5 = PersonalisationConfigCacheMapperKt$WhenMappings.f45550a[personalisationConfig.f67272b.ordinal()];
            if (i5 == 1) {
                regionCache = RegionCache.EU;
            } else {
                if (i5 != 2) {
                    v40.g();
                    return nativeCartConfigCache;
                }
                regionCache = RegionCache.US;
            }
            personalisationConfigCache = new PersonalisationConfigCache(str37, regionCache);
        } else {
            personalisationConfigCache = nativeCartConfigCache;
        }
        boolean z3 = appConfig.W;
        List<UrlCatchingConfig> list6 = appConfig.X;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
        for (UrlCatchingConfig urlCatchingConfig : list6) {
            urlCatchingConfig.getClass();
            arrayList3.add(new UrlCatchingConfigCache(urlCatchingConfig.f67280a, urlCatchingConfig.f67281b));
            str36 = str36;
            z3 = z3;
        }
        String str38 = str36;
        boolean z4 = z3;
        boolean z5 = appConfig.Y;
        boolean z6 = appConfig.Z;
        VatIncludedConfig vatIncludedConfig = appConfig.a0;
        vatIncludedConfig.getClass();
        VatIncludedConfigCache vatIncludedConfigCache = new VatIncludedConfigCache(vatIncludedConfig.f67282a, vatIncludedConfig.f67283b);
        PowerFrontConfig powerFrontConfig = appConfig.b0;
        PowerFrontConfigCache powerFrontConfigCache = powerFrontConfig != null ? new PowerFrontConfigCache(powerFrontConfig.f67273a, powerFrontConfig.f67274b, powerFrontConfig.f67275c, powerFrontConfig.d, powerFrontConfig.f67276e) : nativeCartConfigCache;
        String str39 = appConfig.c0;
        AddressAutocompleteConfig addressAutocompleteConfig = appConfig.d0;
        addressAutocompleteConfig.getClass();
        String strC = json.c(kSerializerSerializer, new AppConfigCache(arrayList, aICompanionConfigCache, featuresConfigCache, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, str20, str21, str22, str23, str24, str25, str26, str27, z, str28, str29, list4, list5, nativeCartConfigCache2, certificateConfigCache, feedConfigCache, helpConfigCache, str30, str31, str32, str33, str34, str35, z2, distantRepairsConfigCache, servicesConfigCache, str38, virtualStudioConfigCache, personalSelectionsConfigCache, personalisationConfigCache, z4, arrayList3, z5, z6, vatIncludedConfigCache, powerFrontConfigCache, str39, new AddressAutocompleteConfigCache(addressAutocompleteConfig.f67229a), appConfig.e0, appConfig.s));
        SharedPreferences.Editor editorEdit = appConfigLocalDataSource.f43975b.edit();
        editorEdit.putString("app_config", strC);
        editorEdit.commit();
        return Unit.f71739a;
    }
}

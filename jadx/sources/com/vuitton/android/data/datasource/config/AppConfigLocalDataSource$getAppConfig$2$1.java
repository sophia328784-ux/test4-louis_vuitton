package com.vuitton.android.data.datasource.config;

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
import com.vuitton.android.data.dto.config.cache.NativeCartConfigCache;
import com.vuitton.android.data.dto.config.cache.PersonalSelectionsConfigCache;
import com.vuitton.android.data.dto.config.cache.PersonalisationConfigCache;
import com.vuitton.android.data.dto.config.cache.PowerFrontConfigCache;
import com.vuitton.android.data.dto.config.cache.ServicesConfigCache;
import com.vuitton.android.data.dto.config.cache.UrlCatchingConfigCache;
import com.vuitton.android.data.dto.config.cache.VatIncludedConfigCache;
import com.vuitton.android.data.dto.config.cache.VirtualStudioConfigCache;
import com.vuitton.android.data.dto.config.cache.mapper.AICompanionConfigCacheMapperKt$WhenMappings;
import com.vuitton.android.data.dto.config.cache.mapper.FeatureThemeCacheMapperKt$WhenMappings;
import com.vuitton.android.data.dto.config.cache.mapper.PersonalisationConfigCacheMapperKt$WhenMappings;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
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
import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.config.ServicesConfig;
import com.vuitton.foundation.model.domain.model.config.UrlCatchingConfig;
import com.vuitton.foundation.model.domain.model.config.VatIncludedConfig;
import com.vuitton.foundation.model.domain.model.config.VirtualStudioConfig;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.md;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppConfigLocalDataSource$getAppConfig$2$1", f = "AppConfigLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AppConfigLocalDataSource$getAppConfig$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AppConfig>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppConfigLocalDataSource f43982b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigLocalDataSource$getAppConfig$2$1(AppConfigLocalDataSource appConfigLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43982b = appConfigLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppConfigLocalDataSource$getAppConfig$2$1(this.f43982b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppConfigLocalDataSource$getAppConfig$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ArrayList arrayList;
        NativeCartConfig nativeCartConfig;
        AICompanionConfig aICompanionConfig;
        NativeCartConfig nativeCartConfig2;
        FeatureTheme featureTheme;
        PersonalisationConfig personalisationConfig;
        Region region;
        AICompanionOnboarding aICompanionOnboarding;
        FeatureTheme featureTheme2;
        Object failure;
        LiveVideoStatus liveVideoStatus;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AppConfigLocalDataSource appConfigLocalDataSource = this.f43982b;
        String string = appConfigLocalDataSource.f43975b.getString("app_config", null);
        if (string == null || string.length() == 0) {
            md.k("JSON string is null or empty");
            return null;
        }
        AppConfigCache appConfigCache = (AppConfigCache) appConfigLocalDataSource.f43976c.b(AppConfigCache.INSTANCE.serializer(), string);
        appConfigCache.getClass();
        List list = appConfigCache.f45465a;
        if (list != null) {
            List<AbTestCache> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (AbTestCache abTestCache : list2) {
                abTestCache.getClass();
                arrayList2.add(new AbTest(abTestCache.f45459a, abTestCache.f45460b, abTestCache.f45461c));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        AICompanionConfigCache aICompanionConfigCache = appConfigCache.f45466b;
        if (aICompanionConfigCache != null) {
            List list3 = aICompanionConfigCache.f45452a;
            AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache = aICompanionConfigCache.f45453b;
            if (aICompanionOnboardingConfigCache != null) {
                String str = aICompanionOnboardingConfigCache.f45455a;
                FeatureThemeCache featureThemeCache = aICompanionOnboardingConfigCache.f45456b;
                featureThemeCache.getClass();
                int i2 = FeatureThemeCacheMapperKt$WhenMappings.f45549b[featureThemeCache.ordinal()];
                if (i2 == 1) {
                    featureTheme2 = FeatureTheme.LIGHT;
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return null;
                    }
                    featureTheme2 = FeatureTheme.DARK;
                }
                AssetVideoCache assetVideoCache = aICompanionOnboardingConfigCache.f45457c;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Long l = assetVideoCache.f45479e;
                    Instant instantOfEpochSecond = l != null ? Instant.ofEpochSecond(l.longValue()) : null;
                    String str2 = assetVideoCache.f45476a;
                    VideoId.Companion companion2 = VideoId.f68280a;
                    str2.getClass();
                    String str3 = assetVideoCache.f45477b;
                    String str4 = assetVideoCache.d;
                    String str5 = assetVideoCache.f45478c;
                    nativeCartConfig = null;
                    try {
                        int i3 = AICompanionConfigCacheMapperKt$WhenMappings.f45547b[assetVideoCache.f45480f.ordinal()];
                        if (i3 == 1) {
                            liveVideoStatus = LiveVideoStatus.LIVE;
                        } else if (i3 == 2) {
                            liveVideoStatus = LiveVideoStatus.LIVE_UPCOMING;
                        } else if (i3 == 3) {
                            liveVideoStatus = LiveVideoStatus.LIVE_DONE;
                        } else {
                            if (i3 != 4) {
                                throw new NoWhenBranchMatchedException();
                            }
                            liveVideoStatus = LiveVideoStatus.LIVE_REPLAY;
                        }
                        failure = new Result(new AssetVideo(str2, str3, str5, str4, instantOfEpochSecond, liveVideoStatus, assetVideoCache.g, null));
                    } catch (Throwable th) {
                        th = th;
                        Result.Companion companion3 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    nativeCartConfig = null;
                }
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                Object obj2 = ((Result) failure).f71708b;
                ResultKt.b(obj2);
                aICompanionOnboarding = new AICompanionOnboarding(str, featureTheme2, (AssetVideo) obj2);
            } else {
                nativeCartConfig = null;
                aICompanionOnboarding = null;
            }
            aICompanionConfig = new AICompanionConfig(list3, aICompanionOnboarding);
        } else {
            nativeCartConfig = null;
            aICompanionConfig = null;
        }
        FeaturesConfigCache featuresConfigCache = appConfigCache.f45467c;
        featuresConfigCache.getClass();
        FeaturesConfig featuresConfig = new FeaturesConfig(featuresConfigCache.f45496a, featuresConfigCache.f45497b, featuresConfigCache.f45498c, featuresConfigCache.d, featuresConfigCache.f45499e, featuresConfigCache.f45500f, featuresConfigCache.g, featuresConfigCache.f45501h, featuresConfigCache.f45502i, featuresConfigCache.f45503j, featuresConfigCache.f45504k, featuresConfigCache.l, featuresConfigCache.m, featuresConfigCache.n, featuresConfigCache.o, featuresConfigCache.p, featuresConfigCache.q, featuresConfigCache.r, featuresConfigCache.s, featuresConfigCache.t, featuresConfigCache.u, featuresConfigCache.v, featuresConfigCache.w, featuresConfigCache.x, featuresConfigCache.y, featuresConfigCache.z, featuresConfigCache.A, featuresConfigCache.B, featuresConfigCache.C, featuresConfigCache.D, featuresConfigCache.E, featuresConfigCache.F, featuresConfigCache.G, featuresConfigCache.H, featuresConfigCache.I, featuresConfigCache.J, featuresConfigCache.K, featuresConfigCache.L, featuresConfigCache.M, featuresConfigCache.N, featuresConfigCache.O, featuresConfigCache.P, featuresConfigCache.Q, featuresConfigCache.R, featuresConfigCache.S, featuresConfigCache.T, featuresConfigCache.U, featuresConfigCache.V, featuresConfigCache.W, featuresConfigCache.X, featuresConfigCache.Y, featuresConfigCache.Z, featuresConfigCache.a0, featuresConfigCache.b0, featuresConfigCache.c0, featuresConfigCache.d0, featuresConfigCache.e0, featuresConfigCache.f0, featuresConfigCache.g0, featuresConfigCache.h0, featuresConfigCache.i0, featuresConfigCache.j0, featuresConfigCache.k0, featuresConfigCache.l0, featuresConfigCache.m0, featuresConfigCache.n0, featuresConfigCache.o0, featuresConfigCache.p0, featuresConfigCache.q0, featuresConfigCache.r0, featuresConfigCache.s0, featuresConfigCache.t0, featuresConfigCache.u0, featuresConfigCache.v0, featuresConfigCache.w0, featuresConfigCache.x0, featuresConfigCache.y0, featuresConfigCache.z0, featuresConfigCache.A0, featuresConfigCache.B0, featuresConfigCache.C0, featuresConfigCache.D0, featuresConfigCache.E0, featuresConfigCache.F0, featuresConfigCache.G0, featuresConfigCache.H0, featuresConfigCache.I0, featuresConfigCache.J0, featuresConfigCache.K0, featuresConfigCache.L0, featuresConfigCache.M0, featuresConfigCache.N0, featuresConfigCache.O0, featuresConfigCache.P0, featuresConfigCache.Q0, featuresConfigCache.R0, featuresConfigCache.S0);
        String str6 = appConfigCache.d;
        String str7 = appConfigCache.f45468e;
        String str8 = appConfigCache.f45469f;
        String str9 = appConfigCache.g;
        String str10 = appConfigCache.f45470h;
        String str11 = appConfigCache.f45471i;
        String str12 = appConfigCache.f45472j;
        String str13 = appConfigCache.f45473k;
        String str14 = appConfigCache.l;
        String str15 = appConfigCache.m;
        String str16 = appConfigCache.n;
        String str17 = appConfigCache.o;
        String str18 = appConfigCache.p;
        String str19 = appConfigCache.q;
        String str20 = appConfigCache.r;
        String str21 = appConfigCache.s;
        String str22 = appConfigCache.t;
        String str23 = appConfigCache.u;
        String str24 = appConfigCache.v;
        String str25 = appConfigCache.w;
        String str26 = appConfigCache.x;
        String str27 = appConfigCache.y;
        boolean z = appConfigCache.z;
        String str28 = appConfigCache.A;
        String str29 = appConfigCache.B;
        List list4 = appConfigCache.C;
        List list5 = appConfigCache.D;
        NativeCartConfigCache nativeCartConfigCache = appConfigCache.E;
        if (nativeCartConfigCache != null) {
            NativeCartConfigCache.CommercialNotificationCache commercialNotificationCache = nativeCartConfigCache.f45514a;
            nativeCartConfig2 = new NativeCartConfig(commercialNotificationCache != null ? new NativeCartConfig.CommercialNotification(commercialNotificationCache.f45517a, commercialNotificationCache.f45518b, commercialNotificationCache.f45519c) : nativeCartConfig, nativeCartConfigCache.f45515b);
        } else {
            str13 = str13;
            str14 = str14;
            nativeCartConfig2 = nativeCartConfig;
        }
        CertificateConfigCache certificateConfigCache = appConfigCache.F;
        certificateConfigCache.getClass();
        CertificateConfig certificateConfig = new CertificateConfig(certificateConfigCache.f45482a, certificateConfigCache.f45483b, certificateConfigCache.f45484c);
        FeedConfigCache feedConfigCache = appConfigCache.G;
        feedConfigCache.getClass();
        FeatureThemeCache featureThemeCache2 = feedConfigCache.f45507a;
        featureThemeCache2.getClass();
        int i4 = FeatureThemeCacheMapperKt$WhenMappings.f45549b[featureThemeCache2.ordinal()];
        if (i4 == 1) {
            featureTheme = FeatureTheme.LIGHT;
        } else {
            if (i4 != 2) {
                v40.g();
                return nativeCartConfig;
            }
            featureTheme = FeatureTheme.DARK;
        }
        FeedConfig feedConfig = new FeedConfig(featureTheme);
        HelpConfigCache helpConfigCache = appConfigCache.H;
        HelpConfig helpConfig = helpConfigCache != null ? new HelpConfig(helpConfigCache.f45509a, helpConfigCache.f45510b, helpConfigCache.f45511c, helpConfigCache.d, helpConfigCache.f45512e) : nativeCartConfig;
        String str30 = appConfigCache.I;
        String str31 = appConfigCache.J;
        String str32 = appConfigCache.K;
        String str33 = appConfigCache.L;
        String str34 = appConfigCache.M;
        String str35 = appConfigCache.N;
        boolean z2 = appConfigCache.O;
        DistantRepairsConfigCache distantRepairsConfigCache = appConfigCache.P;
        distantRepairsConfigCache.getClass();
        DistantRepairsConfig distantRepairsConfig = new DistantRepairsConfig(distantRepairsConfigCache.f45486a, distantRepairsConfigCache.f45487b, distantRepairsConfigCache.f45488c, distantRepairsConfigCache.d, distantRepairsConfigCache.f45489e, distantRepairsConfigCache.f45490f, distantRepairsConfigCache.g, distantRepairsConfigCache.f45491h, distantRepairsConfigCache.f45492i, distantRepairsConfigCache.f45493j, distantRepairsConfigCache.f45494k);
        ServicesConfigCache servicesConfigCache = appConfigCache.Q;
        ServicesConfig servicesConfig = servicesConfigCache != null ? new ServicesConfig(servicesConfigCache.f45532a, servicesConfigCache.f45533b, servicesConfigCache.f45534c, servicesConfigCache.d) : nativeCartConfig;
        String str36 = appConfigCache.R;
        VirtualStudioConfigCache virtualStudioConfigCache = appConfigCache.S;
        VirtualStudioConfig virtualStudioConfig = virtualStudioConfigCache != null ? new VirtualStudioConfig(virtualStudioConfigCache.f45542a, virtualStudioConfigCache.f45543b, virtualStudioConfigCache.f45544c) : nativeCartConfig;
        PersonalSelectionsConfigCache personalSelectionsConfigCache = appConfigCache.T;
        PersonalSelectionsConfig personalSelectionsConfig = personalSelectionsConfigCache != null ? new PersonalSelectionsConfig(personalSelectionsConfigCache.f45521a) : nativeCartConfig;
        PersonalisationConfigCache personalisationConfigCache = appConfigCache.U;
        if (personalisationConfigCache != null) {
            String str37 = personalisationConfigCache.f45524a;
            int i5 = PersonalisationConfigCacheMapperKt$WhenMappings.f45551b[personalisationConfigCache.f45525b.ordinal()];
            if (i5 == 1) {
                region = Region.EU;
            } else {
                if (i5 != 2) {
                    v40.g();
                    return nativeCartConfig;
                }
                region = Region.US;
            }
            personalisationConfig = new PersonalisationConfig(str37, region);
        } else {
            personalisationConfig = nativeCartConfig;
        }
        boolean z3 = appConfigCache.V;
        List<UrlCatchingConfigCache> list6 = appConfigCache.W;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
        for (UrlCatchingConfigCache urlCatchingConfigCache : list6) {
            urlCatchingConfigCache.getClass();
            arrayList3.add(new UrlCatchingConfig(urlCatchingConfigCache.f45536a, urlCatchingConfigCache.f45537b));
            str36 = str36;
            z3 = z3;
        }
        String str38 = str36;
        boolean z4 = z3;
        boolean z5 = appConfigCache.X;
        boolean z6 = appConfigCache.Y;
        VatIncludedConfigCache vatIncludedConfigCache = appConfigCache.Z;
        vatIncludedConfigCache.getClass();
        VatIncludedConfig vatIncludedConfig = new VatIncludedConfig(vatIncludedConfigCache.f45539a, vatIncludedConfigCache.f45540b);
        PowerFrontConfigCache powerFrontConfigCache = appConfigCache.a0;
        PowerFrontConfig powerFrontConfig = powerFrontConfigCache != null ? new PowerFrontConfig(powerFrontConfigCache.f45527a, powerFrontConfigCache.f45528b, powerFrontConfigCache.f45529c, powerFrontConfigCache.d, powerFrontConfigCache.f45530e) : nativeCartConfig;
        String str39 = appConfigCache.b0;
        AddressAutocompleteConfigCache addressAutocompleteConfigCache = appConfigCache.c0;
        addressAutocompleteConfigCache.getClass();
        return new AppConfig(arrayList, featuresConfig, str6, str7, str8, str9, str10, str11, str12, aICompanionConfig, str13, str14, str15, str16, str17, str18, str19, str20, appConfigCache.e0, str21, str22, str23, str24, str25, str26, str27, z, str28, str29, list4, list5, nativeCartConfig2, certificateConfig, feedConfig, helpConfig, str30, str31, str32, str33, str34, str35, z2, distantRepairsConfig, servicesConfig, str38, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, z4, arrayList3, z5, z6, vatIncludedConfig, powerFrontConfig, str39, new AddressAutocompleteConfig(addressAutocompleteConfigCache.f45463a), appConfigCache.d0);
    }
}

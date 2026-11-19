package com.vuitton.android.presentation.screen.spotlight;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.spotlight.GetSpotlightUseCase;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.loading.LoaderExt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotContentUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotDetailUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotPositionUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightCtaUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.spotlight.HotspotContent;
import com.vuitton.foundation.model.domain.model.spotlight.HotspotDetail;
import com.vuitton.foundation.model.domain.model.spotlight.Spotlight;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightCta;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightHotspot;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightPosition;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightSlide;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$fetchSpotlight$2", f = "SpotlightViewModelImpl.kt", l = {146, 170}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$fetchSpotlight$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64544c;
    public final /* synthetic */ long d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$fetchSpotlight$2(SpotlightViewModelImpl spotlightViewModelImpl, long j2, Continuation continuation) {
        super(2, continuation);
        this.f64544c = spotlightViewModelImpl;
        this.d = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$fetchSpotlight$2(this.f64544c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$fetchSpotlight$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:93:0x02c6 A[LOOP:0: B:89:0x02af->B:93:0x02c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:95:0x02c3 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MutableStateFlow mutableStateFlow;
        CoroutineSingletons coroutineSingletons;
        Object obj2;
        SpotlightViewModelImpl spotlightViewModelImpl;
        Object value;
        SpotlightViewModelImpl spotlightViewModelImpl2;
        MutableStateFlow mutableStateFlow2;
        boolean z;
        String str;
        HotspotDetailUiModel hotspotDetailUiModel;
        Object value2;
        MutableStateFlow mutableStateFlow3;
        SpotlightViewModelImpl spotlightViewModelImpl3 = this.f64544c;
        MutableStateFlow mutableStateFlow4 = spotlightViewModelImpl3.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64543b;
        Object obj3 = null;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                mutableStateFlow = mutableStateFlow4;
            }
            while (true) {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
                mutableStateFlow3 = mutableStateFlow;
                if (mutableStateFlow3.i(value2, Boolean.FALSE)) {
                    return Unit.f71739a;
                }
                mutableStateFlow = mutableStateFlow3;
            }
        } else {
            ResultKt.b(obj);
            while (true) {
                Object value3 = mutableStateFlow4.getValue();
                ((Boolean) value3).getClass();
                if (mutableStateFlow4.i(value3, Boolean.TRUE)) {
                    break;
                }
                obj3 = obj3;
                coroutineSingletons2 = coroutineSingletons2;
            }
            GetSpotlightUseCase getSpotlightUseCase = spotlightViewModelImpl3.f64541j;
            String str2 = spotlightViewModelImpl3.l;
            this.f64543b = 1;
            objA = getSpotlightUseCase.a(str2, this);
            if (objA == coroutineSingletons2) {
                return coroutineSingletons2;
            }
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            mutableStateFlow = mutableStateFlow4;
            coroutineSingletons = coroutineSingletons2;
            obj2 = objA;
            spotlightViewModelImpl = spotlightViewModelImpl3;
        } else {
            Spotlight spotlight = (Spotlight) objA;
            MutableStateFlow mutableStateFlow5 = spotlightViewModelImpl3.t;
            while (true) {
                Object value4 = mutableStateFlow5.getValue();
                spotlight.getClass();
                String str3 = spotlight.f68221a;
                List list = spotlight.f68222b;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SpotlightSlide spotlightSlide = (SpotlightSlide) it.next();
                    String str4 = spotlightSlide.f68230a;
                    AssetVideo assetVideo = spotlightSlide.f68234f;
                    String str5 = spotlightSlide.f68231b;
                    AssetUiModel assetUiModelB = AssetMapperKt.b(spotlightSlide.f68232c);
                    float f2 = spotlightSlide.d;
                    Object obj4 = objA;
                    AssetVideo assetVideo2 = spotlightSlide.f68233e;
                    AssetVideoUiModel assetVideoUiModelC = assetVideo2 != null ? AssetMapperKt.c(assetVideo2) : null;
                    AssetVideoUiModel assetVideoUiModelC2 = assetVideo != null ? AssetMapperKt.c(assetVideo) : null;
                    List list2 = spotlightSlide.g;
                    Spotlight spotlight2 = spotlight;
                    Iterator it2 = it;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                    Iterator it3 = list2.iterator();
                    while (it3.hasNext()) {
                        SpotlightHotspot spotlightHotspot = (SpotlightHotspot) it3.next();
                        Iterator it4 = it3;
                        String str6 = spotlightHotspot.f68225a;
                        float f3 = f2;
                        SpotlightPosition spotlightPosition = spotlightHotspot.f68226b;
                        MutableStateFlow mutableStateFlow6 = mutableStateFlow4;
                        CoroutineSingletons coroutineSingletons3 = coroutineSingletons2;
                        HotspotPositionUiModel hotspotPositionUiModel = new HotspotPositionUiModel(spotlightPosition.f68228a / 100.0f, spotlightPosition.f68229b / 100.0f);
                        AssetUiModel assetUiModelB2 = AssetMapperKt.b(spotlightHotspot.f68227c);
                        HotspotContent hotspotContent = spotlightHotspot.d;
                        String str7 = hotspotContent.f68216a;
                        if (str7 != null) {
                            SkuIdUiModel.f61763c.getClass();
                            str = str7;
                        } else {
                            str = null;
                        }
                        HotspotDetail hotspotDetail = hotspotContent.f68217b;
                        if (hotspotDetail != null) {
                            String str8 = hotspotDetail.f68218a;
                            String str9 = hotspotDetail.f68219b;
                            AssetImageUiModel assetImageUiModelA = AssetMapperKt.a(hotspotDetail.f68220c);
                            SpotlightCta spotlightCta = hotspotDetail.d;
                            hotspotDetailUiModel = new HotspotDetailUiModel(str8, str9, assetImageUiModelA, new SpotlightCtaUiModel(spotlightCta.f68223a, ContributionLinkUiModelKt.a(spotlightCta.f68224b)));
                        } else {
                            hotspotDetailUiModel = null;
                        }
                        arrayList2.add(new SpotlightHotspotUiModel(str6, hotspotPositionUiModel, assetUiModelB2, new HotspotContentUiModel(str, hotspotDetailUiModel, null, 4, null)));
                        it3 = it4;
                        f2 = f3;
                        mutableStateFlow4 = mutableStateFlow6;
                        coroutineSingletons2 = coroutineSingletons3;
                        spotlightViewModelImpl3 = spotlightViewModelImpl3;
                        mutableStateFlow5 = mutableStateFlow5;
                        value4 = value4;
                        str3 = str3;
                    }
                    SpotlightViewModelImpl spotlightViewModelImpl4 = spotlightViewModelImpl3;
                    MutableStateFlow mutableStateFlow7 = mutableStateFlow4;
                    CoroutineSingletons coroutineSingletons4 = coroutineSingletons2;
                    MutableStateFlow mutableStateFlow8 = mutableStateFlow5;
                    Object obj5 = value4;
                    String str10 = str3;
                    float f4 = f2;
                    FeatureThemeUiModel featureThemeUiModelB = FeatureThemeMapperKt.b(spotlightSlide.f68235h);
                    SpotlightCta spotlightCta2 = spotlightSlide.f68236i;
                    SpotlightCtaUiModel spotlightCtaUiModel = spotlightCta2 != null ? new SpotlightCtaUiModel(spotlightCta2.f68223a, ContributionLinkUiModelKt.a(spotlightCta2.f68224b)) : null;
                    if (StringExtKt.a(assetVideo2 != null ? assetVideo2.f67112b : null)) {
                        if (StringExtKt.a(assetVideo != null ? assetVideo.f67112b : null)) {
                            z = false;
                        } else {
                            z = true;
                        }
                    } else {
                        z = true;
                    }
                    arrayList.add(new SpotlightSlideUiModel(str4, str5, assetUiModelB, f4, assetVideoUiModelC, assetVideoUiModelC2, arrayList2, featureThemeUiModelB, spotlightCtaUiModel, z));
                    it = it2;
                    objA = obj4;
                    spotlight = spotlight2;
                    mutableStateFlow4 = mutableStateFlow7;
                    coroutineSingletons2 = coroutineSingletons4;
                    spotlightViewModelImpl3 = spotlightViewModelImpl4;
                    mutableStateFlow5 = mutableStateFlow8;
                    value4 = obj5;
                    str3 = str10;
                }
                spotlightViewModelImpl2 = spotlightViewModelImpl3;
                mutableStateFlow = mutableStateFlow4;
                coroutineSingletons = coroutineSingletons2;
                obj2 = objA;
                Spotlight spotlight3 = spotlight;
                mutableStateFlow2 = mutableStateFlow5;
                if (mutableStateFlow2.i(value4, new SpotlightUiModel(str3, arrayList).f64678b)) {
                    break;
                }
                mutableStateFlow5 = mutableStateFlow2;
                objA = obj2;
                spotlight = spotlight3;
                mutableStateFlow4 = mutableStateFlow;
                coroutineSingletons2 = coroutineSingletons;
                spotlightViewModelImpl3 = spotlightViewModelImpl2;
            }
            if (((Collection) mutableStateFlow2.getValue()).isEmpty()) {
                spotlightViewModelImpl = spotlightViewModelImpl2;
            } else {
                spotlightViewModelImpl = spotlightViewModelImpl2;
                if (!((SpotlightSlideUiModel) CollectionsKt.B((List) mutableStateFlow2.getValue())).f64657j) {
                    spotlightViewModelImpl.Ac(0);
                }
                if (((Boolean) spotlightViewModelImpl.w.getValue()).booleanValue()) {
                    spotlightViewModelImpl.X9(SpotlightTrackingUiModel.OnboardingScreen.f64676a);
                } else {
                    spotlightViewModelImpl.X9(new SpotlightTrackingUiModel.CollectionScreen(((SpotlightSlideUiModel) CollectionsKt.B((List) mutableStateFlow2.getValue())).f64650a));
                }
                BuildersKt.c(ViewModelKt.a(spotlightViewModelImpl), null, null, new SpotlightViewModelImpl$lazyFetchProducts$1(null, spotlightViewModelImpl), 3);
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            MonitorAction monitorAction = spotlightViewModelImpl.A;
            if (monitorAction != null) {
                monitorAction.d(new FeedMonitoring.Error.OpenSpotlightError(thA));
            }
            MutableStateFlow mutableStateFlow9 = spotlightViewModelImpl.s;
            do {
                value = mutableStateFlow9.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow9.i(value, Boolean.TRUE));
        }
        MonitorAction monitorAction2 = spotlightViewModelImpl.A;
        if (monitorAction2 != null) {
            monitorAction2.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        this.f64543b = 2;
        CoroutineSingletons coroutineSingletons5 = coroutineSingletons;
        if (LoaderExt.a(this.d, this) == coroutineSingletons5) {
            return coroutineSingletons5;
        }
        while (true) {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
            mutableStateFlow3 = mutableStateFlow;
            if (mutableStateFlow3.i(value2, Boolean.FALSE)) {
                return Unit.f71739a;
            }
            mutableStateFlow = mutableStateFlow3;
        }
    }
}

package com.vuitton.android.presentation.screen.portal;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.portal.GetPortalSliderFeedUseCase;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.portal.models.PortalCtaUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalDataUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalSlideTypeUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalTeaserUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
import com.vuitton.android.presentation.screen.portal.models.mapper.PortalMapperKt$WhenMappings;
import com.vuitton.foundation.model.domain.model.common.Sound;
import com.vuitton.foundation.model.domain.model.portal.Portal;
import com.vuitton.foundation.model.domain.model.portal.PortalCta;
import com.vuitton.foundation.model.domain.model.portal.PortalData;
import com.vuitton.foundation.model.domain.model.portal.PortalTeaser;
import defpackage.md;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$fetchPortal$3", f = "PortalSliderViewModelImpl.kt", l = {103}, m = "invokeSuspend", v = 2)
final class PortalSliderViewModelImpl$fetchPortal$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PortalSliderViewModelImpl f63256c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderViewModelImpl$fetchPortal$3(PortalSliderViewModelImpl portalSliderViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63256c = portalSliderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderViewModelImpl$fetchPortal$3(this.f63256c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderViewModelImpl$fetchPortal$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        Object obj2;
        Throwable th;
        Object value;
        PortalTeaserUiModel portalTeaserUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63255b;
        Throwable th2 = null;
        int i3 = 1;
        PortalSliderViewModelImpl portalSliderViewModelImpl = this.f63256c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetPortalSliderFeedUseCase getPortalSliderFeedUseCase = portalSliderViewModelImpl.f63248c;
            String str = portalSliderViewModelImpl.f63253j;
            this.f63255b = 1;
            objA = getPortalSliderFeedUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            obj2 = objA;
            th = null;
        } else {
            Portal portal = (Portal) objA;
            MutableStateFlow mutableStateFlow = portalSliderViewModelImpl.f63249e;
            while (true) {
                Object value2 = mutableStateFlow.getValue();
                portal.getClass();
                String str2 = portal.f67860a;
                String str3 = portal.f67861b;
                String str4 = portal.f67862c;
                AssetUiModel assetUiModelB = AssetMapperKt.b(portal.d);
                List list = portal.f67863e;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Portal.Slide slide = (Portal.Slide) it.next();
                    String str5 = slide.f67865a;
                    Throwable th3 = th2;
                    if (PortalMapperKt$WhenMappings.f63338a[slide.f67866b.ordinal()] != i3) {
                        v40.g();
                        return th3;
                    }
                    PortalSlideTypeUiModel portalSlideTypeUiModel = PortalSlideTypeUiModel.CONTENT;
                    PortalData portalData = slide.f67867c;
                    String str6 = portalData.f67870a;
                    Object obj3 = objA;
                    String str7 = portalData.f67871b;
                    String str8 = portalData.f67872c;
                    AssetUiModel assetUiModelB2 = AssetMapperKt.b(portalData.d);
                    PortalCta portalCta = portalData.f67873e;
                    PortalCtaUiModel portalCtaUiModel = portalCta != null ? new PortalCtaUiModel(portalCta.f67868a, ContributionLinkUiModelKt.a(portalCta.f67869b)) : th3;
                    PortalTeaser portalTeaser = portalData.f67874f;
                    if (portalTeaser != null) {
                        Instant instant = portalTeaser.f67875a;
                        AssetUiModel assetUiModelB3 = AssetMapperKt.b(portalTeaser.f67876b);
                        String str9 = portalTeaser.f67877c;
                        String str10 = portalTeaser.d;
                        String str11 = portalTeaser.f67878e;
                        PortalCta portalCta2 = portalTeaser.f67879f;
                        portalTeaserUiModel = new PortalTeaserUiModel(instant, assetUiModelB3, str9, str10, str11, portalCta2 != null ? new PortalCtaUiModel(portalCta2.f67868a, ContributionLinkUiModelKt.a(portalCta2.f67869b)) : th3);
                    } else {
                        portalTeaserUiModel = th3;
                    }
                    arrayList.add(new PortalUiModel.SlideUiModel(str5, portalSlideTypeUiModel, new PortalDataUiModel(str6, str7, str8, assetUiModelB2, portalCtaUiModel, portalTeaserUiModel)));
                    objA = obj3;
                    it = it;
                    th2 = th3;
                    i3 = 1;
                }
                obj2 = objA;
                th = th2;
                Sound sound = portal.f67864f;
                if (mutableStateFlow.i(value2, new PortalUiModel(str2, str3, str4, assetUiModelB, arrayList, sound != null ? sound.f67141b : th))) {
                    break;
                }
                objA = obj2;
                th2 = th;
                i3 = 1;
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            MonitorAction monitorAction = portalSliderViewModelImpl.n;
            if (monitorAction == null) {
                Intrinsics.h("openPortalMonitor");
                throw th;
            }
            monitorAction.d(new FeedMonitoring.Error.OpenPortalError(thA));
            MutableStateFlow mutableStateFlow2 = portalSliderViewModelImpl.g;
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
        }
        MonitorAction monitorAction2 = portalSliderViewModelImpl.n;
        if (monitorAction2 != null) {
            monitorAction2.b();
            return Unit.f71739a;
        }
        Intrinsics.h("openPortalMonitor");
        throw th;
    }
}

package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.beauty.BeautyVTOMonitoring;
import com.vuitton.android.domain.usecase.pdp.vto.GetTutorialUseCase;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.TutorialMapperKt$WhenMappings;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.vto.Tutorial;
import com.vuitton.foundation.model.domain.model.product.vto.TutorialSection;
import com.vuitton.foundation.model.domain.model.product.vto.TutorialSectionData;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$openTutorial$1", f = "BeautyVtoViewModelImpl.kt", l = {861, 866}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$openTutorial$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f61929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BeautyVtoViewModelImpl f61930c;
    public TryOnProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f61931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f61932f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61933h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61934i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$openTutorial$1(Continuation continuation, BeautyVtoViewModelImpl beautyVtoViewModelImpl) {
        super(2, continuation);
        this.f61934i = beautyVtoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$openTutorial$1(continuation, this.f61934i);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$openTutorial$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0241  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet, java.util.List, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r8v5, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        TryOnProductUiModel tryOnProductUiModel;
        int i2;
        String str;
        String lowerCase;
        String str2;
        BeautyVtoViewModelImpl beautyVtoViewModelImpl;
        CoroutineSingletons coroutineSingletons;
        ?? r8;
        TryOnProductUiModel tryOnProductUiModel2;
        MonitorAction monitorAction;
        BeautyVtoViewModelImpl beautyVtoViewModelImpl2;
        Throwable th;
        TutorialSectionTypeUiModel tutorialSectionTypeUiModel;
        char c2;
        TutorialSectionDataUiModel stepsSectionUiModel;
        BeautyVtoViewModelImpl beautyVtoViewModelImpl3 = this.f61934i;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl3.R;
        MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl3.V;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f61933h;
        AssetImageUiModel assetImageUiModel = null;
        if (i3 != 0) {
            if (i3 == 1) {
                int i4 = this.g;
                TryOnProductUiModel tryOnProductUiModel3 = this.d;
                BeautyVtoViewModelImpl beautyVtoViewModelImpl4 = this.f61930c;
                monitorActionA = this.f61929b;
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
                i2 = i4;
                beautyVtoViewModelImpl = beautyVtoViewModelImpl4;
                tryOnProductUiModel = tryOnProductUiModel3;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = this.f61932f;
                tryOnProductUiModel2 = this.d;
                BeautyVtoViewModelImpl beautyVtoViewModelImpl5 = this.f61930c;
                monitorAction = this.f61929b;
                ResultKt.b(obj);
                beautyVtoViewModelImpl2 = beautyVtoViewModelImpl5;
            }
            beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[getTutorial : " + tryOnProductUiModel2.f62185c + "] onFailure", th);
            if (monitorAction != null) {
                monitorAction.d(new BeautyVTOMonitoring.Error.OpenLooksDetailError(th));
                Result.Companion companion = Result.INSTANCE;
            }
            return Unit.f71739a;
        }
        ResultKt.b(obj);
        beautyVtoViewModelImpl3.ta(BeautyBottomSheet.Tutorial.f62135a, false);
        if (mutableStateFlow2.getValue() != null) {
            monitorActionA = beautyVtoViewModelImpl3.f61841c.a(beautyVtoViewModelImpl3.C, BeautyVTOMonitoring.Action.OpenLooksDetail.f48839a);
            TryOnProductUiModel tryOnProductUiModel4 = (TryOnProductUiModel) mutableStateFlow.getValue();
            if (tryOnProductUiModel4 != null) {
                str = tryOnProductUiModel4.f62183a;
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            } else {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            monitorActionA.c(str, "sku");
            LookUiModel lookUiModel = (LookUiModel) mutableStateFlow2.getValue();
            if (lookUiModel == null || (str2 = lookUiModel.f62167c) == null) {
                lowerCase = null;
            } else {
                lowerCase = str2.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
            }
            monitorActionA.c(lowerCase != null ? lowerCase : "", "type");
        } else {
            monitorActionA = null;
        }
        TryOnProductUiModel tryOnProductUiModel5 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel5 != null) {
            GetTutorialUseCase getTutorialUseCase = beautyVtoViewModelImpl3.f61845i;
            SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
            String str3 = tryOnProductUiModel5.f62183a;
            companion3.getClass();
            SkuIdUiModel.Companion.b(str3);
            LookUiModel lookUiModel2 = (LookUiModel) mutableStateFlow2.getValue();
            String str4 = lookUiModel2 != null ? lookUiModel2.f62165a : null;
            this.f61929b = monitorActionA;
            this.f61930c = beautyVtoViewModelImpl3;
            this.d = tryOnProductUiModel5;
            this.g = 0;
            this.f61933h = 1;
            objA = getTutorialUseCase.a(str3, str4, this);
            if (objA == coroutineSingletons2) {
                return coroutineSingletons2;
            }
            tryOnProductUiModel = tryOnProductUiModel5;
            i2 = 0;
            beautyVtoViewModelImpl = beautyVtoViewModelImpl3;
        }
        return Unit.f71739a;
        Result.Companion companion4 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            coroutineSingletons = coroutineSingletons2;
            r8 = 0;
        } else {
            Tutorial tutorial = (Tutorial) objA;
            MutableStateFlow mutableStateFlow3 = beautyVtoViewModelImpl.X;
            while (true) {
                Object value = mutableStateFlow3.getValue();
                tutorial.getClass();
                String str5 = tutorial.f68089a;
                String str6 = tutorial.f68090b;
                AssetImageUiModel assetImageUiModel2 = assetImageUiModel;
                String str7 = tutorial.f68091c;
                String str8 = tutorial.d;
                AssetImage assetImage = tutorial.f68092e;
                AssetImageUiModel assetImageUiModelA = assetImage != null ? AssetMapperKt.a(assetImage) : assetImageUiModel2;
                String str9 = tutorial.f68093f;
                List list = tutorial.g;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    TutorialSection tutorialSection = (TutorialSection) it.next();
                    tutorialSection.getClass();
                    String str10 = tutorialSection.f68094a;
                    Iterator it2 = it;
                    TutorialSectionData tutorialSectionData = tutorialSection.f68096c;
                    int i5 = TutorialMapperKt$WhenMappings.f62213a[tutorialSection.f68095b.ordinal()];
                    Tutorial tutorial2 = tutorial;
                    if (i5 == 1) {
                        tutorialSectionTypeUiModel = TutorialSectionTypeUiModel.ASSET_LIST;
                    } else {
                        if (i5 != 2) {
                            v40.g();
                            return assetImageUiModel2;
                        }
                        tutorialSectionTypeUiModel = TutorialSectionTypeUiModel.STEPS;
                    }
                    if (tutorialSectionData instanceof TutorialSectionData.AssetListSection) {
                        List list2 = ((TutorialSectionData.AssetListSection) tutorialSectionData).f68097a;
                        c2 = '\n';
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it3 = list2.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(AssetMapperKt.b((Asset) it3.next()));
                        }
                        stepsSectionUiModel = new TutorialSectionDataUiModel.AssetListSectionUiModel(arrayList2);
                    } else {
                        c2 = '\n';
                        if (!(tutorialSectionData instanceof TutorialSectionData.StepsSection)) {
                            v40.g();
                            return assetImageUiModel2;
                        }
                        TutorialSectionData.StepsSection stepsSection = (TutorialSectionData.StepsSection) tutorialSectionData;
                        stepsSectionUiModel = new TutorialSectionDataUiModel.StepsSectionUiModel(stepsSection.f68098a, stepsSection.f68099b);
                    }
                    arrayList.add(new TutorialSectionUiModel(str10, tutorialSectionTypeUiModel, stepsSectionUiModel));
                    it = it2;
                    str5 = str5;
                    tutorial = tutorial2;
                    coroutineSingletons2 = coroutineSingletons2;
                }
                coroutineSingletons = coroutineSingletons2;
                Tutorial tutorial3 = tutorial;
                if (mutableStateFlow3.i(value, new TutorialState.Success(new TutorialUiModel(str5, str6, str7, str8, assetImageUiModelA, str9, arrayList, false, null, KyberEngine.KyberPolyBytes, null)))) {
                    ?? r9 = assetImageUiModel2;
                    BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl), r9, r9, new BeautyVtoViewModelImpl$getRecommendedProducts$1(beautyVtoViewModelImpl, tryOnProductUiModel.f62183a, r9), 3);
                    r8 = r9;
                    break;
                }
                assetImageUiModel = assetImageUiModel2;
                tutorial = tutorial3;
                coroutineSingletons2 = coroutineSingletons;
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            beautyVtoViewModelImpl.ta(r8, false);
            BufferedChannel bufferedChannel = beautyVtoViewModelImpl.h0;
            NotificationUiModel notificationUiModelA = NotificationBuilder.a(beautyVtoViewModelImpl.f61844h, new StringResourceUiModel.ResId(R.string.error_generic, r8, 2, r8), false, null, null, 60);
            this.f61929b = monitorActionA;
            this.f61930c = beautyVtoViewModelImpl;
            this.d = tryOnProductUiModel;
            this.f61931e = objA;
            this.f61932f = thA;
            this.g = i2;
            this.f61933h = 2;
            CoroutineSingletons coroutineSingletons3 = coroutineSingletons;
            if (bufferedChannel.u(notificationUiModelA, this) == coroutineSingletons3) {
                return coroutineSingletons3;
            }
            tryOnProductUiModel2 = tryOnProductUiModel;
            monitorAction = monitorActionA;
            beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
            th = thA;
            beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[getTutorial : " + tryOnProductUiModel2.f62185c + "] onFailure", th);
            if (monitorAction != null) {
                monitorAction.d(new BeautyVTOMonitoring.Error.OpenLooksDetailError(th));
                Result.Companion companion5 = Result.INSTANCE;
            }
        }
        return Unit.f71739a;
    }
}

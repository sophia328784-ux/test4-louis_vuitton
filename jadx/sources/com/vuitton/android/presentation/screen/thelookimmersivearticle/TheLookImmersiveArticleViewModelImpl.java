package com.vuitton.android.presentation.screen.thelookimmersivearticle;

import android.app.Application;
import android.graphics.Bitmap;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.immersivearticle.GetImmersiveArticleDetailByKeyUseCase;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleLookCard;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoCtaArticleSection;
import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import defpackage.v40;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000fB1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;", "passAppLinkBuilder", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;", "getImmersiveArticleDetailByKeyUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TheLookImmersiveArticleViewModelImpl extends ViewModel implements TheLookImmersiveArticleViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f65311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PassAppLinkBuilder f65312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f65313c;
    public final GetImmersiveArticleDetailByKeyUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f65315f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f65316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f65317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f65318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SharedFlowImpl f65319k;
    public final SharedFlow l;
    public final StateFlow m;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$1", f = "TheLookImmersiveArticleViewModelImpl.kt", l = {91}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65320b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return TheLookImmersiveArticleViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            Object value;
            ArrayList arrayList;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65320b;
            VideoCtaArticleSection videoCtaArticleSection = null;
            Object obj2 = null;
            TheLookImmersiveArticleViewModelImpl theLookImmersiveArticleViewModelImpl = TheLookImmersiveArticleViewModelImpl.this;
            if (i2 == 0) {
                ResultKt.b(obj);
                GetImmersiveArticleDetailByKeyUseCase getImmersiveArticleDetailByKeyUseCase = theLookImmersiveArticleViewModelImpl.d;
                String str = theLookImmersiveArticleViewModelImpl.f65314e;
                this.f65320b = 1;
                objA = getImmersiveArticleDetailByKeyUseCase.a(str, this);
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
            if (!(objA instanceof Result.Failure)) {
                List list = ((ImmersiveArticlePage) objA).f67677c;
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj3 : list) {
                        if (obj3 instanceof VideoCtaArticleSection) {
                            arrayList2.add(obj3);
                        }
                    }
                    for (Object obj4 : arrayList2) {
                        if (Intrinsics.c(((VideoCtaArticleSection) obj4).f67739a, theLookImmersiveArticleViewModelImpl.f65315f)) {
                            obj2 = obj4;
                            break;
                        }
                    }
                    videoCtaArticleSection = (VideoCtaArticleSection) obj2;
                }
                if (videoCtaArticleSection != null) {
                    MutableStateFlow mutableStateFlow = theLookImmersiveArticleViewModelImpl.f65316h;
                    do {
                        value = mutableStateFlow.getValue();
                        List list2 = videoCtaArticleSection.f67745i;
                        arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(ImmersiveArticleMapperKt.c((ImmersiveArticleLookCard) it.next()));
                        }
                    } while (!mutableStateFlow.i(value, arrayList));
                }
            }
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModelImpl$Companion;", "", "", "COMPRESSION_QUALITY", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public TheLookImmersiveArticleViewModelImpl(Application application, SavedStateHandle savedStateHandle, PassAppLinkBuilder passAppLinkBuilder, AnalyticsTracker analyticsTracker, GetImmersiveArticleDetailByKeyUseCase getImmersiveArticleDetailByKeyUseCase) {
        application.getClass();
        savedStateHandle.getClass();
        passAppLinkBuilder.getClass();
        analyticsTracker.getClass();
        getImmersiveArticleDetailByKeyUseCase.getClass();
        this.f65311a = application;
        this.f65312b = passAppLinkBuilder;
        this.f65313c = analyticsTracker;
        this.d = getImmersiveArticleDetailByKeyUseCase;
        String str = (String) savedStateHandle.a("ARTICLE_KEY");
        String str2 = str == null ? "" : str;
        this.f65314e = str2;
        String str3 = (String) savedStateHandle.a("LOOK_LIST_KEY");
        String str4 = str3 == null ? "" : str3;
        this.f65315f = str4;
        String str5 = (String) savedStateHandle.a("LOOK_KEY");
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(str5 == null ? "" : str5);
        this.g = mutableStateFlowA;
        String str6 = (String) savedStateHandle.a("SHOW_NAME_KEY");
        String str7 = str6 == null ? "" : str6;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(EmptyList.f71768b);
        this.f65316h = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(0);
        this.f65317i = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(Boolean.FALSE);
        this.f65318j = mutableStateFlowA4;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 6);
        this.f65319k = sharedFlowImplB;
        this.l = FlowKt.a(sharedFlowImplB);
        final Flow[] flowArr = {mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA};
        Flow<TheLookImmersiveArticleViewState> flow = new Flow<TheLookImmersiveArticleViewState>() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$special$$inlined$combine$1$3", f = "TheLookImmersiveArticleViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super TheLookImmersiveArticleViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f65330b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f65331c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f65331c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f65331c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f65330b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        List list = (List) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        int iIntValue = ((Integer) obj3).intValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = new TheLookImmersiveArticleViewState(null, null, (String) obj5, null, list, iIntValue, zBooleanValue, 11, null);
                        this.f65331c = null;
                        this.d = null;
                        this.f65330b = 1;
                        if (flowCollector.emit(theLookImmersiveArticleViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.m = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new TheLookImmersiveArticleViewState(str2, str4, null, str7, null, 0, false, 116, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    public static final File yc(TheLookImmersiveArticleViewModelImpl theLookImmersiveArticleViewModelImpl, Bitmap bitmap) {
        theLookImmersiveArticleViewModelImpl.getClass();
        File file = new File(theLookImmersiveArticleViewModelImpl.f65311a.getCacheDir(), "immersive-looks");
        try {
            file.mkdirs();
            File file2 = new File(file, StringsKt.J("look_picture_%ID%.jpg", "%ID%", String.valueOf(System.currentTimeMillis())));
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getM() {
        return this.m;
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    /* JADX INFO: renamed from: b5, reason: from getter */
    public final SharedFlow getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    public final void ea(int i2, String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        str.getClass();
        do {
            mutableStateFlow = this.f65317i;
            value = mutableStateFlow.getValue();
            ((Number) value).intValue();
        } while (!mutableStateFlow.i(value, Integer.valueOf(i2)));
        do {
            mutableStateFlow2 = this.g;
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, str));
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    public final String hb(String str) {
        str.getClass();
        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) this.m.getValue();
        return this.f65312b.a(CollectionsKt.P(DeepLink.IMMERSIVE_ARTICLE.getHost(), theLookImmersiveArticleViewState.f65392a, "look", theLookImmersiveArticleViewState.f65393b, str));
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    public final void v6(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new TheLookImmersiveArticleViewModelImpl$getImageFromUrl$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel
    public final void w2(TheLookImmersiveArticleTrackingUiModel theLookImmersiveArticleTrackingUiModel) {
        Hit defaultScreenHit;
        Hit defaultScreenHit2;
        if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.BackEventImmersiveArticle) {
            String str = ((TheLookImmersiveArticleTrackingUiModel.BackEventImmersiveArticle) theLookImmersiveArticleTrackingUiModel).f65380a;
            defaultScreenHit2 = new Hit.EventHit.DefaultEventHit(null, fc.h("LVPass/fashion_show/", str, "/explore_show/look"), "back", "explore", "fashion_show_article", null, CollectionsKt.P(new AdditionalProperty.ContentType("feed_article"), new AdditionalProperty.ArticleId(str)), 33, null);
        } else if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.LookGridScreenImmersiveArticle) {
            TheLookImmersiveArticleTrackingUiModel.LookGridScreenImmersiveArticle lookGridScreenImmersiveArticle = (TheLookImmersiveArticleTrackingUiModel.LookGridScreenImmersiveArticle) theLookImmersiveArticleTrackingUiModel;
            String str2 = lookGridScreenImmersiveArticle.f65383a;
            defaultScreenHit2 = new Hit.ScreenHit.DefaultScreenHit(null, fc.h("LVPass/fashion_show/", str2, "/look_grid"), fc.h("fashion_show/", str2, "/look_grid"), "news_article", CollectionsKt.O(new AdditionalProperty.ModuleId(lookGridScreenImmersiveArticle.f65384b)), 1, null);
        } else {
            if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.LookScreenImmersiveArticle) {
                TheLookImmersiveArticleTrackingUiModel.LookScreenImmersiveArticle lookScreenImmersiveArticle = (TheLookImmersiveArticleTrackingUiModel.LookScreenImmersiveArticle) theLookImmersiveArticleTrackingUiModel;
                String str3 = lookScreenImmersiveArticle.f65385a;
                defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, fc.h("LVPass/fashion_show/", str3, "/look"), fc.h("fashion_show/", str3, "/look"), "news_article", CollectionsKt.O(new AdditionalProperty.LookId(lookScreenImmersiveArticle.f65386b)), 1, null);
            } else if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.ProductImageImmersiveArticle) {
                TheLookImmersiveArticleTrackingUiModel.ProductImageImmersiveArticle productImageImmersiveArticle = (TheLookImmersiveArticleTrackingUiModel.ProductImageImmersiveArticle) theLookImmersiveArticleTrackingUiModel;
                String str4 = productImageImmersiveArticle.f65387a;
                defaultScreenHit = new Hit.EventHit.DefaultEventHit(null, fc.h("LVPass/fashion_show/", str4, "/look_grid"), productImageImmersiveArticle.f65388b, "explore", "fashion_show_article", null, CollectionsKt.P(new AdditionalProperty.ContentType("feed_article"), new AdditionalProperty.ArticleId(str4)), 33, null);
            } else if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.ShareLookImmersiveArticle) {
                TheLookImmersiveArticleTrackingUiModel.ShareLookImmersiveArticle shareLookImmersiveArticle = (TheLookImmersiveArticleTrackingUiModel.ShareLookImmersiveArticle) theLookImmersiveArticleTrackingUiModel;
                String str5 = shareLookImmersiveArticle.f65390b;
                defaultScreenHit = new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/fashion_show/", str5), "shop_look", "explore", "fashion_show_article", null, CollectionsKt.P(new AdditionalProperty.ContentType("feed_article"), new AdditionalProperty.ArticleId(shareLookImmersiveArticle.f65389a), new AdditionalProperty.LookId(str5)), 33, null);
            } else if (theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.ShopTheLookImmersiveArticle) {
                String str6 = ((TheLookImmersiveArticleTrackingUiModel.ShopTheLookImmersiveArticle) theLookImmersiveArticleTrackingUiModel).f65391a;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                defaultScreenHit = new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/fashion_show/", str6), "shop_look", "explore", "fashion_show_article", null, CollectionsKt.O(new AdditionalProperty.ContentType(str6)), 33, null);
            } else if (!(theLookImmersiveArticleTrackingUiModel instanceof TheLookImmersiveArticleTrackingUiModel.ExploreLookScreenImmersiveArticle)) {
                v40.g();
                return;
            } else {
                TheLookImmersiveArticleTrackingUiModel.ExploreLookScreenImmersiveArticle exploreLookScreenImmersiveArticle = (TheLookImmersiveArticleTrackingUiModel.ExploreLookScreenImmersiveArticle) theLookImmersiveArticleTrackingUiModel;
                String str7 = exploreLookScreenImmersiveArticle.f65381a;
                defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, fc.h("LVPass/fashion_show/", str7, "/look"), fc.h("fashion_show/", str7, "/look"), "news_article", CollectionsKt.O(new AdditionalProperty.ModuleId(exploreLookScreenImmersiveArticle.f65382b)), 1, null);
            }
            defaultScreenHit2 = defaultScreenHit;
        }
        this.f65313c.a(defaultScreenHit2);
    }
}

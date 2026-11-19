package com.vuitton.android.presentation.screen.onboarding;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssets;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingAssets$1", f = "OnboardingViewModelImpl.kt", l = {182, ModuleDescriptor.MODULE_VERSION, 188}, m = "invokeSuspend", v = 2)
final class OnboardingViewModelImpl$retrieveOnboardingAssets$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Deferred f59514c;
    public AssetVideoUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AssetVideoUiModel f59515e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f59516f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModelImpl f59517h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewModelImpl$retrieveOnboardingAssets$1(OnboardingViewModelImpl onboardingViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59517h = onboardingViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OnboardingViewModelImpl$retrieveOnboardingAssets$1 onboardingViewModelImpl$retrieveOnboardingAssets$1 = new OnboardingViewModelImpl$retrieveOnboardingAssets$1(this.f59517h, continuation);
        onboardingViewModelImpl$retrieveOnboardingAssets$1.g = obj;
        return onboardingViewModelImpl$retrieveOnboardingAssets$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingViewModelImpl$retrieveOnboardingAssets$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0098  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e8  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferredA;
        Deferred deferredA2;
        AssetVideoUiModel assetVideoUiModel;
        Object objK;
        Object objC;
        AssetVideoUiModel assetVideoUiModel2;
        Object objK2;
        AssetVideoUiModel assetVideoUiModel3;
        AssetVideoUiModel assetVideoUiModel4;
        Object objC2;
        AssetVideoUiModel assetVideoUiModel5;
        OnboardingAssets onboardingAssets;
        CoroutineScope coroutineScope = (CoroutineScope) this.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59516f;
        OnboardingViewModelImpl onboardingViewModelImpl = this.f59517h;
        if (i2 == 0) {
            ResultKt.b(obj);
            Deferred deferredA3 = BuildersKt.a(coroutineScope, null, new OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1(onboardingViewModelImpl, null), 3);
            deferredA = BuildersKt.a(coroutineScope, null, new OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1(onboardingViewModelImpl, null), 3);
            deferredA2 = BuildersKt.a(coroutineScope, null, new OnboardingViewModelImpl$retrieveOnboardingAssets$1$geolocationVideoIdResult$1(onboardingViewModelImpl, null), 3);
            this.g = null;
            this.f59513b = deferredA;
            this.f59514c = deferredA2;
            this.f59516f = 1;
            obj = deferredA3.k(this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            deferredA2 = this.f59514c;
            deferredA = (Deferred) this.f59513b;
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                AssetVideoUiModel assetVideoUiModel6 = this.d;
                Deferred deferred = this.f59514c;
                ResultKt.b(obj);
                objK = obj;
                assetVideoUiModel = assetVideoUiModel6;
                deferredA2 = deferred;
                objC = ((Result) objK).f71708b;
                if (!(objC instanceof Result.Failure)) {
                    Result.Companion companion = Result.INSTANCE;
                    objC = AssetMapperKt.c((AssetVideo) objC);
                }
                if (objC instanceof Result.Failure) {
                    objC = null;
                }
                assetVideoUiModel2 = (AssetVideoUiModel) objC;
                this.g = null;
                this.f59513b = null;
                this.f59514c = null;
                this.d = assetVideoUiModel;
                this.f59515e = assetVideoUiModel2;
                this.f59516f = 3;
                objK2 = deferredA2.k(this);
                if (objK2 != coroutineSingletons) {
                    AssetVideoUiModel assetVideoUiModel7 = assetVideoUiModel;
                    obj = objK2;
                    assetVideoUiModel3 = assetVideoUiModel7;
                    assetVideoUiModel4 = assetVideoUiModel2;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            assetVideoUiModel4 = this.f59515e;
            assetVideoUiModel3 = this.d;
            ResultKt.b(obj);
        }
        objC2 = ((Result) obj).f71708b;
        if (!(objC2 instanceof Result.Failure)) {
            Result.Companion companion2 = Result.INSTANCE;
            objC2 = AssetMapperKt.c((AssetVideo) objC2);
        }
        assetVideoUiModel5 = (AssetVideoUiModel) (objC2 instanceof Result.Failure ? null : objC2);
        MutableStateFlow mutableStateFlow = onboardingViewModelImpl.l;
        onboardingAssets = (OnboardingAssets) mutableStateFlow.getValue();
        if (assetVideoUiModel3 == null) {
            assetVideoUiModel3 = onboardingAssets.f59579a;
        }
        if (assetVideoUiModel4 == null) {
            assetVideoUiModel4 = onboardingAssets.f59580b;
        }
        if (assetVideoUiModel5 == null) {
            assetVideoUiModel5 = onboardingAssets.f59581c;
        }
        onboardingAssets.getClass();
        assetVideoUiModel3.getClass();
        assetVideoUiModel4.getClass();
        assetVideoUiModel5.getClass();
        mutableStateFlow.setValue(new OnboardingAssets(assetVideoUiModel3, assetVideoUiModel4, assetVideoUiModel5));
        return Unit.f71739a;
        Object objC3 = ((Result) obj).f71708b;
        if (!(objC3 instanceof Result.Failure)) {
            Result.Companion companion3 = Result.INSTANCE;
            objC3 = AssetMapperKt.c((AssetVideo) objC3);
        }
        if (objC3 instanceof Result.Failure) {
            objC3 = null;
        }
        assetVideoUiModel = (AssetVideoUiModel) objC3;
        this.g = null;
        this.f59513b = null;
        this.f59514c = deferredA2;
        this.d = assetVideoUiModel;
        this.f59516f = 2;
        objK = deferredA.k(this);
        if (objK != coroutineSingletons) {
            objC = ((Result) objK).f71708b;
            if (!(objC instanceof Result.Failure)) {
                Result.Companion companion4 = Result.INSTANCE;
                objC = AssetMapperKt.c((AssetVideo) objC);
            }
            if (objC instanceof Result.Failure) {
                objC = null;
            }
            assetVideoUiModel2 = (AssetVideoUiModel) objC;
            this.g = null;
            this.f59513b = null;
            this.f59514c = null;
            this.d = assetVideoUiModel;
            this.f59515e = assetVideoUiModel2;
            this.f59516f = 3;
            objK2 = deferredA2.k(this);
            if (objK2 != coroutineSingletons) {
                AssetVideoUiModel assetVideoUiModel8 = assetVideoUiModel;
                obj = objK2;
                assetVideoUiModel3 = assetVideoUiModel8;
                assetVideoUiModel4 = assetVideoUiModel2;
                objC2 = ((Result) obj).f71708b;
                if (!(objC2 instanceof Result.Failure)) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objC2 = AssetMapperKt.c((AssetVideo) objC2);
                }
                assetVideoUiModel5 = (AssetVideoUiModel) (objC2 instanceof Result.Failure ? null : objC2);
                MutableStateFlow mutableStateFlow2 = onboardingViewModelImpl.l;
                onboardingAssets = (OnboardingAssets) mutableStateFlow2.getValue();
                if (assetVideoUiModel3 == null) {
                    assetVideoUiModel3 = onboardingAssets.f59579a;
                }
                if (assetVideoUiModel4 == null) {
                    assetVideoUiModel4 = onboardingAssets.f59580b;
                }
                if (assetVideoUiModel5 == null) {
                    assetVideoUiModel5 = onboardingAssets.f59581c;
                }
                onboardingAssets.getClass();
                assetVideoUiModel3.getClass();
                assetVideoUiModel4.getClass();
                assetVideoUiModel5.getClass();
                mutableStateFlow2.setValue(new OnboardingAssets(assetVideoUiModel3, assetVideoUiModel4, assetVideoUiModel5));
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

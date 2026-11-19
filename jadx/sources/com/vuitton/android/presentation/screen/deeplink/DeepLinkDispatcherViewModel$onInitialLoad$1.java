package com.vuitton.android.presentation.screen.deeplink;

import com.vuitton.android.domain.repository.AppLinkRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.link.models.LinkRoutingData;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel$onInitialLoad$1", f = "DeepLinkDispatcherViewModel.kt", l = {34, EACTags.DATE_OF_BIRTH, EACTags.CARDHOLDER_NATIONALITY}, m = "invokeSuspend", v = 2)
final class DeepLinkDispatcherViewModel$onInitialLoad$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Set f56859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AppConfig f56860c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f56862f;
    public final /* synthetic */ DeepLinkDispatcherViewModel g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkDispatcherViewModel$onInitialLoad$1(DeepLinkDispatcherViewModel deepLinkDispatcherViewModel, Continuation continuation) {
        super(2, continuation);
        this.g = deepLinkDispatcherViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DeepLinkDispatcherViewModel$onInitialLoad$1 deepLinkDispatcherViewModel$onInitialLoad$1 = new DeepLinkDispatcherViewModel$onInitialLoad$1(this.g, continuation);
        deepLinkDispatcherViewModel$onInitialLoad$1.f56862f = obj;
        return deepLinkDispatcherViewModel$onInitialLoad$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkDispatcherViewModel$onInitialLoad$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00bd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objD;
        Set setB0;
        AppConfig appConfigC;
        Object objC;
        Object value;
        boolean zBooleanValue;
        Object objC2;
        Set set;
        AppConfig appConfig;
        boolean z;
        boolean zBooleanValue2;
        Object value2;
        DeepLinkDispatcherViewModel deepLinkDispatcherViewModel = this.g;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = deepLinkDispatcherViewModel.f56857c;
        MutableStateFlow mutableStateFlow = deepLinkDispatcherViewModel.d;
        CoroutineScope coroutineScope = (CoroutineScope) this.f56862f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56861e;
        if (i2 == 0) {
            ResultKt.b(obj);
            AppLinkRepository appLinkRepository = deepLinkDispatcherViewModel.f56856b;
            this.f56862f = coroutineScope;
            this.f56861e = 1;
            objD = appLinkRepository.d(this);
            if (objD != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                appConfigC = this.f56860c;
                Set set2 = this.f56859b;
                ResultKt.b(obj);
                objC = obj;
                setB0 = set2;
                zBooleanValue = ((Boolean) objC).booleanValue();
                Feature[] featureArr = {Feature.MY_CERTIFICATES};
                this.f56862f = null;
                this.f56859b = setB0;
                this.f56860c = appConfigC;
                this.d = zBooleanValue;
                this.f56861e = 3;
                objC2 = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (objC2 != coroutineSingletons) {
                    Set set3 = setB0;
                    obj = objC2;
                    set = set3;
                    appConfig = appConfigC;
                    z = zBooleanValue;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.d;
            appConfig = this.f56860c;
            set = this.f56859b;
            ResultKt.b(obj);
        }
        zBooleanValue2 = ((Boolean) obj).booleanValue();
        do {
            value2 = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value2, new RoutingDataState.Success(new LinkRoutingData(set, appConfig.g, z, zBooleanValue2))));
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (objD instanceof Result.Failure) {
            objD = null;
        }
        List list = (List) objD;
        if (list == null || (setB0 = CollectionsKt.B0(list)) == null) {
            setB0 = EmptySet.f71770b;
        }
        appConfigC = deepLinkDispatcherViewModel.f56855a.f49660a.c();
        if (appConfigC == null) {
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, RoutingDataState.Failure.f56869a));
            return Unit.f71739a;
        }
        Feature[] featureArr2 = {Feature.EXCLUSIVE_OFFER};
        this.f56862f = null;
        this.f56859b = setB0;
        this.f56860c = appConfigC;
        this.f56861e = 2;
        objC = isFeatureAvailableUseCase.c(featureArr2, false, this);
        if (objC != coroutineSingletons) {
            zBooleanValue = ((Boolean) objC).booleanValue();
            Feature[] featureArr3 = {Feature.MY_CERTIFICATES};
            this.f56862f = null;
            this.f56859b = setB0;
            this.f56860c = appConfigC;
            this.d = zBooleanValue;
            this.f56861e = 3;
            objC2 = isFeatureAvailableUseCase.c(featureArr3, false, this);
            if (objC2 != coroutineSingletons) {
                Set set4 = setB0;
                obj = objC2;
                set = set4;
                appConfig = appConfigC;
                z = zBooleanValue;
                zBooleanValue2 = ((Boolean) obj).booleanValue();
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value2, new RoutingDataState.Success(new LinkRoutingData(set, appConfig.g, z, zBooleanValue2))));
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

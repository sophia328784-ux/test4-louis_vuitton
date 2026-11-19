package com.vuitton.android.presentation.screen.authentication.welcome;

import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.common.AppAssetsVideoId;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.video.VideoId;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl$getLoginVideoUrl$1", f = "WelcomeViewModel.kt", l = {93}, m = "invokeSuspend", v = 2)
final class WelcomeViewModelImpl$getLoginVideoUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WelcomeViewModelImpl f54260c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WelcomeViewModelImpl$getLoginVideoUrl$1(WelcomeViewModelImpl welcomeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f54260c = welcomeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WelcomeViewModelImpl$getLoginVideoUrl$1(this.f54260c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WelcomeViewModelImpl$getLoginVideoUrl$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object objA;
        Object value;
        Object value2;
        WelcomeViewModelImpl welcomeViewModelImpl = this.f54260c;
        MutableStateFlow mutableStateFlow = welcomeViewModelImpl.f54253e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54259b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLiveVideoUseCase getLiveVideoUseCase = welcomeViewModelImpl.f54250a;
            if (welcomeViewModelImpl.f54251b.n()) {
                str = AppAssetsVideoId.LoginVideoId.f50722c.f50721b;
                VideoId.Companion companion = VideoId.f68280a;
                str.getClass();
            } else {
                str = AppAssetsVideoId.LoginVideoId.f50722c.f50720a;
                VideoId.Companion companion2 = VideoId.f68280a;
                str.getClass();
            }
            this.f54259b = 1;
            objA = getLiveVideoUseCase.a(str, this);
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
        Result.Companion companion3 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            AssetVideo assetVideo = (AssetVideo) objA;
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
            welcomeViewModelImpl.d.setValue(AssetMapperKt.c(assetVideo));
        }
        if (Result.a(objA) != null) {
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.feed;

import android.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkForAudioGuideAccess$1", f = "FeedViewModelImpl.kt", l = {289}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$checkForAudioGuideAccess$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57638c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$checkForAudioGuideAccess$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57638c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$checkForAudioGuideAccess$1(this.f57638c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$checkForAudioGuideAccess$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        Object value2;
        FeedViewModelImpl feedViewModelImpl = this.f57638c;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.Y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57637b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetAccessDataUseCase getAccessDataUseCase = feedViewModelImpl.l;
            this.f57637b = 1;
            objA = getAccessDataUseCase.a(this);
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
            AudioGuideAccessData audioGuideAccessData = (AudioGuideAccessData) objA;
            do {
                value2 = mutableStateFlow.getValue();
                audioGuideAccessData.getClass();
            } while (!mutableStateFlow.i(value2, new AudioGuideBannerUiModel(audioGuideAccessData.f66571a, FeatureThemeMapperKt.b(audioGuideAccessData.d), ColorKt.b(Color.parseColor(audioGuideAccessData.f66573c)), audioGuideAccessData.f66574e, audioGuideAccessData.f66575f, null)));
        }
        if (Result.a(objA) != null) {
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, null));
        }
        return Unit.f71739a;
    }
}

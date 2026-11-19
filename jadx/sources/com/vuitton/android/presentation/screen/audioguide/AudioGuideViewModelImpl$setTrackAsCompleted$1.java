package com.vuitton.android.presentation.screen.audioguide;

import com.vuitton.android.domain.usecase.audioguide.SaveCompletedTrackUseCase;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import defpackage.md;
import java.util.ArrayList;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$setTrackAsCompleted$1", f = "AudioGuideViewModelImpl.kt", l = {263}, m = "invokeSuspend", v = 2)
final class AudioGuideViewModelImpl$setTrackAsCompleted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewModelImpl f53004c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$setTrackAsCompleted$1(AudioGuideViewModelImpl audioGuideViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f53004c = audioGuideViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideViewModelImpl$setTrackAsCompleted$1(this.f53004c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideViewModelImpl$setTrackAsCompleted$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53003b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AudioGuideViewModelImpl audioGuideViewModelImpl = this.f53004c;
            MutableStateFlow mutableStateFlow = audioGuideViewModelImpl.w;
            do {
                value = mutableStateFlow.getValue();
                objA = (AudioGuideViewState) value;
                AudioGuideViewState.Success success = objA instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) objA : null;
                str = this.d;
                if (success != null) {
                    AudioGuideUiModel audioGuideUiModel = ((AudioGuideViewState.Success) objA).f53225a;
                    List<AudioGuideUiModel.TrackUiModel> list = audioGuideUiModel.m;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    for (AudioGuideUiModel.TrackUiModel trackUiModelA : list) {
                        if (Intrinsics.c(trackUiModelA.f53218a, str)) {
                            trackUiModelA = AudioGuideUiModel.TrackUiModel.a(trackUiModelA, AudioGuideUiModel.TrackStatusUiModel.DONE);
                        }
                        arrayList.add(trackUiModelA);
                    }
                    objA = AudioGuideViewState.Success.a(success, AudioGuideUiModel.a(audioGuideUiModel, arrayList), null, null, 0L, null, null, 62);
                }
            } while (!mutableStateFlow.i(value, objA));
            SaveCompletedTrackUseCase saveCompletedTrackUseCase = audioGuideViewModelImpl.f52982f;
            this.f53003b = 1;
            if (saveCompletedTrackUseCase.a(str, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}

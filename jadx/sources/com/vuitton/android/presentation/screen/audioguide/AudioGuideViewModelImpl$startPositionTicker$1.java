package com.vuitton.android.presentation.screen.audioguide;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$startPositionTicker$1", f = "AudioGuideViewModelImpl.kt", l = {117}, m = "invokeSuspend", v = 2)
final class AudioGuideViewModelImpl$startPositionTicker$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewModelImpl f53006c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$startPositionTicker$1(AudioGuideViewModelImpl audioGuideViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f53006c = audioGuideViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideViewModelImpl$startPositionTicker$1(this.f53006c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideViewModelImpl$startPositionTicker$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        long jH;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53005b;
        if (i2 != 0 && i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        do {
            AudioGuideViewModelImpl audioGuideViewModelImpl = this.f53006c;
            long currentPosition = audioGuideViewModelImpl.f52986k.f49323a.getCurrentPosition();
            MutableStateFlow mutableStateFlow = audioGuideViewModelImpl.z;
            do {
                value = mutableStateFlow.getValue();
                ((Number) value).longValue();
            } while (!mutableStateFlow.i(value, new Long(currentPosition >= 0 ? currentPosition : 0L)));
            Duration.Companion companion = Duration.INSTANCE;
            jH = DurationKt.h(500L, DurationUnit.MILLISECONDS);
            this.f53005b = 1;
        } while (DelayKt.c(jH, this) != coroutineSingletons);
        return coroutineSingletons;
    }
}

package com.vuitton.android.presentation.screen.audioguide;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$onLanguageSelected$1", f = "AudioGuideViewModelImpl.kt", l = {170, 179}, m = "invokeSuspend", v = 2)
final class AudioGuideViewModelImpl$onLanguageSelected$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewModelImpl f52995c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$onLanguageSelected$1(AudioGuideViewModelImpl audioGuideViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52995c = audioGuideViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideViewModelImpl$onLanguageSelected$1(this.f52995c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideViewModelImpl$onLanguageSelected$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0089, code lost:
    
        if (r0 == r3) goto L27;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl r1 = r0.f52995c
            kotlinx.coroutines.flow.MutableStateFlow r2 = r1.w
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r0.f52994b
            r5 = 0
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L2f
            if (r4 == r7) goto L24
            if (r4 != r6) goto L1e
            kotlin.ResultKt.b(r19)
            r0 = r19
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.f71708b
            goto L8c
        L1e:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r5
        L24:
            kotlin.ResultKt.b(r19)
            r4 = r19
            kotlin.Result r4 = (kotlin.Result) r4
            r4.getClass()
            goto L4d
        L2f:
            kotlin.ResultKt.b(r19)
            kotlinx.coroutines.Job r4 = r1.B
            if (r4 == 0) goto L39
            r4.cancel(r5)
        L39:
            r1.B = r5
            com.vuitton.android.domain.usecase.audioplayer.StopMediaUseCase r4 = r1.m
            com.vuitton.android.domain.service.audioplayer.AudioPlayerController r4 = r4.f49331a
            r4.stop()
            com.vuitton.android.domain.usecase.audioguide.ClearCachedTracksUseCase r4 = r1.r
            r0.f52994b = r7
            java.lang.Object r4 = r4.a(r0)
            if (r4 != r3) goto L4d
            goto L8b
        L4d:
            kotlinx.coroutines.flow.MutableStateFlow r4 = r1.z
            java.lang.Long r7 = new java.lang.Long
            r8 = 0
            r7.<init>(r8)
            r4.setValue(r7)
        L59:
            java.lang.Object r4 = r2.getValue()
            r7 = r4
            com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState r7 = (com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState) r7
            boolean r8 = r7 instanceof com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState.Success
            if (r8 == 0) goto L69
            r8 = r7
            com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState$Success r8 = (com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState.Success) r8
            r9 = r8
            goto L6a
        L69:
            r9 = r5
        L6a:
            if (r9 == 0) goto L7b
            com.vuitton.foundation.model.domain.model.audioplayer.PlayerState r12 = com.vuitton.foundation.model.domain.model.audioplayer.PlayerState.STOPPED
            r16 = 0
            r17 = 49
            r10 = 0
            r11 = 0
            r13 = 0
            r15 = 0
            com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState$Success r7 = com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState.Success.a(r9, r10, r11, r12, r13, r15, r16, r17)
        L7b:
            boolean r4 = r2.i(r4, r7)
            if (r4 == 0) goto L59
            r0.f52994b = r6
            java.lang.String r4 = r0.d
            java.lang.Object r0 = com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl.yc(r1, r4, r0)
            if (r0 != r3) goto L8c
        L8b:
            return r3
        L8c:
            java.lang.Throwable r0 = kotlin.Result.a(r0)
            if (r0 == 0) goto La0
            com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState$Error r3 = com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState.Error.f53223a
            r2.setValue(r3)
            com.vuitton.foundation.logger.Logger r1 = r1.f52978a
            java.lang.String r2 = "AudioGuideViewModelImpl"
            java.lang.String r3 = "Failed to load audio guide"
            r1.c(r2, r3, r0)
        La0:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$onLanguageSelected$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

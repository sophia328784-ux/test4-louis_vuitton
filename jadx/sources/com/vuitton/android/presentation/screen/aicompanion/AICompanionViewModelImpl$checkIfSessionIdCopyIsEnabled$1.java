package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1", f = "AICompanionViewModelImpl.kt", l = {149}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f52749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AICompanionViewModelImpl f52750c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AICompanionViewState f52751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52752f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52753h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52753h = aICompanionViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1(this.f52753h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x006d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004d -> B:6:0x001b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:12:0x004f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            r21 = this;
            r0 = r21
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L24
            if (r2 != r3) goto L1d
            int r2 = r0.f52752f
            com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState r5 = r0.f52751e
            java.lang.Object r6 = r0.d
            com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl r7 = r0.f52750c
            kotlinx.coroutines.flow.MutableStateFlow r8 = r0.f52749b
            kotlin.ResultKt.b(r22)
            r9 = r22
        L1b:
            r10 = r5
            goto L50
        L1d:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            r0 = 0
            return r0
        L24:
            kotlin.ResultKt.b(r22)
            com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl r2 = r0.f52753h
            kotlinx.coroutines.flow.MutableStateFlow r5 = r2.t
            r7 = r2
            r2 = r4
            r8 = r5
        L2e:
            java.lang.Object r6 = r8.getValue()
            r5 = r6
            com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState r5 = (com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState) r5
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r9 = r7.f52734h
            com.vuitton.foundation.model.domain.model.sync.Feature r10 = com.vuitton.foundation.model.domain.model.sync.Feature.AI_COMPANION_SESSION_ID_ENABLED
            com.vuitton.foundation.model.domain.model.sync.Feature[] r10 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r10}
            r0.f52749b = r8
            r0.f52750c = r7
            r0.d = r6
            r0.f52751e = r5
            r0.f52752f = r2
            r0.g = r3
            java.lang.Object r9 = r9.c(r10, r4, r0)
            if (r9 != r1) goto L1b
            return r1
        L50:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r17 = r9.booleanValue()
            r19 = 0
            r20 = 447(0x1bf, float:6.26E-43)
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r18 = 0
            com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState r5 = com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState.a(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            boolean r5 = r8.i(r6, r5)
            if (r5 == 0) goto L2e
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

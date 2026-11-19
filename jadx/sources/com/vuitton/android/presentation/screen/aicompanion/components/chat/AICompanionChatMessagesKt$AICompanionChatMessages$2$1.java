package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.foundation.lazy.LazyListState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$2$1", f = "AICompanionChatMessages.kt", l = {108, 109}, m = "invokeSuspend", v = 2)
final class AICompanionChatMessagesKt$AICompanionChatMessages$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f52797c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LazyListState f52798e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionChatMessagesKt$AICompanionChatMessages$2$1(boolean z, int i2, LazyListState lazyListState, Continuation continuation) {
        super(2, continuation);
        this.f52797c = z;
        this.d = i2;
        this.f52798e = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionChatMessagesKt$AICompanionChatMessages$2$1(this.f52797c, this.d, this.f52798e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionChatMessagesKt$AICompanionChatMessages$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        if (r7.f52798e.k(r2, Integer.MAX_VALUE, r7) == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f52796b
            int r2 = r7.d
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r8)
            goto L47
        L12:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L19:
            kotlin.ResultKt.b(r8)
            goto L39
        L1d:
            kotlin.ResultKt.b(r8)
            boolean r8 = r7.f52797c
            if (r8 == 0) goto L47
            if (r2 < 0) goto L47
            kotlin.time.Duration$Companion r8 = kotlin.time.Duration.INSTANCE
            r5 = 250(0xfa, double:1.235E-321)
            kotlin.time.DurationUnit r8 = kotlin.time.DurationUnit.MILLISECONDS
            long r5 = kotlin.time.DurationKt.h(r5, r8)
            r7.f52796b = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.c(r5, r7)
            if (r8 != r0) goto L39
            goto L46
        L39:
            r7.f52796b = r3
            androidx.compose.foundation.lazy.LazyListState r8 = r7.f52798e
            r1 = 2147483647(0x7fffffff, float:NaN)
            java.lang.Object r7 = r8.k(r2, r1, r7)
            if (r7 != r0) goto L47
        L46:
            return r0
        L47:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

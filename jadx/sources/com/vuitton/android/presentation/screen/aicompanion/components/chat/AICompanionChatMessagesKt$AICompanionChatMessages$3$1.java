package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$3$1", f = "AICompanionChatMessages.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionChatMessagesKt$AICompanionChatMessages$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f52799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f52800c;
    public final /* synthetic */ MutableIntState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionChatMessagesKt$AICompanionChatMessages$3$1(List list, HapticFeedback hapticFeedback, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f52799b = list;
        this.f52800c = hapticFeedback;
        this.d = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionChatMessagesKt$AICompanionChatMessages$3$1(this.f52799b, this.f52800c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionChatMessagesKt$AICompanionChatMessages$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List list = this.f52799b;
        int size = list.size();
        MutableIntState mutableIntState = this.d;
        if (size > mutableIntState.f()) {
            HapticFeedbackType.f9193b.getClass();
            this.f52800c.a(PlatformHapticFeedbackType.f9196a);
        }
        mutableIntState.i(list.size());
        return Unit.f71739a;
    }
}

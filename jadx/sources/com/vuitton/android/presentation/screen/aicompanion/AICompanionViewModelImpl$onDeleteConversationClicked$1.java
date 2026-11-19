package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.domain.usecase.aicompanion.DeleteChatSessionFromHistoryUseCase;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$onDeleteConversationClicked$1", f = "AICompanionViewModelImpl.kt", l = {268}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$onDeleteConversationClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52773c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$onDeleteConversationClicked$1(AICompanionViewModelImpl aICompanionViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52773c = aICompanionViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$onDeleteConversationClicked$1(this.f52773c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$onDeleteConversationClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        AICompanionViewState aICompanionViewState;
        ArrayList arrayList;
        AICompanionViewModelImpl aICompanionViewModelImpl = this.f52773c;
        MutableStateFlow mutableStateFlow = aICompanionViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52772b;
        String str = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeleteChatSessionFromHistoryUseCase deleteChatSessionFromHistoryUseCase = aICompanionViewModelImpl.m;
            this.f52772b = 1;
            objA = deleteChatSessionFromHistoryUseCase.a(str, this);
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
            do {
                value = mutableStateFlow.getValue();
                aICompanionViewState = (AICompanionViewState) value;
                List list = aICompanionViewState.f52898i;
                arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (!Intrinsics.c(((ChatHistoryUiModel) obj2).f52899a, str)) {
                        arrayList.add(obj2);
                    }
                }
            } while (!mutableStateFlow.i(value, AICompanionViewState.a(aICompanionViewState, false, null, null, null, null, null, false, false, arrayList, 255)));
            if (Intrinsics.c(((AICompanionViewState) mutableStateFlow.getValue()).d.f52908a, str)) {
                aICompanionViewModelImpl.e3();
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            defpackage.a.y("Error deleting chat session from history: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
        }
        return Unit.f71739a;
    }
}

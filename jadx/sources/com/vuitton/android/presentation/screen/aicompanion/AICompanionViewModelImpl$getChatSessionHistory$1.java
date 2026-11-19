package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.domain.usecase.aicompanion.GetChatHistoryListUseCase;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$getChatSessionHistory$1", f = "AICompanionViewModelImpl.kt", l = {219}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$getChatSessionHistory$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52759c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$getChatSessionHistory$1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52759c = aICompanionViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$getChatSessionHistory$1(this.f52759c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$getChatSessionHistory$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        AICompanionViewState aICompanionViewState;
        ArrayList arrayList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52758b;
        AICompanionViewModelImpl aICompanionViewModelImpl = this.f52759c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetChatHistoryListUseCase getChatHistoryListUseCase = aICompanionViewModelImpl.f52733f;
            this.f52758b = 1;
            objA = getChatHistoryListUseCase.a(this);
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
            List list = (List) objA;
            MutableStateFlow mutableStateFlow = aICompanionViewModelImpl.t;
            do {
                value = mutableStateFlow.getValue();
                aICompanionViewState = (AICompanionViewState) value;
                List<ChatHistory> list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (ChatHistory chatHistory : list2) {
                    chatHistory.getClass();
                    arrayList.add(new ChatHistoryUiModel(chatHistory.f66358a, chatHistory.f66359b));
                }
            } while (!mutableStateFlow.i(value, AICompanionViewState.a(aICompanionViewState, false, null, null, null, null, null, false, false, CollectionsKt.f0(arrayList), 255)));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            defpackage.a.y("Error fetching chat session history: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
        }
        return Unit.f71739a;
    }
}

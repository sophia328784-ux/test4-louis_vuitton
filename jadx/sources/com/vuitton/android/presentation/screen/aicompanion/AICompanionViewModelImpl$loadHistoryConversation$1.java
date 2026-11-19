package com.vuitton.android.presentation.screen.aicompanion;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.aicompanion.GetChatSessionByIdUseCase;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatSessionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.mapper.ChatMessageMapperKt;
import com.vuitton.foundation.model.domain.error.aicompanion.AICompanionError;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessage;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessageSection;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatSession;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$loadHistoryConversation$1", f = "AICompanionViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$loadHistoryConversation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52771c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$loadHistoryConversation$1(AICompanionViewModelImpl aICompanionViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52771c = aICompanionViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$loadHistoryConversation$1(this.f52771c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$loadHistoryConversation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        AICompanionViewState aICompanionViewState;
        String str;
        List list;
        ArrayList arrayList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52770b;
        String str2 = this.d;
        AICompanionViewModelImpl aICompanionViewModelImpl = this.f52771c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetChatSessionByIdUseCase getChatSessionByIdUseCase = aICompanionViewModelImpl.g;
            this.f52770b = 1;
            objA = getChatSessionByIdUseCase.a(str2, this);
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
            ChatSession chatSession = (ChatSession) objA;
            MutableStateFlow mutableStateFlow = aICompanionViewModelImpl.t;
            do {
                value = mutableStateFlow.getValue();
                aICompanionViewState = (AICompanionViewState) value;
                InAppDispatch inAppDispatch = aICompanionViewModelImpl.q;
                chatSession.getClass();
                List list2 = chatSession.f66372b;
                inAppDispatch.getClass();
                str = chatSession.f66371a;
                list = list2;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(ChatMessageMapperKt.a((ChatMessage) it.next(), true, inAppDispatch));
                }
            } while (!mutableStateFlow.i(value, AICompanionViewState.a(aICompanionViewState, false, null, "", new ChatSessionUiModel(str, arrayList), null, null, false, false, null, 371)));
            ArrayList<ChatMessage> arrayList2 = new ArrayList();
            for (Object obj2 : list) {
                List<ChatMessageSection> list3 = ((ChatMessage) obj2).d;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    for (ChatMessageSection chatMessageSection : list3) {
                        if ((chatMessageSection instanceof ChatMessageSection.EditorialSection) && (((ChatMessageSection.EditorialSection) chatMessageSection).f66365a instanceof EditorialModule.ProductCarousel)) {
                            arrayList2.add(obj2);
                            break;
                        }
                    }
                }
            }
            for (ChatMessage chatMessage : arrayList2) {
                String str3 = chatMessage.f66362a;
                BuildersKt.c(ViewModelKt.a(aICompanionViewModelImpl), null, null, new AICompanionViewModelImpl$fetchProductCarousel$1(chatMessage.d, aICompanionViewModelImpl, str3, null), 3);
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            defpackage.a.y("Error loading chat session by ID: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
            if (thA instanceof AICompanionError.IdRejected) {
                aICompanionViewModelImpl.o5(str2);
            }
        }
        return Unit.f71739a;
    }
}

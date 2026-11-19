package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.preferences.core.MutablePreferences;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1", f = "AICompanionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatHistory f43738c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43739e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1(AICompanionLocalDataSource aICompanionLocalDataSource, ChatHistory chatHistory, String str, Continuation continuation) {
        super(2, continuation);
        this.f43738c = chatHistory;
        this.d = str;
        this.f43739e = aICompanionLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1 aICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1 = new AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1(this.f43739e, this.f43738c, this.d, continuation);
        aICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1.f43737b = obj;
        return aICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2$result$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Json json = this.f43739e.f43694c;
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43737b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = (String) mutablePreferences.b(AICompanionLocalDataSource.f43691f);
        List list = str != null ? (List) json.b(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), str) : null;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        List<ChatHistory> list2 = list;
        boolean z = list2 instanceof Collection;
        String str2 = this.d;
        ChatHistory chatHistory = this.f43738c;
        if (!z || !list2.isEmpty()) {
            for (ChatHistory chatHistory2 : list2) {
                if (Intrinsics.c(chatHistory2.f66358a, chatHistory.f66358a) && Intrinsics.c(chatHistory2.d, str2)) {
                    return Unit.f71739a;
                }
            }
        }
        mutablePreferences.e(AICompanionLocalDataSource.f43691f, json.c(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), CollectionsKt.X(ChatHistory.a(chatHistory, null, str2, 7), list)));
        return Unit.f71739a;
    }
}

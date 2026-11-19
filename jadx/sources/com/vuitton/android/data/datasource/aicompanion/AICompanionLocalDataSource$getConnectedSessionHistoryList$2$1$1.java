package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.preferences.core.MutablePreferences;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
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
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1", f = "AICompanionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43710c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1(AICompanionLocalDataSource aICompanionLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43710c = aICompanionLocalDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1 aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1(this.f43710c, this.d, continuation);
        aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1.f43709b = obj;
        return aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Json json = this.f43710c.f43694c;
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43709b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = (String) mutablePreferences.b(AICompanionLocalDataSource.f43690e);
        List list = str != null ? (List) json.b(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), str) : null;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
        ZonedDateTime zonedDateTimeAtZone = Instant.ofEpochMilli(System.currentTimeMillis()).atZone(zoneIdSystemDefault);
        ArrayList<ChatHistory> arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (ChronoUnit.MONTHS.between(Instant.ofEpochMilli(((ChatHistory) obj2).f66360c).atZone(zoneIdSystemDefault), zonedDateTimeAtZone) < 12) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (ChatHistory chatHistoryA : arrayList) {
            if (chatHistoryA.d == null) {
                chatHistoryA = ChatHistory.a(chatHistoryA, null, this.d, 7);
            }
            arrayList2.add(chatHistoryA);
        }
        mutablePreferences.e(AICompanionLocalDataSource.f43690e, json.c(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), arrayList2));
        return Unit.f71739a;
    }
}

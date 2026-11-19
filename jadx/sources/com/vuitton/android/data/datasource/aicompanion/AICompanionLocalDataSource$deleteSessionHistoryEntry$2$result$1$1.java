package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1", f = "AICompanionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43700c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1(AICompanionLocalDataSource aICompanionLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43700c = aICompanionLocalDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1 aICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1 = new AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1(this.f43700c, this.d, continuation);
        aICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1.f43699b = obj;
        return aICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$deleteSessionHistoryEntry$2$result$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43699b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List<Preferences.Key> listP = CollectionsKt.P(AICompanionLocalDataSource.f43690e, AICompanionLocalDataSource.f43691f);
        Json json = this.f43700c.f43694c;
        for (Preferences.Key key : listP) {
            String str = (String) mutablePreferences.b(key);
            List list = str != null ? (List) json.b(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), str) : null;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (!Intrinsics.c(((ChatHistory) obj2).f66358a, this.d)) {
                    arrayList.add(obj2);
                }
            }
            mutablePreferences.f(key, json.c(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), arrayList));
        }
        return Unit.f71739a;
    }
}

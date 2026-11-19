package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.preferences.core.MutablePreferences;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2", f = "AICompanionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43711b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2(2, continuation);
        aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2.f43711b = obj;
        return aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43711b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        mutablePreferences.d(AICompanionLocalDataSource.f43691f);
        return Unit.f71739a;
    }
}

package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2", f = "AICompanionLocalDataSource.kt", l = {EACTags.HISTORICAL_BYTES}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43727c;
    public final /* synthetic */ ChatHistory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f43728e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2(AICompanionLocalDataSource aICompanionLocalDataSource, ChatHistory chatHistory, String str, Continuation continuation) {
        super(2, continuation);
        this.f43727c = aICompanionLocalDataSource;
        this.d = chatHistory;
        this.f43728e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2(this.f43727c, this.d, this.f43728e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43726b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                AICompanionLocalDataSource aICompanionLocalDataSource = this.f43727c;
                ChatHistory chatHistory = this.d;
                String str = this.f43728e;
                Result.Companion companion = Result.INSTANCE;
                DataStore dataStore = aICompanionLocalDataSource.f43692a;
                AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2$result$1$1 aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2$result$1$1 = new AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2$result$1$1(aICompanionLocalDataSource, chatHistory, str, null);
                this.f43726b = 1;
                obj = PreferencesKt.a(dataStore, aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2$result$1$1, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result((Preferences) obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return new Result(ResultExtKt.a(((Result) failure).f71708b));
    }
}

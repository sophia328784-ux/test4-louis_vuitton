package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getConnectedSessionHistoryList$2", f = "AICompanionLocalDataSource.kt", l = {137, 156, 160}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$getConnectedSessionHistoryList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends ChatHistory>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f43703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f43704c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43706f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f43708i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$getConnectedSessionHistoryList$2(AICompanionLocalDataSource aICompanionLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43707h = aICompanionLocalDataSource;
        this.f43708i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionLocalDataSource$getConnectedSessionHistoryList$2(this.f43707h, this.f43708i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$getConnectedSessionHistoryList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c6 A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:8:0x0014, B:42:0x00e3, B:13:0x002b, B:26:0x0082, B:28:0x0086, B:30:0x0090, B:31:0x00ab, B:33:0x00b1, B:35:0x00c0, B:38:0x00c8, B:37:0x00c6, B:16:0x003b, B:23:0x0069, B:19:0x0046), top: B:55:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:54:0x0111  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        String str;
        int i2;
        int i3;
        int i4;
        AICompanionLocalDataSource aICompanionLocalDataSource;
        Preferences preferences;
        List list;
        DataStore dataStore;
        AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2;
        List list2;
        String str2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.g;
        try {
            if (i5 == 0) {
                ResultKt.b(obj);
                AICompanionLocalDataSource aICompanionLocalDataSource2 = this.f43707h;
                String str3 = this.f43708i;
                Result.Companion companion = Result.INSTANCE;
                DataStore dataStore2 = aICompanionLocalDataSource2.f43692a;
                AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1 aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1(aICompanionLocalDataSource2, str3, null);
                this.f43703b = aICompanionLocalDataSource2;
                this.f43704c = str3;
                this.d = 0;
                this.f43705e = 0;
                this.f43706f = 0;
                this.g = 1;
                if (PreferencesKt.a(dataStore2, aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$1, this) != coroutineSingletons) {
                    str = str3;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                    aICompanionLocalDataSource = aICompanionLocalDataSource2;
                }
                return coroutineSingletons;
            }
            if (i5 == 1) {
                i2 = this.f43706f;
                i3 = this.f43705e;
                i4 = this.d;
                str = this.f43704c;
                aICompanionLocalDataSource = (AICompanionLocalDataSource) this.f43703b;
                ResultKt.b(obj);
            } else {
                if (i5 == 2) {
                    i2 = this.f43706f;
                    i3 = this.f43705e;
                    i4 = this.d;
                    str = this.f43704c;
                    aICompanionLocalDataSource = (AICompanionLocalDataSource) this.f43703b;
                    ResultKt.b(obj);
                    preferences = (Preferences) obj;
                    if (preferences != null || (str2 = (String) preferences.b(AICompanionLocalDataSource.f43690e)) == null) {
                        list = EmptyList.f71768b;
                    } else {
                        Iterable iterable = (Iterable) aICompanionLocalDataSource.f43694c.b(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), str2);
                        ArrayList arrayList = new ArrayList();
                        for (Object obj2 : iterable) {
                            if (Intrinsics.c(((ChatHistory) obj2).d, str)) {
                                arrayList.add(obj2);
                            }
                        }
                        list = arrayList;
                    }
                    dataStore = aICompanionLocalDataSource.f43692a;
                    aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2(2, null);
                    this.f43703b = list;
                    this.f43704c = null;
                    this.d = i4;
                    this.f43705e = i3;
                    this.f43706f = i2;
                    this.g = 3;
                    if (PreferencesKt.a(dataStore, aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2, this) != coroutineSingletons) {
                        list2 = list;
                    }
                    return coroutineSingletons;
                }
                if (i5 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                list2 = (List) this.f43703b;
                ResultKt.b(obj);
            }
            failure = new Result(list2);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return new Result(((Result) failure).f71708b);
            Flow d = aICompanionLocalDataSource.f43692a.getD();
            this.f43703b = aICompanionLocalDataSource;
            this.f43704c = str;
            this.d = i4;
            this.f43705e = i3;
            this.f43706f = i2;
            this.g = 2;
            obj = FlowKt.r(d, this);
            if (obj != coroutineSingletons) {
                preferences = (Preferences) obj;
                if (preferences != null) {
                    list = EmptyList.f71768b;
                } else {
                    list = EmptyList.f71768b;
                }
                dataStore = aICompanionLocalDataSource.f43692a;
                aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2(2, null);
                this.f43703b = list;
                this.f43704c = null;
                this.d = i4;
                this.f43705e = i3;
                this.f43706f = i2;
                this.g = 3;
                if (PreferencesKt.a(dataStore, aICompanionLocalDataSource$getConnectedSessionHistoryList$2$1$2, this) != coroutineSingletons) {
                    list2 = list;
                    failure = new Result(list2);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return new Result(((Result) failure).f71708b);
                }
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}

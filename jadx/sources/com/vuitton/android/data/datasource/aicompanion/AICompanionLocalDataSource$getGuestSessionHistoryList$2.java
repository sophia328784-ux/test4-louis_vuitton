package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
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
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$getGuestSessionHistoryList$2", f = "AICompanionLocalDataSource.kt", l = {167, ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$getGuestSessionHistoryList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends ChatHistory>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AICompanionLocalDataSource f43714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f43715c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43717f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f43719i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$getGuestSessionHistoryList$2(AICompanionLocalDataSource aICompanionLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43718h = aICompanionLocalDataSource;
        this.f43719i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionLocalDataSource$getGuestSessionHistoryList$2(this.f43718h, this.f43719i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$getGuestSessionHistoryList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b4 A[Catch: all -> 0x00bc, TryCatch #0 {all -> 0x00bc, blocks: (B:7:0x0011, B:23:0x0072, B:25:0x0076, B:27:0x0080, B:28:0x009b, B:30:0x00a1, B:32:0x00b0, B:34:0x00b6, B:33:0x00b4, B:12:0x0025, B:19:0x0055, B:15:0x0036), top: B:47:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v11, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        AICompanionLocalDataSource aICompanionLocalDataSource;
        String str;
        int i2;
        int i3;
        int i4;
        AICompanionLocalDataSource aICompanionLocalDataSource2;
        String str2;
        Preferences preferences;
        Object arrayList;
        String str3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.g;
        try {
            if (i5 == 0) {
                ResultKt.b(obj);
                aICompanionLocalDataSource = this.f43718h;
                str = this.f43719i;
                Result.Companion companion = Result.INSTANCE;
                DataStore dataStore = aICompanionLocalDataSource.f43692a;
                AICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1 aICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1 = new AICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1(aICompanionLocalDataSource, str, null);
                this.f43714b = aICompanionLocalDataSource;
                this.f43715c = str;
                i2 = 0;
                this.d = 0;
                this.f43716e = 0;
                this.f43717f = 0;
                this.g = 1;
                if (PreferencesKt.a(dataStore, aICompanionLocalDataSource$getGuestSessionHistoryList$2$1$1, this) != coroutineSingletons) {
                    i3 = 0;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i5 == 1) {
                int i6 = this.f43717f;
                int i7 = this.f43716e;
                int i8 = this.d;
                String str4 = this.f43715c;
                AICompanionLocalDataSource aICompanionLocalDataSource3 = this.f43714b;
                ResultKt.b(obj);
                i2 = i6;
                str = str4;
                i4 = i8;
                i3 = i7;
                aICompanionLocalDataSource = aICompanionLocalDataSource3;
            } else {
                if (i5 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str2 = this.f43715c;
                aICompanionLocalDataSource2 = this.f43714b;
                ResultKt.b(obj);
            }
            preferences = (Preferences) obj;
            if (preferences != null || (str3 = (String) preferences.b(AICompanionLocalDataSource.f43691f)) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                Iterable iterable = (Iterable) aICompanionLocalDataSource2.f43694c.b(BuiltinSerializersKt.b(ChatHistory.INSTANCE.serializer()), str3);
                arrayList = new ArrayList();
                for (Object obj2 : iterable) {
                    if (Intrinsics.c(((ChatHistory) obj2).d, str2)) {
                        arrayList.add(obj2);
                    }
                }
            }
            failure = new Result(arrayList);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return new Result(((Result) failure).f71708b);
            Flow d = aICompanionLocalDataSource.f43692a.getD();
            this.f43714b = aICompanionLocalDataSource;
            this.f43715c = str;
            this.d = i4;
            this.f43716e = i3;
            this.f43717f = i2;
            this.g = 2;
            Object objR = FlowKt.r(d, this);
            if (objR != coroutineSingletons) {
                AICompanionLocalDataSource aICompanionLocalDataSource4 = aICompanionLocalDataSource;
                obj = objR;
                aICompanionLocalDataSource2 = aICompanionLocalDataSource4;
                str2 = str;
                preferences = (Preferences) obj;
                if (preferences != null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    arrayList = EmptyList.f71768b;
                }
                failure = new Result(arrayList);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                return new Result(((Result) failure).f71708b);
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}

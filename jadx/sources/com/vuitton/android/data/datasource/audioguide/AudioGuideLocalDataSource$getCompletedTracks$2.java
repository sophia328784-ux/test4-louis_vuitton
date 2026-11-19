package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.preferences.core.Preferences;
import defpackage.md;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$getCompletedTracks$2", f = "AudioGuideLocalDataSource.kt", l = {37}, m = "invokeSuspend", v = 2)
final class AudioGuideLocalDataSource$getCompletedTracks$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends String>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AudioGuideLocalDataSource f43782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43783c;
    public final /* synthetic */ AudioGuideLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$getCompletedTracks$2(AudioGuideLocalDataSource audioGuideLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.d = audioGuideLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideLocalDataSource$getCompletedTracks$2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideLocalDataSource$getCompletedTracks$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        AudioGuideLocalDataSource audioGuideLocalDataSource;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43783c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                AudioGuideLocalDataSource audioGuideLocalDataSource2 = this.d;
                Result.Companion companion = Result.INSTANCE;
                Flow data = audioGuideLocalDataSource2.f43767a.getD();
                this.f43782b = audioGuideLocalDataSource2;
                this.f43783c = 1;
                Object objP = FlowKt.p(data, this);
                if (objP == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objP;
                audioGuideLocalDataSource = audioGuideLocalDataSource2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                audioGuideLocalDataSource = this.f43782b;
                ResultKt.b(obj);
            }
            String str = (String) ((Preferences) obj).b(AudioGuideLocalDataSource.g);
            if (str == null || str.length() == 0) {
                obj2 = EmptyList.f71768b;
            } else {
                Json json = audioGuideLocalDataSource.f43768b;
                json.getClass();
                obj2 = (List) json.b(new ArrayListSerializer(StringSerializer.f75684a), str);
            }
            failure = new Result(obj2);
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
        return new Result(((Result) failure).f71708b);
    }
}

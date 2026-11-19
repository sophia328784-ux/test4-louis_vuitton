package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.preferences.core.Preferences;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$getAccessData$2", f = "AudioGuideLocalDataSource.kt", l = {84}, m = "invokeSuspend", v = 2)
final class AudioGuideLocalDataSource$getAccessData$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends AudioGuideAccessData>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AudioGuideLocalDataSource f43778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43779c;
    public final /* synthetic */ AudioGuideLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$getAccessData$2(AudioGuideLocalDataSource audioGuideLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.d = audioGuideLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideLocalDataSource$getAccessData$2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideLocalDataSource$getAccessData$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        AudioGuideLocalDataSource audioGuideLocalDataSource;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43779c;
        AudioGuideAccessData audioGuideAccessData = null;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                AudioGuideLocalDataSource audioGuideLocalDataSource2 = this.d;
                Result.Companion companion = Result.INSTANCE;
                Flow data = audioGuideLocalDataSource2.f43767a.getD();
                this.f43778b = audioGuideLocalDataSource2;
                this.f43779c = 1;
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
                audioGuideLocalDataSource = this.f43778b;
                ResultKt.b(obj);
            }
            String str = (String) ((Preferences) obj).b(AudioGuideLocalDataSource.f43766f);
            if (str != null && str.length() != 0) {
                Json json = audioGuideLocalDataSource.f43768b;
                json.getClass();
                audioGuideAccessData = (AudioGuideAccessData) json.b(AudioGuideAccessData.INSTANCE.serializer(), str);
            }
            failure = new Result(audioGuideAccessData);
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

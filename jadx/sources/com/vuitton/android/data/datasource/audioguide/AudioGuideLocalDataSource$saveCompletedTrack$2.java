package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.a;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$saveCompletedTrack$2", f = "AudioGuideLocalDataSource.kt", l = {49}, m = "invokeSuspend", v = 2)
final class AudioGuideLocalDataSource$saveCompletedTrack$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideLocalDataSource f43793c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$saveCompletedTrack$2(AudioGuideLocalDataSource audioGuideLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43793c = audioGuideLocalDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideLocalDataSource$saveCompletedTrack$2(this.f43793c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideLocalDataSource$saveCompletedTrack$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        String str = this.d;
        AudioGuideLocalDataSource audioGuideLocalDataSource = this.f43793c;
        Logger logger = audioGuideLocalDataSource.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43792b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DataStore dataStore = audioGuideLocalDataSource.f43767a;
                AudioGuideLocalDataSource$saveCompletedTrack$2$1$1 audioGuideLocalDataSource$saveCompletedTrack$2$1$1 = new AudioGuideLocalDataSource$saveCompletedTrack$2$1$1(audioGuideLocalDataSource, str, null);
                this.f43792b = 1;
                obj = PreferencesKt.a(dataStore, audioGuideLocalDataSource$saveCompletedTrack$2$1$1, this);
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
        Object objA = ResultExtKt.a(((Result) failure).f71708b);
        if (!(objA instanceof Result.Failure)) {
            logger.getClass();
        }
        Throwable thA2 = Result.a(objA);
        if (thA2 != null) {
            a.y("Error saving completed track: ", thA2.getMessage(), logger, "AudioGuideLocalDataSource", null);
        }
        return new Result(objA);
    }
}

package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.audioguide.TrackDetail;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl$getTrackDetail$2", f = "AudioGuideRepositoryImpl.kt", l = {33}, m = "invokeSuspend", v = 2)
final class AudioGuideRepositoryImpl$getTrackDetail$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends TrackDetail>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideRepositoryImpl f47320c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f47321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f47322f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideRepositoryImpl$getTrackDetail$2(AudioGuideRepositoryImpl audioGuideRepositoryImpl, String str, String str2, String str3, Continuation continuation) {
        super(1, continuation);
        this.f47320c = audioGuideRepositoryImpl;
        this.d = str;
        this.f47321e = str2;
        this.f47322f = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AudioGuideRepositoryImpl$getTrackDetail$2(this.f47320c, this.d, this.f47321e, this.f47322f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AudioGuideRepositoryImpl$getTrackDetail$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objI;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47319b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f47319b = 1;
            objI = AudioGuideRepositoryImpl.i(this.f47320c, this.d, this.f47321e, this.f47322f, this);
            if (objI == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objI = ((Result) obj).f71708b;
        }
        return new Result(objI);
    }
}

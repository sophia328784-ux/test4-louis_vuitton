package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource;
import com.vuitton.foundation.model.domain.model.audioguide.TrackDetail;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl$getTrackDetail$3", f = "AudioGuideRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class AudioGuideRepositoryImpl$getTrackDetail$3 extends SuspendLambda implements Function1<Continuation<? super Result<? extends TrackDetail>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AudioGuideRepositoryImpl f47323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f47324c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideRepositoryImpl$getTrackDetail$3(AudioGuideRepositoryImpl audioGuideRepositoryImpl, String str, Continuation continuation) {
        super(1, continuation);
        this.f47323b = audioGuideRepositoryImpl;
        this.f47324c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AudioGuideRepositoryImpl$getTrackDetail$3(this.f47323b, this.f47324c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AudioGuideRepositoryImpl$getTrackDetail$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AudioGuideLocalDataSource audioGuideLocalDataSource = this.f47323b.f47308b;
        audioGuideLocalDataSource.getClass();
        String str = this.f47324c;
        str.getClass();
        Iterator it = audioGuideLocalDataSource.f43770e.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((TrackDetail) next).f66577a, str));
        TrackDetail trackDetail = (TrackDetail) next;
        if (trackDetail != null) {
            return new Result(trackDetail);
        }
        return null;
    }
}

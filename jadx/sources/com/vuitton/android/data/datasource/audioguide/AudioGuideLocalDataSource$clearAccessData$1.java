package com.vuitton.android.data.datasource.audioguide;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource", f = "AudioGuideLocalDataSource.kt", l = {105}, m = "clearAccessData-IoAF18A", v = 2)
final class AudioGuideLocalDataSource$clearAccessData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideLocalDataSource f43772c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$clearAccessData$1(AudioGuideLocalDataSource audioGuideLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43772c = audioGuideLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43771b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43772c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

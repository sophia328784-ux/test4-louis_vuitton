package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl", f = "AudioGuideRepositoryImpl.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "clearAccessData-IoAF18A", v = 2)
final class AudioGuideRepositoryImpl$clearAccessData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideRepositoryImpl f47310c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideRepositoryImpl$clearAccessData$1(AudioGuideRepositoryImpl audioGuideRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47310c = audioGuideRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47309b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f47310c.h(this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}

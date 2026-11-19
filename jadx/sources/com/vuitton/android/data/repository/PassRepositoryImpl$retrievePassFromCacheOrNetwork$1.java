package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PassRepositoryImpl", f = "PassRepositoryImpl.kt", l = {EACTags.SEX, 61, EACTags.DISPLAY_IMAGE}, m = "retrievePassFromCacheOrNetwork-gIAlu-s", v = 2)
final class PassRepositoryImpl$retrievePassFromCacheOrNetwork$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47855c;
    public final /* synthetic */ PassRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47856e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassRepositoryImpl$retrievePassFromCacheOrNetwork$1(PassRepositoryImpl passRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = passRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47855c = obj;
        this.f47856e |= Integer.MIN_VALUE;
        int i2 = PassRepositoryImpl.d;
        Object objE = this.d.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}

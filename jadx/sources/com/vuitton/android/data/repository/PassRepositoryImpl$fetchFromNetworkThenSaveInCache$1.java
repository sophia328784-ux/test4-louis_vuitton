package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.pass.Pass;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PassRepositoryImpl", f = "PassRepositoryImpl.kt", l = {EACTags.DEPRECATED, 86, 106, 110}, m = "fetchFromNetworkThenSaveInCache-gIAlu-s", v = 2)
final class PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Pass.Normal f47842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f47843c;
    public Pass.Speedy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47845f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PassRepositoryImpl f47846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47847i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1(PassRepositoryImpl passRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47846h = passRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f47847i |= Integer.MIN_VALUE;
        int i2 = PassRepositoryImpl.d;
        Object objD = this.f47846h.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}

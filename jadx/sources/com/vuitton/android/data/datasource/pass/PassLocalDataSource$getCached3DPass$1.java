package com.vuitton.android.data.datasource.pass;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource", f = "PassLocalDataSource.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "getCached3DPass-IoAF18A", v = 2)
final class PassLocalDataSource$getCached3DPass$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44190c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$getCached3DPass$1(PassLocalDataSource passLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44190c = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44189b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f44190c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}

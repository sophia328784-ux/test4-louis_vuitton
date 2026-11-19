package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppLinkRepositoryImpl", f = "AppLinkRepositoryImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "getCachedAppLinkExclusions-IoAF18A", v = 2)
final class AppLinkRepositoryImpl$getCachedAppLinkExclusions$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppLinkRepositoryImpl f47254c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkRepositoryImpl$getCachedAppLinkExclusions$1(AppLinkRepositoryImpl appLinkRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47254c = appLinkRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47253b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47254c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}

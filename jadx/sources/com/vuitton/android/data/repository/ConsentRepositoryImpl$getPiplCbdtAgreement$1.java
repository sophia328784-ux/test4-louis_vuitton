package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConsentRepositoryImpl", f = "ConsentRepositoryImpl.kt", l = {KyberEngine.KyberPolyBytes}, m = "getPiplCbdtAgreement-IoAF18A", v = 2)
final class ConsentRepositoryImpl$getPiplCbdtAgreement$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConsentRepositoryImpl f47631c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConsentRepositoryImpl$getPiplCbdtAgreement$1(ConsentRepositoryImpl consentRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47631c = consentRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47630b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objL = this.f47631c.l(this);
        return objL == CoroutineSingletons.COROUTINE_SUSPENDED ? objL : new Result(objL);
    }
}

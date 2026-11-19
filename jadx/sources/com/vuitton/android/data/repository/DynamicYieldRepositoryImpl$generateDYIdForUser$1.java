package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {DilithiumEngine.DilithiumPolyT1PackedBytes, 331}, m = "generateDYIdForUser-gIAlu-s", v = 2)
final class DynamicYieldRepositoryImpl$generateDYIdForUser$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47664c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47666f;
    public final /* synthetic */ DynamicYieldRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47667h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$generateDYIdForUser$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47666f = obj;
        this.f47667h |= Integer.MIN_VALUE;
        int i2 = DynamicYieldRepositoryImpl.f47651h;
        Object objM = this.g.m(null, this);
        return objM == CoroutineSingletons.COROUTINE_SUSPENDED ? objM : new Result(objM);
    }
}

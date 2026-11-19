package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LightUpRepositoryImpl", f = "LightUpRepositoryImpl.kt", l = {39}, m = "getLightUpProducts", v = 2)
final class LightUpRepositoryImpl$getLightUpProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpRepositoryImpl f47772c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpRepositoryImpl$getLightUpProducts$1(LightUpRepositoryImpl lightUpRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47772c = lightUpRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47771b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f47772c.i(false, false, this);
    }
}

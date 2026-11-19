package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AddressRepositoryImpl", f = "AddressRepositoryImpl.kt", l = {55}, m = "deleteAddress-gIAlu-s", v = 2)
final class AddressRepositoryImpl$deleteAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressRepositoryImpl f47197c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressRepositoryImpl$deleteAddress$1(AddressRepositoryImpl addressRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47197c = addressRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47196b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objG = this.f47197c.g(null, this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}

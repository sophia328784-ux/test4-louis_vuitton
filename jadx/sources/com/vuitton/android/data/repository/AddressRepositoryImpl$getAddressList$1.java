package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AddressRepositoryImpl", f = "AddressRepositoryImpl.kt", l = {36, 39, 41}, m = "getAddressList-IoAF18A", v = 2)
final class AddressRepositoryImpl$getAddressList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f47200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47201c;
    public final /* synthetic */ AddressRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47202e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressRepositoryImpl$getAddressList$1(AddressRepositoryImpl addressRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = addressRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47201c = obj;
        this.f47202e |= Integer.MIN_VALUE;
        Object objC = this.d.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}

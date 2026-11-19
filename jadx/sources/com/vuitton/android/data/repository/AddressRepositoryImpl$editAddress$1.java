package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AddressRepositoryImpl", f = "AddressRepositoryImpl.kt", l = {49}, m = "editAddress-gIAlu-s", v = 2)
final class AddressRepositoryImpl$editAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressRepositoryImpl f47199c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressRepositoryImpl$editAddress$1(AddressRepositoryImpl addressRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47199c = addressRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47198b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f47199c.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}

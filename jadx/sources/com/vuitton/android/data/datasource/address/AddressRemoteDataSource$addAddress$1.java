package com.vuitton.android.data.datasource.address;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.address.AddressRemoteDataSource", f = "AddressRemoteDataSource.kt", l = {33}, m = "addAddress-gIAlu-s", v = 2)
final class AddressRemoteDataSource$addAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressRemoteDataSource f43676c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressRemoteDataSource$addAddress$1(AddressRemoteDataSource addressRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43676c = addressRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43675b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43676c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

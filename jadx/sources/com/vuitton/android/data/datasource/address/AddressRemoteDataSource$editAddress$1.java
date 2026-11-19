package com.vuitton.android.data.datasource.address;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.address.AddressRemoteDataSource", f = "AddressRemoteDataSource.kt", l = {EACTags.TRANSACTION_DATE}, m = "editAddress-0E7RQCE", v = 2)
final class AddressRemoteDataSource$editAddress$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressRemoteDataSource f43682c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressRemoteDataSource$editAddress$1(AddressRemoteDataSource addressRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43682c = addressRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43681b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f43682c.c(null, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}

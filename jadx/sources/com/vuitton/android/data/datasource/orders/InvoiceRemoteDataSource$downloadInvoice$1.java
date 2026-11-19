package com.vuitton.android.data.datasource.orders;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource", f = "InvoiceRemoteDataSource.kt", l = {27}, m = "downloadInvoice-BWLJW6A", v = 2)
final class InvoiceRemoteDataSource$downloadInvoice$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InvoiceRemoteDataSource f44131c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvoiceRemoteDataSource$downloadInvoice$1(InvoiceRemoteDataSource invoiceRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44131c = invoiceRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44130b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44131c.a(null, null, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

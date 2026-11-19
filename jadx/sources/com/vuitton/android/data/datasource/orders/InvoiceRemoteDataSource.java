package com.vuitton.android.data.datasource.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.file.FileStorageProvider;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.core.type.FileLocation;
import com.vuitton.android.data.api.bff.user.OrdersApi;
import com.vuitton.android.data.api.bff.user.OrdersLegacyApi;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatchers", "Lcom/vuitton/android/data/api/bff/user/OrdersApi;", "ordersApi", "Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;", "ordersLegacyApi", "Lcom/vuitton/android/core/file/FileStorageProvider;", "fileStorageProvider", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;Lcom/vuitton/android/core/file/FileStorageProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InvoiceRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f44127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrdersApi f44128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OrdersLegacyApi f44129c;
    public final FileStorageProvider d;

    @Inject
    public InvoiceRemoteDataSource(CoroutineDispatchers coroutineDispatchers, OrdersApi ordersApi, OrdersLegacyApi ordersLegacyApi, FileStorageProvider fileStorageProvider) {
        coroutineDispatchers.getClass();
        ordersApi.getClass();
        ordersLegacyApi.getClass();
        fileStorageProvider.getClass();
        this.f44127a = coroutineDispatchers;
        this.f44128b = ordersApi;
        this.f44129c = ordersLegacyApi;
        this.d = fileStorageProvider;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, boolean z, ContinuationImpl continuationImpl) {
        InvoiceRemoteDataSource$downloadInvoice$1 invoiceRemoteDataSource$downloadInvoice$1;
        Object failure;
        if (continuationImpl instanceof InvoiceRemoteDataSource$downloadInvoice$1) {
            invoiceRemoteDataSource$downloadInvoice$1 = (InvoiceRemoteDataSource$downloadInvoice$1) continuationImpl;
            int i2 = invoiceRemoteDataSource$downloadInvoice$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                invoiceRemoteDataSource$downloadInvoice$1.d = i2 - Integer.MIN_VALUE;
            } else {
                invoiceRemoteDataSource$downloadInvoice$1 = new InvoiceRemoteDataSource$downloadInvoice$1(this, continuationImpl);
            }
        } else {
            invoiceRemoteDataSource$downloadInvoice$1 = new InvoiceRemoteDataSource$downloadInvoice$1(this, continuationImpl);
        }
        Object objF = invoiceRemoteDataSource$downloadInvoice$1.f44130b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = invoiceRemoteDataSource$downloadInvoice$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44127a.getF43530b();
                InvoiceRemoteDataSource$downloadInvoice$2$1 invoiceRemoteDataSource$downloadInvoice$2$1 = new InvoiceRemoteDataSource$downloadInvoice$2$1(z, this, str, str2, null);
                invoiceRemoteDataSource$downloadInvoice$1.d = 1;
                objF = BuildersKt.f(f43530b, invoiceRemoteDataSource$downloadInvoice$2$1, invoiceRemoteDataSource$downloadInvoice$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result(new FileLocation(((FileLocation) objF).f43532a));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}

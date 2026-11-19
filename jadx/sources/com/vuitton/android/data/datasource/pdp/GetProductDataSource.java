package com.vuitton.android.data.datasource.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.ExclusiveApi;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;", "", "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "productApi", "Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;", "getExclusiveApi", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductApi f44233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExclusiveApi f44234b;

    @Inject
    public GetProductDataSource(ProductApi productApi, ExclusiveApi exclusiveApi) {
        productApi.getClass();
        exclusiveApi.getClass();
        this.f44233a = productApi;
        this.f44234b = exclusiveApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006a, code lost:
    
        if (r12 == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r7, boolean r8, java.lang.String r9, java.lang.String r10, com.vuitton.foundation.model.domain.model.product.universal.CustomizationId r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r6 = this;
            boolean r0 = r12 instanceof com.vuitton.android.data.datasource.pdp.GetProductDataSource$getProduct$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.data.datasource.pdp.GetProductDataSource$getProduct$1 r0 = (com.vuitton.android.data.datasource.pdp.GetProductDataSource$getProduct$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.datasource.pdp.GetProductDataSource$getProduct$1 r0 = new com.vuitton.android.data.datasource.pdp.GetProductDataSource$getProduct$1
            r0.<init>(r6, r12)
        L18:
            java.lang.Object r12 = r0.f44235b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L75
            goto L6d
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r5
        L31:
            kotlin.ResultKt.b(r12)     // Catch: java.lang.Throwable -> L75
            goto L4a
        L35:
            kotlin.ResultKt.b(r12)
            kotlin.Result$Companion r12 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L75
            if (r8 == 0) goto L4d
            r0.d = r4     // Catch: java.lang.Throwable -> L75
            com.vuitton.android.data.api.bff.catalog.ExclusiveApi r6 = r6.f44234b     // Catch: java.lang.Throwable -> L75
            if (r10 != 0) goto L43
            r10 = r5
        L43:
            java.lang.Object r12 = r6.m77getPdpExclusiveSIrPwJI(r7, r10, r0)     // Catch: java.lang.Throwable -> L75
            if (r12 != r1) goto L4a
            goto L6c
        L4a:
            com.vuitton.android.data.dto.pdp.ProductDto r12 = (com.vuitton.android.data.dto.pdp.ProductDto) r12     // Catch: java.lang.Throwable -> L75
            goto L6f
        L4d:
            r0.d = r3     // Catch: java.lang.Throwable -> L75
            com.vuitton.android.data.api.bff.catalog.ProductApi r6 = r6.f44233a     // Catch: java.lang.Throwable -> L75
            if (r11 == 0) goto L56
            java.lang.String r8 = r11.f67963a     // Catch: java.lang.Throwable -> L75
            goto L57
        L56:
            r8 = r5
        L57:
            if (r11 == 0) goto L61
            com.vuitton.foundation.model.domain.model.product.universal.CustomizationIdType r10 = r11.f67964b     // Catch: java.lang.Throwable -> L75
            if (r10 == 0) goto L61
            java.lang.String r5 = r10.getValue()     // Catch: java.lang.Throwable -> L75
        L61:
            r10 = r9
            r9 = r8
            r8 = r10
            r11 = r0
            r10 = r5
            java.lang.Object r12 = r6.m80getProductDetailYQ596nM(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L75
            if (r12 != r1) goto L6d
        L6c:
            return r1
        L6d:
            com.vuitton.android.data.dto.pdp.ProductDto r12 = (com.vuitton.android.data.dto.pdp.ProductDto) r12     // Catch: java.lang.Throwable -> L75
        L6f:
            kotlin.Result r6 = new kotlin.Result     // Catch: java.lang.Throwable -> L75
            r6.<init>(r12)     // Catch: java.lang.Throwable -> L75
            goto L7f
        L75:
            r0 = move-exception
            r6 = r0
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            r6 = r7
        L7f:
            java.lang.Throwable r7 = kotlin.Result.a(r6)
            if (r7 != 0) goto L86
            goto L95
        L86:
            boolean r6 = r7 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L9a
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r7)
            kotlin.Result r7 = new kotlin.Result
            r7.<init>(r6)
            r6 = r7
        L95:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.f71708b
            return r6
        L9a:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.datasource.pdp.GetProductDataSource.a(java.lang.String, boolean, java.lang.String, java.lang.String, com.vuitton.foundation.model.domain.model.product.universal.CustomizationId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

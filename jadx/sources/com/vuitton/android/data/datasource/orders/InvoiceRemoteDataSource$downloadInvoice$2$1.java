package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.core.type.FileLocation;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/core/type/FileLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource$downloadInvoice$2$1", f = "InvoiceRemoteDataSource.kt", l = {29, 31, EACTags.CURRENCY_CODE}, m = "invokeSuspend", v = 2)
final class InvoiceRemoteDataSource$downloadInvoice$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FileLocation>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f44133c;
    public final /* synthetic */ InvoiceRemoteDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f44134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f44135f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvoiceRemoteDataSource$downloadInvoice$2$1(boolean z, InvoiceRemoteDataSource invoiceRemoteDataSource, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f44133c = z;
        this.d = invoiceRemoteDataSource;
        this.f44134e = str;
        this.f44135f = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InvoiceRemoteDataSource$downloadInvoice$2$1(this.f44133c, this.d, this.f44134e, this.f44135f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InvoiceRemoteDataSource$downloadInvoice$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (r11 == r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r11 == r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
    
        if (r10 == r0) goto L36;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f44132b
            r2 = 0
            com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource r3 = r10.d
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L29
            if (r1 == r6) goto L25
            if (r1 == r5) goto L21
            if (r1 != r4) goto L1b
            kotlin.ResultKt.b(r11)
            com.vuitton.android.core.type.FileLocation r11 = (com.vuitton.android.core.type.FileLocation) r11
            java.lang.String r10 = r11.f43532a
            goto L9d
        L1b:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r2
        L21:
            kotlin.ResultKt.b(r11)
            goto L74
        L25:
            kotlin.ResultKt.b(r11)
            goto L54
        L29:
            kotlin.ResultKt.b(r11)
            boolean r11 = r10.f44133c
            java.lang.String r1 = "https://"
            r7 = 0
            java.lang.String r8 = "http://"
            java.lang.String r9 = r10.f44134e
            if (r11 == 0) goto L57
            com.vuitton.android.data.api.bff.user.OrdersApi r11 = r3.f44128b
            com.vuitton.android.data.dto.account.orders.InvoiceDto r5 = new com.vuitton.android.data.dto.account.orders.InvoiceDto
            r9.getClass()
            boolean r7 = kotlin.text.StringsKt.k(r9, r8, r7)
            if (r7 == 0) goto L48
            java.lang.String r9 = kotlin.text.StringsKt.J(r9, r8, r1)
        L48:
            r5.<init>(r9)
            r10.f44132b = r6
            java.lang.Object r11 = r11.getInvoice(r5, r10)
            if (r11 != r0) goto L54
            goto L9c
        L54:
            retrofit2.Response r11 = (retrofit2.Response) r11
            goto L76
        L57:
            com.vuitton.android.data.api.bff.user.OrdersLegacyApi r11 = r3.f44129c
            com.vuitton.android.data.dto.account.orders.InvoiceDto r6 = new com.vuitton.android.data.dto.account.orders.InvoiceDto
            r9.getClass()
            boolean r7 = kotlin.text.StringsKt.k(r9, r8, r7)
            if (r7 == 0) goto L68
            java.lang.String r9 = kotlin.text.StringsKt.J(r9, r8, r1)
        L68:
            r6.<init>(r9)
            r10.f44132b = r5
            java.lang.Object r11 = r11.getInvoice(r6, r10)
            if (r11 != r0) goto L74
            goto L9c
        L74:
            retrofit2.Response r11 = (retrofit2.Response) r11
        L76:
            okhttp3.Response r1 = r11.f79449a
            boolean r5 = r1.r
            if (r5 == 0) goto Lab
            java.lang.Object r11 = r11.f79450b
            okhttp3.ResponseBody r11 = (okhttp3.ResponseBody) r11
            if (r11 == 0) goto La5
            java.io.InputStream r11 = r11.byteStream()
            if (r11 == 0) goto La5
            java.lang.String r1 = "Invoice "
            java.lang.String r2 = ".pdf"
            java.lang.String r5 = r10.f44135f
            java.lang.String r1 = defpackage.fc.h(r1, r5, r2)
            com.vuitton.android.core.file.FileStorageProvider r2 = r3.d
            r10.f44132b = r4
            java.lang.Object r10 = r2.a(r11, r1, r10)
            if (r10 != r0) goto L9d
        L9c:
            return r0
        L9d:
            java.lang.String r10 = (java.lang.String) r10
            com.vuitton.android.core.type.FileLocation r11 = new com.vuitton.android.core.type.FileLocation
            r11.<init>(r10)
            return r11
        La5:
            java.lang.String r10 = "Error loading an order invoice: empty body"
            defpackage.md.k(r10)
            return r2
        Lab:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            int r11 = r1.f76986e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Error loading an order invoice: HTTP "
            r0.<init>(r1)
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource$downloadInvoice$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

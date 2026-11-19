package com.canhub.cropper;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.canhub.cropper.BitmapLoadingWorkerJob$start$1", f = "BitmapLoadingWorkerJob.kt", l = {EACTags.CARD_SEQUENCE_NUMBER, EACTags.ADDRESS}, m = "invokeSuspend")
final class BitmapLoadingWorkerJob$start$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f25036c;
    public final /* synthetic */ BitmapLoadingWorkerJob d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapLoadingWorkerJob$start$1(BitmapLoadingWorkerJob bitmapLoadingWorkerJob, Continuation continuation) {
        super(2, continuation);
        this.d = bitmapLoadingWorkerJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BitmapLoadingWorkerJob$start$1 bitmapLoadingWorkerJob$start$1 = new BitmapLoadingWorkerJob$start$1(this.d, continuation);
        bitmapLoadingWorkerJob$start$1.f25036c = obj;
        return bitmapLoadingWorkerJob$start$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BitmapLoadingWorkerJob$start$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
    
        if (r0 == r4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
    
        if (r0 == r4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009b, code lost:
    
        return r4;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) throws java.lang.Throwable {
        /*
            r18 = this;
            r1 = r18
            com.canhub.cropper.BitmapLoadingWorkerJob r2 = r1.d
            android.net.Uri r0 = r2.f25025c
            android.content.Context r3 = r2.f25024b
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r1.f25035b
            r6 = 0
            r7 = 2
            r8 = 1
            if (r5 == 0) goto L28
            if (r5 == r8) goto L20
            if (r5 != r7) goto L1a
            kotlin.ResultKt.b(r19)
            goto L9c
        L1a:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r6
        L20:
            kotlin.ResultKt.b(r19)     // Catch: java.lang.Exception -> L25
            goto L9c
        L25:
            r0 = move-exception
            r15 = r0
            goto L77
        L28:
            kotlin.ResultKt.b(r19)
            java.lang.Object r5 = r1.f25036c
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            boolean r9 = kotlinx.coroutines.CoroutineScopeKt.e(r5)     // Catch: java.lang.Exception -> L25
            if (r9 == 0) goto L9c
            android.graphics.Rect r9 = com.canhub.cropper.BitmapUtils.f25037a     // Catch: java.lang.Exception -> L25
            int r9 = r2.d     // Catch: java.lang.Exception -> L25
            int r10 = r2.f25026e     // Catch: java.lang.Exception -> L25
            com.canhub.cropper.BitmapUtils$BitmapSampled r9 = com.canhub.cropper.BitmapUtils.i(r3, r0, r9, r10)     // Catch: java.lang.Exception -> L25
            boolean r5 = kotlinx.coroutines.CoroutineScopeKt.e(r5)     // Catch: java.lang.Exception -> L25
            if (r5 == 0) goto L9c
            android.graphics.Bitmap r5 = r9.f25042a     // Catch: java.lang.Exception -> L25
            com.canhub.cropper.BitmapUtils$RotateBitmapResult r0 = com.canhub.cropper.BitmapUtils.q(r5, r3, r0)     // Catch: java.lang.Exception -> L25
            com.canhub.cropper.BitmapLoadingWorkerJob$Result r10 = new com.canhub.cropper.BitmapLoadingWorkerJob$Result     // Catch: java.lang.Exception -> L25
            android.net.Uri r11 = r2.f25025c     // Catch: java.lang.Exception -> L25
            android.graphics.Bitmap r12 = r0.f25044a     // Catch: java.lang.Exception -> L25
            int r13 = r9.f25043b     // Catch: java.lang.Exception -> L25
            int r14 = r0.f25045b     // Catch: java.lang.Exception -> L25
            boolean r15 = r0.f25046c     // Catch: java.lang.Exception -> L25
            boolean r0 = r0.d     // Catch: java.lang.Exception -> L25
            r17 = 0
            r16 = r0
            r10.<init>(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Exception -> L25
            r1.f25035b = r8     // Catch: java.lang.Exception -> L25
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.f74659a     // Catch: java.lang.Exception -> L25
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatcherLoader.f75131a     // Catch: java.lang.Exception -> L25
            com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2 r3 = new com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2     // Catch: java.lang.Exception -> L25
            r3.<init>(r2, r10, r6)     // Catch: java.lang.Exception -> L25
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.f(r0, r3, r1)     // Catch: java.lang.Exception -> L25
            if (r0 != r4) goto L72
            goto L74
        L72:
            kotlin.Unit r0 = kotlin.Unit.f71739a     // Catch: java.lang.Exception -> L25
        L74:
            if (r0 != r4) goto L9c
            goto L9b
        L77:
            com.canhub.cropper.BitmapLoadingWorkerJob$Result r8 = new com.canhub.cropper.BitmapLoadingWorkerJob$Result
            android.net.Uri r9 = r2.f25025c
            r13 = 0
            r14 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r8.<init>(r9, r10, r11, r12, r13, r14, r15)
            r1.f25035b = r7
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.f74659a
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatcherLoader.f75131a
            com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2 r3 = new com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2
            r3.<init>(r2, r8, r6)
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.f(r0, r3, r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L97
            goto L99
        L97:
            kotlin.Unit r0 = kotlin.Unit.f71739a
        L99:
            if (r0 != r4) goto L9c
        L9b:
            return r4
        L9c:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.BitmapLoadingWorkerJob$start$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

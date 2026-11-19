package com.canhub.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1", f = "BitmapCroppingWorkerJob.kt", l = {76, 115}, m = "invokeSuspend")
final class BitmapCroppingWorkerJob$start$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f25020c;
    public final /* synthetic */ BitmapCroppingWorkerJob d;

    /* JADX INFO: renamed from: com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1", f = "BitmapCroppingWorkerJob.kt", l = {104}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ BitmapCroppingWorkerJob f25022c;
        public final /* synthetic */ Bitmap d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ BitmapUtils.BitmapSampled f25023e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, Bitmap bitmap, BitmapUtils.BitmapSampled bitmapSampled, Continuation continuation) {
            super(2, continuation);
            this.f25022c = bitmapCroppingWorkerJob;
            this.d = bitmap;
            this.f25023e = bitmapSampled;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f25022c, this.d, this.f25023e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f25021b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Rect rect = BitmapUtils.f25037a;
                BitmapCroppingWorkerJob bitmapCroppingWorkerJob = this.f25022c;
                Context context = bitmapCroppingWorkerJob.f25006b;
                Bitmap.CompressFormat compressFormat = bitmapCroppingWorkerJob.r;
                int i3 = bitmapCroppingWorkerJob.s;
                Uri uri = bitmapCroppingWorkerJob.t;
                Bitmap bitmap = this.d;
                BitmapCroppingWorkerJob.Result result = new BitmapCroppingWorkerJob.Result(bitmap, BitmapUtils.s(context, bitmap, compressFormat, i3, uri), null, this.f25023e.f25043b);
                this.f25021b = 1;
                if (BitmapCroppingWorkerJob.a(bitmapCroppingWorkerJob, result, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapCroppingWorkerJob$start$1(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, Continuation continuation) {
        super(2, continuation);
        this.d = bitmapCroppingWorkerJob;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BitmapCroppingWorkerJob$start$1 bitmapCroppingWorkerJob$start$1 = new BitmapCroppingWorkerJob$start$1(this.d, continuation);
        bitmapCroppingWorkerJob$start$1.f25020c = obj;
        return bitmapCroppingWorkerJob$start$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BitmapCroppingWorkerJob$start$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
    
        if (com.canhub.cropper.BitmapCroppingWorkerJob.a(r4, r3, r21) == r2) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            r21 = this;
            r1 = r21
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r1.f25019b
            r3 = 2
            com.canhub.cropper.BitmapCroppingWorkerJob r4 = r1.d
            r5 = 1
            r6 = 0
            if (r0 == 0) goto L24
            if (r0 == r5) goto L1c
            if (r0 != r3) goto L16
            kotlin.ResultKt.b(r22)
            goto Lb5
        L16:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r6
        L1c:
            kotlin.ResultKt.b(r22)     // Catch: java.lang.Exception -> L21
            goto La1
        L21:
            r0 = move-exception
            goto La4
        L24:
            kotlin.ResultKt.b(r22)
            java.lang.Object r0 = r1.f25020c
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            boolean r7 = kotlinx.coroutines.CoroutineScopeKt.e(r0)     // Catch: java.lang.Exception -> L21
            if (r7 == 0) goto Lb5
            android.net.Uri r9 = r4.d     // Catch: java.lang.Exception -> L21
            if (r9 == 0) goto L5e
            android.graphics.Rect r7 = com.canhub.cropper.BitmapUtils.f25037a     // Catch: java.lang.Exception -> L21
            android.content.Context r8 = r4.f25006b     // Catch: java.lang.Exception -> L21
            float[] r10 = r4.f25009f     // Catch: java.lang.Exception -> L21
            int r11 = r4.g     // Catch: java.lang.Exception -> L21
            int r12 = r4.f25010h     // Catch: java.lang.Exception -> L21
            int r13 = r4.f25011i     // Catch: java.lang.Exception -> L21
            boolean r14 = r4.f25012j     // Catch: java.lang.Exception -> L21
            int r15 = r4.f25013k     // Catch: java.lang.Exception -> L21
            int r7 = r4.l     // Catch: java.lang.Exception -> L21
            int r5 = r4.m     // Catch: java.lang.Exception -> L21
            int r3 = r4.n     // Catch: java.lang.Exception -> L21
            boolean r6 = r4.o     // Catch: java.lang.Exception -> L21
            r18 = r3
            boolean r3 = r4.p     // Catch: java.lang.Exception -> L21
            r20 = r3
            r17 = r5
            r19 = r6
            r16 = r7
            com.canhub.cropper.BitmapUtils$BitmapSampled r3 = com.canhub.cropper.BitmapUtils.c(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)     // Catch: java.lang.Exception -> L21
            goto L76
        L5e:
            android.graphics.Bitmap r5 = r4.f25008e     // Catch: java.lang.Exception -> L21
            if (r5 == 0) goto L91
            android.graphics.Rect r3 = com.canhub.cropper.BitmapUtils.f25037a     // Catch: java.lang.Exception -> L21
            float[] r6 = r4.f25009f     // Catch: java.lang.Exception -> L21
            int r7 = r4.g     // Catch: java.lang.Exception -> L21
            boolean r8 = r4.f25012j     // Catch: java.lang.Exception -> L21
            int r9 = r4.f25013k     // Catch: java.lang.Exception -> L21
            int r10 = r4.l     // Catch: java.lang.Exception -> L21
            boolean r11 = r4.o     // Catch: java.lang.Exception -> L21
            boolean r12 = r4.p     // Catch: java.lang.Exception -> L21
            com.canhub.cropper.BitmapUtils$BitmapSampled r3 = com.canhub.cropper.BitmapUtils.e(r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> L21
        L76:
            android.graphics.Bitmap r5 = r3.f25042a     // Catch: java.lang.Exception -> L21
            int r6 = r4.m     // Catch: java.lang.Exception -> L21
            int r7 = r4.n     // Catch: java.lang.Exception -> L21
            com.canhub.cropper.CropImageView$RequestSizeOptions r8 = r4.q     // Catch: java.lang.Exception -> L21
            android.graphics.Bitmap r5 = com.canhub.cropper.BitmapUtils.r(r5, r6, r7, r8)     // Catch: java.lang.Exception -> L21
            kotlinx.coroutines.scheduling.DefaultScheduler r6 = kotlinx.coroutines.Dispatchers.f74659a     // Catch: java.lang.Exception -> L21
            kotlinx.coroutines.scheduling.DefaultIoScheduler r6 = kotlinx.coroutines.scheduling.DefaultIoScheduler.f75161b     // Catch: java.lang.Exception -> L21
            com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1 r7 = new com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1     // Catch: java.lang.Exception -> L21
            r8 = 0
            r7.<init>(r4, r5, r3, r8)     // Catch: java.lang.Exception -> L21
            r3 = 2
            kotlinx.coroutines.BuildersKt.c(r0, r6, r8, r7, r3)     // Catch: java.lang.Exception -> L21
            goto Lb5
        L91:
            com.canhub.cropper.BitmapCroppingWorkerJob$Result r0 = new com.canhub.cropper.BitmapCroppingWorkerJob$Result     // Catch: java.lang.Exception -> L21
            r3 = 1
            r8 = 0
            r0.<init>(r8, r8, r8, r3)     // Catch: java.lang.Exception -> L21
            r1.f25019b = r3     // Catch: java.lang.Exception -> L21
            java.lang.Object r0 = com.canhub.cropper.BitmapCroppingWorkerJob.a(r4, r0, r1)     // Catch: java.lang.Exception -> L21
            if (r0 != r2) goto La1
            goto Lb4
        La1:
            kotlin.Unit r0 = kotlin.Unit.f71739a     // Catch: java.lang.Exception -> L21
            return r0
        La4:
            com.canhub.cropper.BitmapCroppingWorkerJob$Result r3 = new com.canhub.cropper.BitmapCroppingWorkerJob$Result
            r5 = 1
            r8 = 0
            r3.<init>(r8, r8, r0, r5)
            r5 = 2
            r1.f25019b = r5
            java.lang.Object r0 = com.canhub.cropper.BitmapCroppingWorkerJob.a(r4, r3, r1)
            if (r0 != r2) goto Lb5
        Lb4:
            return r2
        Lb5:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.BitmapCroppingWorkerJob$start$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

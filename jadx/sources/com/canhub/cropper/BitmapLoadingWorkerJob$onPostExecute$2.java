package com.canhub.cropper;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2", f = "BitmapLoadingWorkerJob.kt", l = {}, m = "invokeSuspend")
final class BitmapLoadingWorkerJob$onPostExecute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f25033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BitmapLoadingWorkerJob f25034c;
    public final /* synthetic */ BitmapLoadingWorkerJob.Result d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapLoadingWorkerJob$onPostExecute$2(BitmapLoadingWorkerJob bitmapLoadingWorkerJob, BitmapLoadingWorkerJob.Result result, Continuation continuation) {
        super(2, continuation);
        this.f25034c = bitmapLoadingWorkerJob;
        this.d = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BitmapLoadingWorkerJob$onPostExecute$2 bitmapLoadingWorkerJob$onPostExecute$2 = new BitmapLoadingWorkerJob$onPostExecute$2(this.f25034c, this.d, continuation);
        bitmapLoadingWorkerJob$onPostExecute$2.f25033b = obj;
        return bitmapLoadingWorkerJob$onPostExecute$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BitmapLoadingWorkerJob$onPostExecute$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap bitmap;
        CropImageView cropImageView;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f25033b;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        boolean zE = CoroutineScopeKt.e(coroutineScope);
        BitmapLoadingWorkerJob.Result result = this.d;
        if (zE && (cropImageView = (CropImageView) this.f25034c.f25027f.get()) != null) {
            ref$BooleanRef.f71917b = true;
            Exception exc = result.g;
            cropImageView.O = null;
            cropImageView.j();
            if (exc == null) {
                int i2 = result.d;
                cropImageView.f25079k = i2;
                cropImageView.m = result.f25031e;
                cropImageView.n = result.f25032f;
                cropImageView.h(result.f25029b, 0, result.f25028a, result.f25030c, i2);
            }
            CropImageView.OnSetImageUriCompleteListener onSetImageUriCompleteListener = cropImageView.E;
            if (onSetImageUriCompleteListener != null) {
                onSetImageUriCompleteListener.m(cropImageView, result.f25028a, exc);
            }
        }
        if (!ref$BooleanRef.f71917b && (bitmap = result.f25029b) != null) {
            bitmap.recycle();
        }
        return Unit.f71739a;
    }
}

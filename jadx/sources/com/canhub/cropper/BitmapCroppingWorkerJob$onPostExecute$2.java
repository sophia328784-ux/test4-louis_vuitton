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
@DebugMetadata(c = "com.canhub.cropper.BitmapCroppingWorkerJob$onPostExecute$2", f = "BitmapCroppingWorkerJob.kt", l = {}, m = "invokeSuspend")
final class BitmapCroppingWorkerJob$onPostExecute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f25017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BitmapCroppingWorkerJob f25018c;
    public final /* synthetic */ BitmapCroppingWorkerJob.Result d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapCroppingWorkerJob$onPostExecute$2(BitmapCroppingWorkerJob bitmapCroppingWorkerJob, BitmapCroppingWorkerJob.Result result, Continuation continuation) {
        super(2, continuation);
        this.f25018c = bitmapCroppingWorkerJob;
        this.d = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BitmapCroppingWorkerJob$onPostExecute$2 bitmapCroppingWorkerJob$onPostExecute$2 = new BitmapCroppingWorkerJob$onPostExecute$2(this.f25018c, this.d, continuation);
        bitmapCroppingWorkerJob$onPostExecute$2.f25017b = obj;
        return bitmapCroppingWorkerJob$onPostExecute$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BitmapCroppingWorkerJob$onPostExecute$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap bitmap;
        CropImageView cropImageView;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f25017b;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        boolean zE = CoroutineScopeKt.e(coroutineScope);
        BitmapCroppingWorkerJob.Result result = this.d;
        if (zE && (cropImageView = (CropImageView) this.f25018c.f25007c.get()) != null) {
            ref$BooleanRef.f71917b = true;
            cropImageView.P = null;
            cropImageView.j();
            CropImageView.OnCropImageCompleteListener onCropImageCompleteListener = cropImageView.F;
            if (onCropImageCompleteListener != null) {
                onCropImageCompleteListener.g(cropImageView, new CropImageView.CropResult(cropImageView.f25078j, cropImageView.imageUri, result.f25014a, result.f25015b, result.f25016c, cropImageView.getCropPoints(), cropImageView.getCropRect(), cropImageView.getWholeImageRect(), cropImageView.getL(), result.d));
            }
        }
        if (!ref$BooleanRef.f71917b && (bitmap = result.f25014a) != null) {
            bitmap.recycle();
        }
        return Unit.f71739a;
    }
}

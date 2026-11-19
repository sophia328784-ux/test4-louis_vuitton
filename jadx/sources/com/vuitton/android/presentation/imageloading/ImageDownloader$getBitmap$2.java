package com.vuitton.android.presentation.imageloading;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.SingletonImageLoader;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import com.vuitton.foundation.logger.LegacyLogger;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.imageloading.ImageDownloader$getBitmap$2", f = "ImageDownloader.kt", l = {33}, m = "invokeSuspend", v = 2)
final class ImageDownloader$getBitmap$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f51521c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageDownloader$getBitmap$2(Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.f51521c = context;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImageDownloader$getBitmap$2(this.f51521c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageDownloader$getBitmap$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51520b;
        String str = this.d;
        Context context = this.f51521c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                PredefinedImageRequestOptions.b(builder, context, str);
                ImageRequest imageRequestA = builder.a();
                ImageLoader imageLoaderA = SingletonImageLoader.a(context);
                this.f51520b = 1;
                obj = imageLoaderA.b(imageRequestA, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            ImageResult imageResult = (ImageResult) obj;
            if (!(imageResult instanceof SuccessResult)) {
                imageResult.getClass();
                throw new IllegalStateException(((ErrorResult) imageResult).f21611c.toString());
            }
            Image image = ((SuccessResult) imageResult).f21668a;
            Resources resources = context.getResources();
            resources.getClass();
            Drawable drawableA = Image_androidKt.a(image, resources);
            if (drawableA instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawableA).getBitmap();
            }
            throw new IllegalStateException("Incompatible drawable type, use a Bitmap");
        } catch (IllegalStateException e2) {
            if (str == null) {
                str = "";
            }
            LegacyLogger.f66205a.c("ImageLoading", "Unable to download bitmap from url=".concat(str), e2);
            return null;
        }
    }
}

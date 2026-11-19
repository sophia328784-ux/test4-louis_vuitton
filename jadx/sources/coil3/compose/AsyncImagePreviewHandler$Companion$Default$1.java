package coil3.compose;

import coil3.Image;
import coil3.ImageLoader;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class AsyncImagePreviewHandler$Companion$Default$1 implements AsyncImagePreviewHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AsyncImagePreviewHandler$Companion$Default$1 f21291b = new AsyncImagePreviewHandler$Companion$Default$1();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil3.compose.AsyncImagePreviewHandler
    public final Object a(ImageLoader imageLoader, ImageRequest imageRequest, ContinuationImpl continuationImpl) {
        AsyncImagePreviewHandler$Companion$Default$1$handle$1 asyncImagePreviewHandler$Companion$Default$1$handle$1;
        if (continuationImpl instanceof AsyncImagePreviewHandler$Companion$Default$1$handle$1) {
            asyncImagePreviewHandler$Companion$Default$1$handle$1 = (AsyncImagePreviewHandler$Companion$Default$1$handle$1) continuationImpl;
            int i2 = asyncImagePreviewHandler$Companion$Default$1$handle$1.f21294e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                asyncImagePreviewHandler$Companion$Default$1$handle$1.f21294e = i2 - Integer.MIN_VALUE;
            } else {
                asyncImagePreviewHandler$Companion$Default$1$handle$1 = new AsyncImagePreviewHandler$Companion$Default$1$handle$1(this, continuationImpl);
            }
        } else {
            asyncImagePreviewHandler$Companion$Default$1$handle$1 = new AsyncImagePreviewHandler$Companion$Default$1$handle$1(this, continuationImpl);
        }
        Object objB = asyncImagePreviewHandler$Companion$Default$1$handle$1.f21293c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = asyncImagePreviewHandler$Companion$Default$1$handle$1.f21294e;
        if (i3 == 0) {
            ResultKt.b(objB);
            asyncImagePreviewHandler$Companion$Default$1$handle$1.f21292b = imageRequest;
            asyncImagePreviewHandler$Companion$Default$1$handle$1.f21294e = 1;
            objB = imageLoader.b(imageRequest, asyncImagePreviewHandler$Companion$Default$1$handle$1);
            if (objB == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            imageRequest = asyncImagePreviewHandler$Companion$Default$1$handle$1.f21292b;
            ResultKt.b(objB);
        }
        ImageResult imageResult = (ImageResult) objB;
        if (imageResult instanceof SuccessResult) {
            SuccessResult successResult = (SuccessResult) imageResult;
            return new AsyncImagePainter.State.Success(ImagePainter_androidKt.b(successResult.f21668a, imageRequest.f21612a), successResult);
        }
        if (!(imageResult instanceof ErrorResult)) {
            v40.g();
            return null;
        }
        ErrorResult errorResult = (ErrorResult) imageResult;
        Image image = errorResult.f21609a;
        return new AsyncImagePainter.State.Error(image != null ? ImagePainter_androidKt.b(image, imageRequest.f21612a) : null, errorResult);
    }
}

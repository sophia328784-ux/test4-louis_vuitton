package com.vuitton.android.presentation.imageloading.xmlui;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import coil3.Extras;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.SingletonImageLoader;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.SuccessResult;
import coil3.target.ImageViewTarget;
import com.vuitton.android.R;
import com.vuitton.android.presentation.imageloading.PredefinedImageRequestOptions;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.cj;
import defpackage.hb;
import defpackage.o51;
import defpackage.r61;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class XmlUiKt {
    public static void a(final ImageView imageView, final Object obj, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i2 = R.drawable.placeholder;
        }
        if ((i4 & 4) != 0) {
            i3 = R.drawable.placeholder;
        }
        final r61 r61Var = new r61(12);
        final o51 o51Var = new o51(27);
        imageView.getClass();
        ImageLoader imageLoaderA = SingletonImageLoader.a(imageView.getContext());
        ImageRequest.Builder builder = new ImageRequest.Builder(imageView.getContext());
        builder.f21623c = null;
        Extras.Key key = ImageRequests_androidKt.f21651a;
        builder.d = new ImageViewTarget(imageView);
        Context context = imageView.getContext();
        context.getClass();
        PredefinedImageRequestOptions.b(builder, context, obj);
        builder.s = new hb(i2, 8);
        builder.t = new hb(i3, 7);
        builder.f21624e = new ImageRequest.Listener() { // from class: com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1
            @Override // coil3.request.ImageRequest.Listener
            public final void a(SuccessResult successResult) {
                Image image = successResult.f21668a;
                Resources resources = imageView.getContext().getResources();
                resources.getClass();
                o51Var.invoke(Image_androidKt.a(image, resources));
            }

            @Override // coil3.request.ImageRequest.Listener
            public final void b(ErrorResult errorResult) {
                LegacyLogger.f66205a.c("ImageLoading", cj.i(obj, "Unable to load image from data="), errorResult.f21611c);
                r61Var.mo47invoke();
            }

            @Override // coil3.request.ImageRequest.Listener
            public final void onCancel() {
                LegacyLogger.f66205a.c("ImageLoading", "Image loading canceled for data=" + obj, null);
                r61Var.mo47invoke();
            }
        };
        imageLoaderA.d(builder.a());
    }
}

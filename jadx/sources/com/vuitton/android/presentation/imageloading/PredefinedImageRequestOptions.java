package com.vuitton.android.presentation.imageloading;

import android.content.Context;
import coil3.Extras;
import coil3.network.ImageRequestsKt;
import coil3.network.NetworkHeaders;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.Precision;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.platform.extensions.StringExtKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PredefinedImageRequestOptions {
    public static void a(ImageRequest.Builder builder, Context context) {
        NetworkHeaders.Builder builder2 = new NetworkHeaders.Builder();
        UserAgentInterceptor.f47097c.getClass();
        builder2.a("User-Agent", UserAgentInterceptor.Companion.a(context, false));
        builder2.a("accept", "image/webp,image/heic,image/png;q=0.9,image/*;q=0.8,*/*;q=0.5");
        NetworkHeaders networkHeadersB = builder2.b();
        Extras.Key key = ImageRequestsKt.f21540a;
        builder.b().b(ImageRequestsKt.f21541b, networkHeadersB);
    }

    public static void b(ImageRequest.Builder builder, Context context, Object obj) {
        context.getClass();
        if (obj == null || ((obj instanceof String) && !StringExtKt.a((String) obj))) {
            obj = "";
        }
        builder.f21623c = obj;
        a(builder, context);
        Extras.Key key = coil3.request.ImageRequestsKt.f21648a;
        ImageRequests_androidKt.a(builder, 200);
        builder.b().b(ImageRequests_androidKt.g, Boolean.TRUE);
        builder.x = Precision.INEXACT;
    }
}

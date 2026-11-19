package com.vuitton.android.presentation.imageloading.compose;

import android.content.Context;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import com.vuitton.android.presentation.imageloading.PredefinedImageRequestOptions;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.imageloading.compose.ImageLoaderExtKt$PreloadImage$1$1", f = "ImageLoaderExt.kt", l = {}, m = "invokeSuspend", v = 2)
final class ImageLoaderExtKt$PreloadImage$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f51528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UrlFactory f51529c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageLoaderExtKt$PreloadImage$1$1(String str, UrlFactory urlFactory, Context context, Continuation continuation) {
        super(2, continuation);
        this.f51528b = str;
        this.f51529c = urlFactory;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImageLoaderExtKt$PreloadImage$1$1(this.f51528b, this.f51529c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageLoaderExtKt$PreloadImage$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f51528b;
        if (str != null) {
            String strB = this.f51529c.b(str, ImageConfiguration.Background.Transparent.f65853a);
            Context context = this.d;
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            PredefinedImageRequestOptions.b(builder, context, strB);
            SingletonImageLoader.a(context).d(builder.a());
        }
        return Unit.f71739a;
    }
}

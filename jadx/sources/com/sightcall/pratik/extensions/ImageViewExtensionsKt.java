package com.sightcall.pratik.extensions;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.AndroidResourceSignature;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001aS\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00062-\b\u0002\u0010\u0007\u001a'\u0012\u001b\u0012\u0019\u0018\u00010\tj\u0004\u0018\u0001`\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b¨\u0006\u000e"}, d2 = {"load", "", "Landroid/widget/ImageView;", "uri", "Landroid/net/Uri;", "onResourceReady", "Lkotlin/Function0;", "onLoadFailed", "Lkotlin/Function1;", "Ljava/lang/Exception;", "Lkotlin/ParameterName;", "name", "e", "Lkotlin/Exception;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ImageViewExtensionsKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.sightcall.pratik.extensions.ImageViewExtensionsKt$load$1] */
    public static final void load(ImageView imageView, Uri uri, final Function0<Unit> function0, final Function1<? super Exception, Unit> function1) {
        PackageInfo packageInfo;
        imageView.getClass();
        uri.getClass();
        Context context = imageView.getContext();
        Preconditions.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestManager requestManagerB = Glide.a(context).f24279f.b(context);
        requestManagerB.getClass();
        RequestBuilder requestBuilder = new RequestBuilder(requestManagerB.f24314b, requestManagerB, Drawable.class, requestManagerB.f24315c);
        RequestBuilder requestBuilderK = requestBuilder.K(uri);
        if ("android.resource".equals(uri.getScheme())) {
            Context context2 = requestBuilder.s;
            RequestBuilder requestBuilder2 = (RequestBuilder) requestBuilderK.x(context2.getTheme());
            ConcurrentHashMap concurrentHashMap = ApplicationVersionSignature.f24969a;
            String packageName = context2.getPackageName();
            ConcurrentHashMap concurrentHashMap2 = ApplicationVersionSignature.f24969a;
            Key key = (Key) concurrentHashMap2.get(packageName);
            if (key == null) {
                try {
                    packageInfo = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    context2.getPackageName();
                    packageInfo = null;
                }
                ObjectKey objectKey = new ObjectKey(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
                Key key2 = (Key) concurrentHashMap2.putIfAbsent(packageName, objectKey);
                key = key2 == null ? objectKey : key2;
            }
            requestBuilderK = (RequestBuilder) requestBuilder2.v(new AndroidResourceSignature(context2.getResources().getConfiguration().uiMode & 48, key));
        }
        requestBuilderK.getClass();
        ((RequestBuilder) requestBuilderK.k(DownsampleStrategy.f24769b, new CenterInside(), true)).J(new RequestListener<Drawable>() { // from class: com.sightcall.pratik.extensions.ImageViewExtensionsKt.load.1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException e2, Object model, Target<Drawable> target, boolean isFirstResource) {
                Function1<Exception, Unit> function2 = function1;
                if (function2 != null) {
                    function2.invoke(e2);
                }
                return false;
            }

            public boolean onResourceReady(Drawable resource, Object model, Target<Drawable> target, DataSource dataSource, boolean isFirstResource) {
                Function0<Unit> function2 = function0;
                if (function2 != null) {
                    function2.mo47invoke();
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public /* bridge */ /* synthetic */ boolean onResourceReady(Object obj, Object obj2, Target target, DataSource dataSource, boolean z) {
                return onResourceReady((Drawable) obj, obj2, (Target<Drawable>) target, dataSource, z);
            }
        }).G(imageView);
    }

    public static /* synthetic */ void load$default(ImageView imageView, Uri uri, Function0 function0, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        load(imageView, uri, function0, function1);
    }
}

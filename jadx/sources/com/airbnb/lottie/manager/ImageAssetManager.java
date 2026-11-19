package com.airbnb.lottie.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ImageAssetManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f22056e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f22057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f22058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageAssetDelegate f22059c;
    public final Map d;

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f22058b = str;
        } else {
            this.f22058b = str.concat("/");
        }
        this.d = map;
        this.f22059c = imageAssetDelegate;
        if (callback instanceof View) {
            this.f22057a = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f22057a = null;
        }
    }

    public final void a(Bitmap bitmap, String str) {
        synchronized (f22056e) {
            ((LottieImageAsset) this.d.get(str)).f21771f = bitmap;
        }
    }
}

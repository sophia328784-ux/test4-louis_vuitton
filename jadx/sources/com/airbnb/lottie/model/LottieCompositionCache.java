package com.airbnb.lottie.model;

import androidx.collection.LruCache;
import com.airbnb.lottie.LottieComposition;

/* JADX INFO: loaded from: classes.dex */
public class LottieCompositionCache {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LottieCompositionCache f22082b = new LottieCompositionCache();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LruCache f22083a = new LruCache(20);

    public final LottieComposition a(String str) {
        if (str == null) {
            return null;
        }
        return (LottieComposition) this.f22083a.b(str);
    }
}

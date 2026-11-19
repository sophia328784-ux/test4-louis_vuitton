package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.util.GlideSuppliers;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GlideContext extends ContextWrapper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final GenericTransitionOptions f24291k = new GenericTransitionOptions();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayPool f24292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GlideSuppliers.GlideSupplier f24293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageViewTargetFactory f24294c;
    public final Glide.RequestOptionsFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f24295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f24296f;
    public final Engine g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GlideExperiments f24297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f24298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RequestOptions f24299j;

    public GlideContext(Context context, ArrayPool arrayPool, GlideSuppliers.GlideSupplier<Registry> glideSupplier, ImageViewTargetFactory imageViewTargetFactory, Glide.RequestOptionsFactory requestOptionsFactory, Map<Class<?>, TransitionOptions<?, ?>> map, List<RequestListener<Object>> list, Engine engine, GlideExperiments glideExperiments, int i2) {
        super(context.getApplicationContext());
        this.f24292a = arrayPool;
        this.f24294c = imageViewTargetFactory;
        this.d = requestOptionsFactory;
        this.f24295e = list;
        this.f24296f = map;
        this.g = engine;
        this.f24297h = glideExperiments;
        this.f24298i = i2;
        this.f24293b = GlideSuppliers.a(glideSupplier);
    }

    public final Registry a() {
        return (Registry) this.f24293b.get();
    }
}

package com.bumptech.glide;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.DataRewinderRegistry;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.EncoderRegistry;
import com.bumptech.glide.provider.ImageHeaderParserRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.provider.ResourceEncoderRegistry;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Registry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModelLoaderRegistry f24302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EncoderRegistry f24303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResourceDecoderRegistry f24304c;
    public final ResourceEncoderRegistry d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DataRewinderRegistry f24305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TranscoderRegistry f24306f;
    public final ImageHeaderParserRegistry g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ModelToResourceClassCache f24307h = new ModelToResourceClassCache();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LoadPathCache f24308i = new LoadPathCache();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Pools$Pool f24309j;

    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super(pq0.n(cls, "Failed to find result encoder for resource class: ", ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary."));
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super(pq0.m(cls, "Failed to find source encoder for data class: "));
        }
    }

    public Registry() {
        Pools$Pool pools$PoolB = FactoryPools.b();
        this.f24309j = pools$PoolB;
        this.f24302a = new ModelLoaderRegistry(pools$PoolB);
        this.f24303b = new EncoderRegistry();
        this.f24304c = new ResourceDecoderRegistry();
        this.d = new ResourceEncoderRegistry();
        this.f24305e = new DataRewinderRegistry();
        this.f24306f = new TranscoderRegistry();
        this.g = new ImageHeaderParserRegistry();
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        ResourceDecoderRegistry resourceDecoderRegistry = this.f24304c;
        synchronized (resourceDecoderRegistry) {
            try {
                ArrayList<String> arrayList2 = new ArrayList(resourceDecoderRegistry.f24920a);
                resourceDecoderRegistry.f24920a.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    resourceDecoderRegistry.f24920a.add((String) it2.next());
                }
                for (String str : arrayList2) {
                    if (!arrayList.contains(str)) {
                        resourceDecoderRegistry.f24920a.add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(ResourceDecoder resourceDecoder, Class cls, Class cls2, String str) {
        this.f24304c.a(resourceDecoder, cls, cls2, str);
    }

    public final ArrayList b() {
        ArrayList arrayList;
        ImageHeaderParserRegistry imageHeaderParserRegistry = this.g;
        synchronized (imageHeaderParserRegistry) {
            arrayList = imageHeaderParserRegistry.f24914a;
        }
        if (arrayList.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return arrayList;
    }

    public final DataRewinder c(Object obj) {
        DataRewinder dataRewinderB;
        DataRewinderRegistry dataRewinderRegistry = this.f24305e;
        synchronized (dataRewinderRegistry) {
            try {
                Preconditions.b(obj);
                DataRewinder.Factory factory = (DataRewinder.Factory) dataRewinderRegistry.f24407a.get(obj.getClass());
                if (factory == null) {
                    for (DataRewinder.Factory factory2 : dataRewinderRegistry.f24407a.values()) {
                        if (factory2.a().isAssignableFrom(obj.getClass())) {
                            factory = factory2;
                            break;
                        }
                    }
                }
                if (factory == null) {
                    factory = DataRewinderRegistry.f24406b;
                }
                dataRewinderB = factory.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dataRewinderB;
    }

    public final void d(DataRewinder.Factory factory) {
        DataRewinderRegistry dataRewinderRegistry = this.f24305e;
        synchronized (dataRewinderRegistry) {
            dataRewinderRegistry.f24407a.put(factory.a(), factory);
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public <M> NoModelLoaderAvailableException(M m, List<ModelLoader<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }

        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }
}

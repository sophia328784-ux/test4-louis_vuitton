package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.Options;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceLoader<Data> implements ModelLoader<Integer, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModelLoader f24696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f24697b;

    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f24698a;

        public AssetFileDescriptorFactory(Resources resources) {
            this.f24698a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f24698a, multiModelLoaderFactory.b(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class StreamFactory implements ModelLoaderFactory<Integer, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f24699a;

        public StreamFactory(Resources resources) {
            this.f24699a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f24699a, multiModelLoaderFactory.b(Uri.class, InputStream.class));
        }
    }

    public static class UriFactory implements ModelLoaderFactory<Integer, Uri> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f24700a;

        public UriFactory(Resources resources) {
            this.f24700a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f24700a, UnitModelLoader.f24707a);
        }
    }

    public ResourceLoader(Resources resources, ModelLoader<Uri, Data> modelLoader) {
        this.f24697b = resources;
        this.f24696a = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        Uri uri;
        Integer num = (Integer) obj;
        try {
            uri = Uri.parse("android.resource://" + this.f24697b.getResourcePackageName(num.intValue()) + '/' + num);
        } catch (Resources.NotFoundException unused) {
            Log.isLoggable("ResourceLoader", 5);
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f24696a.b(uri, i2, i3, options);
    }
}

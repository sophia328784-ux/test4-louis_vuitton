package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.AssetFileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class UriLoader<Data> implements ModelLoader<Uri, Data> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f24710b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocalUriFetcherFactory f24711a;

    public interface LocalUriFetcherFactory<Data> {
        DataFetcher a(Uri uri);
    }

    public UriLoader(LocalUriFetcherFactory<Data> localUriFetcherFactory) {
        this.f24711a = localUriFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return f24710b.contains(((Uri) obj).getScheme());
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        Uri uri = (Uri) obj;
        return new ModelLoader.LoadData(new ObjectKey(uri), this.f24711a.a(uri));
    }

    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor>, LocalUriFetcherFactory<AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f24712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24713b;

        public AssetFileDescriptorFactory(ContentResolver contentResolver, boolean z) {
            this.f24712a = contentResolver;
            this.f24713b = z;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public final DataFetcher a(Uri uri) {
            return new AssetFileDescriptorLocalUriFetcher(this.f24712a, uri, this.f24713b);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        public AssetFileDescriptorFactory(ContentResolver contentResolver) {
            this(contentResolver, false);
        }
    }

    public static class FileDescriptorFactory implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, LocalUriFetcherFactory<ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f24714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24715b;

        public FileDescriptorFactory(ContentResolver contentResolver, boolean z) {
            this.f24714a = contentResolver;
            this.f24715b = z;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public final DataFetcher a(Uri uri) {
            return new FileDescriptorLocalUriFetcher(this.f24714a, uri, this.f24715b);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        public FileDescriptorFactory(ContentResolver contentResolver) {
            this(contentResolver, false);
        }
    }

    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream>, LocalUriFetcherFactory<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f24716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24717b;

        public StreamFactory(ContentResolver contentResolver, boolean z) {
            this.f24716a = contentResolver;
            this.f24717b = z;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public final DataFetcher a(Uri uri) {
            return new StreamLocalUriFetcher(this.f24716a, uri, this.f24717b);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        public StreamFactory(ContentResolver contentResolver) {
            this(contentResolver, false);
        }
    }
}

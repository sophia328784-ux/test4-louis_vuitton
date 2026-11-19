package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class DirectResourceLoader<DataT> implements ModelLoader<Integer, DataT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResourceOpener f24644b;

    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor>, ResourceOpener<AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24645a;

        public AssetFileDescriptorFactory(Context context) {
            this.f24645a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return AssetFileDescriptor.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final void b(Object obj) throws IOException {
            ((AssetFileDescriptor) obj).close();
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i2, Resources.Theme theme, Resources resources) {
            return resources.openRawResourceFd(i2);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f24645a, this);
        }
    }

    public static final class DrawableFactory implements ModelLoaderFactory<Integer, Drawable>, ResourceOpener<Drawable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24646a;

        public DrawableFactory(Context context) {
            this.f24646a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final /* bridge */ /* synthetic */ void b(Object obj) {
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i2, Resources.Theme theme, Resources resources) {
            Context context = this.f24646a;
            return DrawableDecoderCompat.a(context, context, i2, theme);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f24646a, this);
        }
    }

    public static final class InputStreamFactory implements ModelLoaderFactory<Integer, InputStream>, ResourceOpener<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24647a;

        public InputStreamFactory(Context context) {
            this.f24647a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final void b(Object obj) throws IOException {
            ((InputStream) obj).close();
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i2, Resources.Theme theme, Resources resources) {
            return resources.openRawResource(i2);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f24647a, this);
        }
    }

    public static final class ResourceDataFetcher<DataT> implements DataFetcher<DataT> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Resources.Theme f24648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Resources f24649c;
        public final ResourceOpener d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f24650e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Object f24651f;

        public ResourceDataFetcher(Resources.Theme theme, Resources resources, ResourceOpener resourceOpener, int i2) {
            this.f24648b = theme;
            this.f24649c = resources;
            this.d = resourceOpener;
            this.f24650e = i2;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.d.a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            Object obj = this.f24651f;
            if (obj != null) {
                try {
                    this.d.b(obj);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
            try {
                Object objC = this.d.c(this.f24650e, this.f24648b, this.f24649c);
                this.f24651f = objC;
                dataCallback.f(objC);
            } catch (Resources.NotFoundException e2) {
                dataCallback.c(e2);
            }
        }
    }

    public interface ResourceOpener<DataT> {
        Class a();

        void b(Object obj);

        Object c(int i2, Resources.Theme theme, Resources resources);
    }

    public DirectResourceLoader(Context context, ResourceOpener resourceOpener) {
        this.f24643a = context.getApplicationContext();
        this.f24644b = resourceOpener;
    }

    public static ModelLoaderFactory c(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    public static ModelLoaderFactory d(Context context) {
        return new DrawableFactory(context);
    }

    public static ModelLoaderFactory e(Context context) {
        return new InputStreamFactory(context);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        Integer num = (Integer) obj;
        Resources.Theme theme = (Resources.Theme) options.c(ResourceDrawableDecoder.f24835b);
        return new ModelLoader.LoadData(new ObjectKey(num), new ResourceDataFetcher(theme, theme != null ? theme.getResources() : this.f24643a.getResources(), this.f24644b, num.intValue()));
    }
}

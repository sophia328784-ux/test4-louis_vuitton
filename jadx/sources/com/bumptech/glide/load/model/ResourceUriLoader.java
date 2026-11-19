package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.Options;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class ResourceUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModelLoader f24702b;

    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24703a;

        public AssetFileDescriptorFactory(Context context) {
            this.f24703a = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.f24703a, multiModelLoaderFactory.b(Integer.class, AssetFileDescriptor.class));
        }
    }

    public static final class InputStreamFactory implements ModelLoaderFactory<Uri, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24704a;

        public InputStreamFactory(Context context) {
            this.f24704a = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.f24704a, multiModelLoaderFactory.b(Integer.class, InputStream.class));
        }
    }

    public ResourceUriLoader(Context context, ModelLoader modelLoader) {
        this.f24701a = context.getApplicationContext();
        this.f24702b = modelLoader;
    }

    public static ModelLoaderFactory c(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    public static ModelLoaderFactory d(Context context) {
        return new InputStreamFactory(context);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        return "android.resource".equals(uri.getScheme()) && this.f24701a.getPackageName().equals(uri.getAuthority());
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        Uri uri = (Uri) obj;
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        ModelLoader modelLoader = this.f24702b;
        if (size == 1) {
            try {
                int i4 = Integer.parseInt(uri.getPathSegments().get(0));
                if (i4 != 0) {
                    return modelLoader.b(Integer.valueOf(i4), i2, i3, options);
                }
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    uri.toString();
                    return null;
                }
            } catch (NumberFormatException unused) {
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Objects.toString(uri);
                }
            }
        } else if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            Context context = this.f24701a;
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            if (identifier != 0) {
                return modelLoader.b(Integer.valueOf(identifier), i2, i3, options);
            }
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                uri.toString();
                return null;
            }
        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
            uri.toString();
        }
        return null;
    }
}

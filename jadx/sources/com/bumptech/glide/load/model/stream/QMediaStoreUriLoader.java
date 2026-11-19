package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class QMediaStoreUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModelLoader f24728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ModelLoader f24729c;
    public final Class d;

    public static abstract class Factory<DataT> implements ModelLoaderFactory<Uri, DataT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f24731b;

        public Factory(Context context, Class cls) {
            this.f24730a = context;
            this.f24731b = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            Class cls = this.f24731b;
            return new QMediaStoreUriLoader(this.f24730a, multiModelLoaderFactory.b(File.class, cls), multiModelLoaderFactory.b(Uri.class, cls), cls);
        }
    }

    public static final class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    public static final class InputStreamFactory extends Factory<InputStream> {
        public InputStreamFactory(Context context) {
            super(context, InputStream.class);
        }
    }

    public static final class QMediaStoreUriFetcher<DataT> implements DataFetcher<DataT> {
        public static final String[] l = {"_data"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f24732b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ModelLoader f24733c;
        public final ModelLoader d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Uri f24734e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f24735f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Options f24736h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Class f24737i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f24738j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile DataFetcher f24739k;

        public QMediaStoreUriFetcher(Context context, ModelLoader modelLoader, ModelLoader modelLoader2, Uri uri, int i2, int i3, Options options, Class cls) {
            this.f24732b = context.getApplicationContext();
            this.f24733c = modelLoader;
            this.d = modelLoader2;
            this.f24734e = uri;
            this.f24735f = i2;
            this.g = i3;
            this.f24736h = options;
            this.f24737i = cls;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.f24737i;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            DataFetcher dataFetcher = this.f24739k;
            if (dataFetcher != null) {
                dataFetcher.b();
            }
        }

        public final DataFetcher c() throws Throwable {
            ModelLoader.LoadData loadDataB;
            Throwable th;
            boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
            Cursor cursor = null;
            Context context = this.f24732b;
            Options options = this.f24736h;
            int i2 = this.g;
            int i3 = this.f24735f;
            if (zIsExternalStorageLegacy) {
                Uri uri = this.f24734e;
                try {
                    Cursor cursorQuery = context.getContentResolver().query(uri, l, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                if (TextUtils.isEmpty(string)) {
                                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                                }
                                File file = new File(string);
                                cursorQuery.close();
                                loadDataB = this.f24733c.b(file, i3, i2, options);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            if (cursor == null) {
                                throw th;
                            }
                            cursor.close();
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                Uri requireOriginal = this.f24734e;
                boolean zB = MediaStoreUtil.b(requireOriginal);
                ModelLoader modelLoader = this.d;
                if (zB && requireOriginal.getPathSegments().contains("picker")) {
                    loadDataB = modelLoader.b(requireOriginal, i3, i2, options);
                } else {
                    if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                        requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                    }
                    loadDataB = modelLoader.b(requireOriginal, i3, i2, options);
                }
            }
            if (loadDataB != null) {
                return loadDataB.f24676c;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
            this.f24738j = true;
            DataFetcher dataFetcher = this.f24739k;
            if (dataFetcher != null) {
                dataFetcher.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) throws Throwable {
            try {
                DataFetcher dataFetcherC = c();
                if (dataFetcherC == null) {
                    dataCallback.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f24734e));
                } else {
                    this.f24739k = dataFetcherC;
                    if (this.f24738j) {
                        cancel();
                    } else {
                        dataFetcherC.e(priority, dataCallback);
                    }
                }
            } catch (FileNotFoundException e2) {
                dataCallback.c(e2);
            }
        }
    }

    public QMediaStoreUriLoader(Context context, ModelLoader modelLoader, ModelLoader modelLoader2, Class cls) {
        this.f24727a = context.getApplicationContext();
        this.f24728b = modelLoader;
        this.f24729c = modelLoader2;
        this.d = cls;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return MediaStoreUtil.b((Uri) obj);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        Uri uri = (Uri) obj;
        return new ModelLoader.LoadData(new ObjectKey(uri), new QMediaStoreUriFetcher(this.f24727a, this.f24728b, this.f24729c, uri, i2, i3, options, this.d));
    }
}

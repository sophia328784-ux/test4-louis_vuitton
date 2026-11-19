package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class FileLoader<Data> implements ModelLoader<File, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileOpener f24652a;

    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FileOpener f24653a;

        public Factory(FileOpener<Data> fileOpener) {
            this.f24653a = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.f24653a);
        }
    }

    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {

        /* JADX INFO: renamed from: com.bumptech.glide.load.model.FileLoader$FileDescriptorFactory$1, reason: invalid class name */
        public class AnonymousClass1 implements FileOpener<ParcelFileDescriptor> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Class a() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final void b(Object obj) throws IOException {
                ((ParcelFileDescriptor) obj).close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Object c(File file) {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public FileDescriptorFactory() {
            super(new AnonymousClass1());
        }
    }

    public static final class FileFetcher<Data> implements DataFetcher<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final File f24654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FileOpener f24655c;
        public Object d;

        public FileFetcher(File file, FileOpener fileOpener) {
            this.f24654b = file;
            this.f24655c = fileOpener;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.f24655c.a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            Object obj = this.d;
            if (obj != null) {
                try {
                    this.f24655c.b(obj);
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
                Object objC = this.f24655c.c(this.f24654b);
                this.d = objC;
                dataCallback.f(objC);
            } catch (FileNotFoundException e2) {
                Log.isLoggable("FileLoader", 3);
                dataCallback.c(e2);
            }
        }
    }

    public interface FileOpener<Data> {
        Class a();

        void b(Object obj);

        Object c(File file);
    }

    public static class StreamFactory extends Factory<InputStream> {

        /* JADX INFO: renamed from: com.bumptech.glide.load.model.FileLoader$StreamFactory$1, reason: invalid class name */
        public class AnonymousClass1 implements FileOpener<InputStream> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Class a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final void b(Object obj) throws IOException {
                ((InputStream) obj).close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Object c(File file) {
                return new FileInputStream(file);
            }
        }

        public StreamFactory() {
            super(new AnonymousClass1());
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.f24652a = fileOpener;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        File file = (File) obj;
        return new ModelLoader.LoadData(new ObjectKey(file), new FileFetcher(file, this.f24652a));
    }
}

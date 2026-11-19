package com.bumptech.glide.load.model;

import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataDecoder f24639a;

    public interface DataDecoder<Data> {
        void b(Object obj);

        ByteArrayInputStream decode(String str);
    }

    public static final class DataUriFetcher<Data> implements DataFetcher<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f24640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DataDecoder f24641c;
        public Object d;

        public DataUriFetcher(String str, DataDecoder dataDecoder) {
            this.f24640b = str;
            this.f24641c = dataDecoder;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            this.f24641c.getClass();
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            try {
                this.f24641c.b(this.d);
            } catch (IOException unused) {
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
                ByteArrayInputStream byteArrayInputStreamDecode = this.f24641c.decode(this.f24640b);
                this.d = byteArrayInputStreamDecode;
                dataCallback.f(byteArrayInputStreamDecode);
            } catch (IllegalArgumentException e2) {
                dataCallback.c(e2);
            }
        }
    }

    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DataDecoder f24642a = new AnonymousClass1();

        /* JADX INFO: renamed from: com.bumptech.glide.load.model.DataUrlLoader$StreamFactory$1, reason: invalid class name */
        public class AnonymousClass1 implements DataDecoder<InputStream> {
            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public final void b(Object obj) throws IOException {
                ((InputStream) obj).close();
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public final ByteArrayInputStream decode(String str) {
                if (!str.startsWith("data:image")) {
                    md.n("Not a valid image data URL.");
                    return null;
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    md.n("Missing comma in data URL.");
                    return null;
                }
                if (str.substring(0, iIndexOf).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                md.n("Not a base64 image data URL.");
                return null;
            }
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DataUrlLoader(this.f24642a);
        }
    }

    public DataUrlLoader(DataDecoder<Data> dataDecoder) {
        this.f24639a = dataDecoder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return obj.toString().startsWith("data:image");
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        return new ModelLoader.LoadData(new ObjectKey(obj), new DataUriFetcher(obj.toString(), this.f24639a));
    }
}

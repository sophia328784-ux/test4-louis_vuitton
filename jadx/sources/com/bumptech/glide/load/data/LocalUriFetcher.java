package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LocalUriFetcher<T> implements DataFetcher<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f24418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f24419c;
    public final ContentResolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f24420e;

    public LocalUriFetcher(ContentResolver contentResolver, Uri uri, boolean z) {
        this.d = contentResolver;
        this.f24419c = uri;
        this.f24418b = z;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        Object obj = this.f24420e;
        if (obj != null) {
            try {
                c(obj);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void c(Object obj);

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
            Object objF = f(this.d, this.f24419c);
            this.f24420e = objF;
            dataCallback.f(objF);
        } catch (FileNotFoundException e2) {
            Log.isLoggable("LocalUriFetcher", 3);
            dataCallback.c(e2);
        }
    }

    public abstract Object f(ContentResolver contentResolver, Uri uri);

    public LocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        this(contentResolver, uri, false);
    }
}

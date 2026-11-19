package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetPathFetcher<T> implements DataFetcher<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f24401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetManager f24402c;
    public Object d;

    public AssetPathFetcher(AssetManager assetManager, String str) {
        this.f24402c = assetManager;
        this.f24401b = str;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        Object obj = this.d;
        if (obj == null) {
            return;
        }
        try {
            c(obj);
        } catch (IOException unused) {
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
            Object objF = f(this.f24402c, this.f24401b);
            this.d = objF;
            dataCallback.f(objF);
        } catch (IOException e2) {
            Log.isLoggable("AssetPathFetcher", 3);
            dataCallback.c(e2);
        }
    }

    public abstract Object f(AssetManager assetManager, String str);
}

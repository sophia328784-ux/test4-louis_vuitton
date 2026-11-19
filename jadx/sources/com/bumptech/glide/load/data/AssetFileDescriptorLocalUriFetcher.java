package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import defpackage.pq0;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class AssetFileDescriptorLocalUriFetcher extends LocalUriFetcher<AssetFileDescriptor> {
    public AssetFileDescriptorLocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return AssetFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final void c(Object obj) throws IOException {
        ((AssetFileDescriptor) obj).close();
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final Object f(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        boolean z = this.f24418b;
        ContentResolver contentResolver2 = this.d;
        AssetFileDescriptor assetFileDescriptorC = (z && MediaStoreUtil.b(uri) && MediaStoreUtil.a()) ? MediaStoreUtil.c(contentResolver2, uri) : contentResolver2.openAssetFileDescriptor(uri, "r");
        if (assetFileDescriptorC != null) {
            return assetFileDescriptorC;
        }
        throw new FileNotFoundException(pq0.l(uri, "FileDescriptor is null for: "));
    }

    public AssetFileDescriptorLocalUriFetcher(ContentResolver contentResolver, Uri uri, boolean z) {
        super(contentResolver, uri, z);
    }
}

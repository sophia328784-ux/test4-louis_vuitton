package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class ThumbnailStreamOpener {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FileService f24430e = new FileService();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThumbnailQuery f24431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayPool f24432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContentResolver f24433c;
    public final ArrayList d;

    public ThumbnailStreamOpener(ArrayList arrayList, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.f24431a = thumbnailQuery;
        this.f24432b = arrayPool;
        this.f24433c = contentResolver;
        this.d = arrayList;
    }
}

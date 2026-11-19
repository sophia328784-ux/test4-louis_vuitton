package coil3.graphics;

import android.content.res.AssetFileDescriptor;
import coil3.Uri;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/decode/ContentMetadata;", "Lcoil3/decode/ImageSource$Metadata;", "Lcoil3/Uri;", "uri", "Landroid/content/res/AssetFileDescriptor;", "assetFileDescriptor", "<init>", "(Lcoil3/Uri;Landroid/content/res/AssetFileDescriptor;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ContentMetadata extends ImageSource.Metadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetFileDescriptor f21354a;

    public ContentMetadata(Uri uri, AssetFileDescriptor assetFileDescriptor) {
        this.f21354a = assetFileDescriptor;
    }
}

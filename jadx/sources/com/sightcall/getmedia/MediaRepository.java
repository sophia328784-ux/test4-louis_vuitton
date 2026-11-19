package com.sightcall.getmedia;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Size;
import com.sightcall.getmedia.model.Failure;
import com.sightcall.pratik.Result;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H&J\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\bH¦@¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H&J*\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\bH¦@¢\u0006\u0002\u0010\u0011J\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\t\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/sightcall/getmedia/MediaRepository;", "", "getBitmap", "Landroid/graphics/Bitmap;", "photo", "Landroid/net/Uri;", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPhotoSize", "Landroid/util/Size;", "media", "getPhotoThumbnailBitmap", "size", "(Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVideoSize", "getVideoThumbnailBitmap", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRawFile", "Lcom/sightcall/pratik/Result;", "", "Lcom/sightcall/getmedia/model/Failure;", "GetMedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MediaRepository {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    static /* synthetic */ Object getVideoThumbnailBitmap$default(MediaRepository mediaRepository, Context context, Uri uri, Size size, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: getVideoThumbnailBitmap");
            return null;
        }
        if ((i2 & 4) != 0) {
            size = null;
        }
        return mediaRepository.getVideoThumbnailBitmap(context, uri, size, continuation);
    }

    Object getBitmap(Uri uri, Continuation<? super Bitmap> continuation);

    Size getPhotoSize(Uri media);

    Object getPhotoThumbnailBitmap(Uri uri, Size size, Continuation<? super Bitmap> continuation);

    Object getRawFile(Uri uri, Continuation<? super Result<byte[], Failure>> continuation);

    Size getVideoSize(Uri media);

    Object getVideoThumbnailBitmap(Context context, Uri uri, Size size, Continuation<? super Bitmap> continuation);
}

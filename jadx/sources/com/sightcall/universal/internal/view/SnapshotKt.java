package com.sightcall.universal.internal.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0003H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0004H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0005H\u0000\u001a*\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f\u001a \u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f¨\u0006\u000e"}, d2 = {"getSnapshot", "Landroid/graphics/Bitmap;", "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;", "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;", "Lcom/sightcall/universal/internal/view/MyVideoConsumerView;", "Lcom/sightcall/universal/internal/view/ProgressivexImageView;", "drawBitmap", "view", "Landroid/view/View;", "advancedAnnotationsContainer", "Landroid/view/ViewGroup;", "width", "", "height", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SnapshotKt {
    public static final Bitmap drawBitmap(View view, int i2, int i3) {
        view.getClass();
        if (i2 <= 0 || i3 <= 0) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.getClass();
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.save();
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        canvas.restore();
        return bitmapCreateBitmap;
    }

    public static final Bitmap getSnapshot(MyVideoConsumerView myVideoConsumerView) {
        myVideoConsumerView.getClass();
        return drawBitmap(myVideoConsumerView, myVideoConsumerView.advancedAnnotationsContainer, myVideoConsumerView.getWidth(), myVideoConsumerView.getHeight());
    }

    public static final Bitmap getSnapshot(MyScreenshareProducerWebView myScreenshareProducerWebView) {
        myScreenshareProducerWebView.getClass();
        return drawBitmap(myScreenshareProducerWebView, myScreenshareProducerWebView.getWidth(), myScreenshareProducerWebView.getHeight());
    }

    public static final Bitmap getSnapshot(MyScreenshareConsumerView myScreenshareConsumerView) {
        myScreenshareConsumerView.getClass();
        return drawBitmap(myScreenshareConsumerView, null, myScreenshareConsumerView.getWidth(), myScreenshareConsumerView.getHeight());
    }

    public static final Bitmap getSnapshot(ProgressivexImageView progressivexImageView) {
        progressivexImageView.getClass();
        return drawBitmap(progressivexImageView, progressivexImageView.advancedAnnotationsContainer, progressivexImageView.getWidth(), progressivexImageView.getHeight());
    }

    public static final Bitmap drawBitmap(View view, ViewGroup viewGroup, int i2, int i3) {
        view.getClass();
        if (i2 <= 0 || i3 <= 0) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.getClass();
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.draw(canvas);
        if (viewGroup != null) {
            viewGroup.draw(canvas);
        }
        return bitmapCreateBitmap;
    }
}

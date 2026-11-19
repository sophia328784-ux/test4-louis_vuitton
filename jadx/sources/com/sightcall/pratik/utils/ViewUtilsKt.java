package com.sightcall.pratik.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, d2 = {"createScaledBitmap", "Landroid/graphics/Bitmap;", "Landroid/view/ViewGroup;", "width", "", "height", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewUtilsKt {
    public static final Bitmap createScaledBitmap(ViewGroup viewGroup, int i2, int i3) {
        viewGroup.getClass();
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        viewGroup.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        viewGroup.layout(0, 0, viewGroup.getWidth(), viewGroup.getHeight());
        float width = i2 / viewGroup.getWidth();
        Canvas canvas = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.getClass();
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.scale(width, width);
        viewGroup.draw(canvas);
        return bitmapCreateBitmap;
    }
}

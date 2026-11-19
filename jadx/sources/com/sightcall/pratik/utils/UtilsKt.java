package com.sightcall.pratik.utils;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import androidx.core.os.LocaleListCompat;
import java.util.Locale;
import kotlin.Metadata;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004\u001a$\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002¨\u0006\f"}, d2 = {"getUserLocale", "Ljava/util/Locale;", "Landroid/content/Context;", "getDisplayRotation", "", "rectThatFits", "Landroid/graphics/Rect;", "targetWidth", "targetHeight", "rect", "ratio", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UtilsKt {
    public static final int getDisplayRotation(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("display");
        systemService.getClass();
        int rotation = ((DisplayManager) systemService).getDisplays()[0].getRotation();
        if (rotation == 1) {
            return Sink.ORIENTATION_270;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 90;
        }
        return Sink.ORIENTATION_180;
    }

    public static final Locale getUserLocale(Context context) {
        context.getClass();
        LocaleListCompat localeListCompatF = LocaleListCompat.f(context.getResources().getConfiguration().getLocales());
        Locale localeB = !localeListCompatF.c() ? localeListCompatF.b(0) : null;
        if (localeB == null) {
            localeB = Locale.getDefault();
        }
        localeB.getClass();
        return localeB;
    }

    private static final Rect rect(Rect rect, float f2, int i2, int i3) {
        float fWidth = rect.width() / f2;
        float fHeight = rect.height() / f2;
        int i4 = rect.left + ((int) ((i2 - fWidth) / 2.0f));
        int i5 = rect.top + ((int) ((i3 - fHeight) / 2.0f));
        return new Rect(i4, i5, ((int) fWidth) + i4, ((int) fHeight) + i5);
    }

    public static final Rect rectThatFits(Rect rect, int i2, int i3) {
        float f2;
        rect.getClass();
        if (rect.isEmpty()) {
            return rect;
        }
        if (i2 == 0 && i3 == 0) {
            return rect;
        }
        float fWidth = rect.width();
        float fHeight = rect.height();
        if (fWidth > fHeight) {
            f2 = fWidth / i2;
            float f3 = i3;
            if (fHeight / f2 > f3) {
                f2 = fHeight / f3;
            }
        } else {
            float f4 = fHeight / i3;
            float f5 = i2;
            f2 = fWidth / f4 > f5 ? fWidth / f5 : f4;
        }
        return rect(rect, f2, i2, i3);
    }
}

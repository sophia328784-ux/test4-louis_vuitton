package com.otaliastudios.cameraview.internal;

import android.graphics.Rect;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;

/* JADX INFO: loaded from: classes3.dex */
public class CropHelper {
    public static Rect a(Size size, AspectRatio aspectRatio) {
        int iRound;
        int i2 = size.f39086b;
        int i3 = size.f39087c;
        int iRound2 = 0;
        if (Math.abs(aspectRatio.c() - AspectRatio.a(size.f39086b, i3).c()) <= 5.0E-4f) {
            return new Rect(0, 0, i2, i3);
        }
        if (AspectRatio.a(i2, i3).c() > aspectRatio.c()) {
            int iRound3 = Math.round(aspectRatio.c() * i3);
            iRound2 = Math.round((i2 - iRound3) / 2.0f);
            iRound = 0;
            i2 = iRound3;
        } else {
            int iRound4 = Math.round(i2 / aspectRatio.c());
            iRound = Math.round((i3 - iRound4) / 2.0f);
            i3 = iRound4;
        }
        return new Rect(iRound2, iRound, i2 + iRound2, i3 + iRound);
    }
}

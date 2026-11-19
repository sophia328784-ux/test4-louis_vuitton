package com.otaliastudios.cameraview.frame;

import android.media.Image;

/* JADX INFO: loaded from: classes3.dex */
public class ImageFrameManager extends FrameManager<Image> {
    public ImageFrameManager(int i2) {
        super(i2, Image.class);
    }

    @Override // com.otaliastudios.cameraview.frame.FrameManager
    public final void b(Object obj, boolean z) {
        try {
            ((Image) obj).close();
        } catch (Exception unused) {
        }
    }
}

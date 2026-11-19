package com.perfectcorp.perfectlib.internal;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;

/* JADX INFO: loaded from: classes3.dex */
public class AppliedResult {
    private final Bitmap bitmap;
    private final ApplyEffectCtrl.Configuration configuration;

    public AppliedResult(ApplyEffectCtrl.Configuration configuration, Bitmap bitmap) {
        this.configuration = configuration;
        this.bitmap = bitmap;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public ApplyEffectCtrl.Configuration getConfiguration() {
        return this.configuration;
    }
}

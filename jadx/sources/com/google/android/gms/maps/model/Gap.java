package com.google.android.gms.maps.model;

import defpackage.d21;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class Gap extends PatternItem {
    public final float d;

    public Gap(float f2) {
        super(2, Float.valueOf(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM)));
        this.d = Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public final String toString() {
        return d21.e(this.d, "]", new StringBuilder("[Gap: length="));
    }
}

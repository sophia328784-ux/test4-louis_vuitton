package com.otaliastudios.cameraview.markers;

import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes3.dex */
public class MarkerParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AutoFocusMarker f39026a;

    public MarkerParser(TypedArray typedArray) {
        this.f39026a = null;
        String string = typedArray.getString(3);
        if (string != null) {
            try {
                this.f39026a = (AutoFocusMarker) Class.forName(string).newInstance();
            } catch (Exception unused) {
            }
        }
    }
}

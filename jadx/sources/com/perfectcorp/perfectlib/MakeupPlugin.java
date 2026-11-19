package com.perfectcorp.perfectlib;

import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes3.dex */
public interface MakeupPlugin {
    boolean isEnabled();

    void onDestroy();

    void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2);

    void onFrameReady(long j2);

    void onInit();

    void onOutputSizeChanged(int i2, int i3);

    void setMetadata(FaceAlignmentData faceAlignmentData);
}

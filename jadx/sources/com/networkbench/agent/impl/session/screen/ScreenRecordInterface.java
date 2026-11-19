package com.networkbench.agent.impl.session.screen;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface ScreenRecordInterface {
    void maskSensitiveRegion(float f2, float f3);

    void maskSensitiveRegion(Rect rect);

    void maskSensitiveRegion(View view);

    void pauseScreenRecord();

    void resumeScreenRecord();

    void startScreenRecord();

    void stopScreenRecord();

    void unMaskSensitiveRegion(Rect rect);

    void unMaskSensitiveRegion(View view);

    void unmaskSensitiveRegion(float f2, float f3);
}

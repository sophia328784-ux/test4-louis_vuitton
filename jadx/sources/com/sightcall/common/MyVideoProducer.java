package com.sightcall.common;

import android.graphics.Point;
import net.rtccloud.sdk.VideoProducer;

/* JADX INFO: loaded from: classes3.dex */
public interface MyVideoProducer extends VideoProducer {
    Point getPreviewSize();

    boolean isPaused();

    void pause();

    void resume();
}

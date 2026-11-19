package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import net.rtccloud.sdk.Frame;
import net.rtccloud.sdk.internal.view.VideoConsumerView;
import net.rtccloud.sdk.util.Dimension;

/* JADX INFO: loaded from: classes3.dex */
public class CallOverlayConsumerView extends VideoConsumerView {
    private Bitmap bitmap;
    private final Runnable updateVisibility;

    public CallOverlayConsumerView(Context context) {
        super(context);
        this.updateVisibility = new Runnable() { // from class: com.sightcall.universal.internal.view.CallOverlayConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                CallOverlayConsumerView.this.updateVisibility();
            }
        };
        init();
    }

    private void init() {
        isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVisibility() {
        setVisibility(this.bitmap == null ? 8 : 0);
    }

    @Override // net.rtccloud.sdk.internal.view.VideoConsumerView, net.rtccloud.sdk.VideoConsumer
    public void onFrame(Frame frame) {
        super.onFrame(frame);
        if (this.bitmap == null) {
            post(this.updateVisibility);
        }
        this.bitmap = frame.bitmap;
    }

    @Override // net.rtccloud.sdk.internal.view.VideoConsumerView, android.view.View
    public void onMeasure(int i2, int i3) {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            setMeasuredDimension(0, 0);
        } else {
            Dimension measuredDimension = net.rtccloud.sdk.util.ViewUtils.getMeasuredDimension(i2, i3, bitmap.getWidth(), bitmap.getHeight());
            setMeasuredDimension(measuredDimension.width, measuredDimension.height);
        }
    }

    @Override // net.rtccloud.sdk.internal.view.VideoConsumerView, net.rtccloud.sdk.VideoConsumer
    public void onStart() {
        super.onStart();
        post(this.updateVisibility);
    }

    @Override // net.rtccloud.sdk.internal.view.VideoConsumerView, net.rtccloud.sdk.VideoConsumer
    public void onStop() {
        super.onStop();
        this.bitmap = null;
        post(this.updateVisibility);
    }

    public CallOverlayConsumerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.updateVisibility = new Runnable() { // from class: com.sightcall.universal.internal.view.CallOverlayConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                CallOverlayConsumerView.this.updateVisibility();
            }
        };
        init();
    }

    public CallOverlayConsumerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.updateVisibility = new Runnable() { // from class: com.sightcall.universal.internal.view.CallOverlayConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                CallOverlayConsumerView.this.updateVisibility();
            }
        };
        init();
    }
}

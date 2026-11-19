package com.sensorsdata.analytics.android.sdk;

import android.content.Context;
import android.view.OrientationEventListener;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class SensorsDataScreenOrientationDetector extends OrientationEventListener {
    private int mCurrentOrientation;
    private boolean mEnableState;

    public SensorsDataScreenOrientationDetector(Context context, int i2) {
        super(context, i2);
        this.mEnableState = true;
    }

    public String getOrientation() {
        if (!this.mEnableState) {
            return null;
        }
        int i2 = this.mCurrentOrientation;
        if (i2 == 0 || i2 == 180) {
            return "portrait";
        }
        if (i2 == 90 || i2 == 270) {
            return "landscape";
        }
        return null;
    }

    public boolean isEnableState() {
        return this.mEnableState;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i2) {
        if (i2 == -1) {
            return;
        }
        if (i2 < 45 || i2 > 315) {
            this.mCurrentOrientation = 0;
            return;
        }
        if (i2 > 45 && i2 < 135) {
            this.mCurrentOrientation = 90;
            return;
        }
        if (i2 > 135 && i2 < 225) {
            this.mCurrentOrientation = Sink.ORIENTATION_180;
        } else {
            if (i2 <= 225 || i2 >= 315) {
                return;
            }
            this.mCurrentOrientation = Sink.ORIENTATION_270;
        }
    }

    public void setState(boolean z) {
        this.mEnableState = z;
    }
}

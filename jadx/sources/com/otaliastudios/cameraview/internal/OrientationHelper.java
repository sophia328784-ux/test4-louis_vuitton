package com.otaliastudios.cameraview.internal;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class OrientationHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f39012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callback f39013c;
    public final OrientationEventListener d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f39016h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f39011a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f39014e = -1;
    public int g = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DisplayManager.DisplayListener f39015f = new DisplayManager.DisplayListener() { // from class: com.otaliastudios.cameraview.internal.OrientationHelper.2
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i2) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i2) {
            OrientationHelper orientationHelper = OrientationHelper.this;
            int i3 = orientationHelper.g;
            int iA = orientationHelper.a();
            if (iA != i3) {
                orientationHelper.g = iA;
                orientationHelper.f39013c.l();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i2) {
        }
    };

    public interface Callback {
        void j(int i2);

        void l();
    }

    public OrientationHelper(Context context, Callback callback) {
        this.f39012b = context;
        this.f39013c = callback;
        this.d = new OrientationEventListener(context.getApplicationContext()) { // from class: com.otaliastudios.cameraview.internal.OrientationHelper.1
            @Override // android.view.OrientationEventListener
            public final void onOrientationChanged(int i2) {
                OrientationHelper orientationHelper = OrientationHelper.this;
                int i3 = 0;
                if (i2 == -1) {
                    int i4 = orientationHelper.f39014e;
                    if (i4 != -1) {
                        i3 = i4;
                    }
                } else if (i2 < 315 && i2 >= 45) {
                    if (i2 >= 45 && i2 < 135) {
                        i3 = 90;
                    } else if (i2 >= 135 && i2 < 225) {
                        i3 = Sink.ORIENTATION_180;
                    } else if (i2 >= 225 && i2 < 315) {
                        i3 = Sink.ORIENTATION_270;
                    }
                }
                if (i3 != orientationHelper.f39014e) {
                    orientationHelper.f39014e = i3;
                    orientationHelper.f39013c.j(i3);
                }
            }
        };
    }

    public final int a() {
        int rotation = ((WindowManager) this.f39012b.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation == 2) {
            return Sink.ORIENTATION_180;
        }
        if (rotation != 3) {
            return 0;
        }
        return Sink.ORIENTATION_270;
    }
}

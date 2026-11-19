package com.google.android.filament.android;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.view.Display;
import com.google.android.filament.Renderer;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f28611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayManager f28612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Display f28613c;
    public Renderer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DisplayManager.DisplayListener f28614e;

    public DisplayHelper(Context context) {
        this.f28611a = null;
        this.f28612b = (DisplayManager) context.getSystemService("display");
    }

    public final void a(Renderer renderer, final Display display) {
        if (renderer == this.d && display == this.f28613c) {
            return;
        }
        this.d = renderer;
        this.f28613c = display;
        DisplayManager.DisplayListener displayListener = new DisplayManager.DisplayListener() { // from class: com.google.android.filament.android.DisplayHelper.1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayAdded(int i2) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayChanged(int i2) {
                if (i2 == display.getDisplayId()) {
                    DisplayHelper.this.c();
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayRemoved(int i2) {
            }
        };
        this.f28614e = displayListener;
        DisplayManager displayManager = this.f28612b;
        Handler handler = this.f28611a;
        displayManager.registerDisplayListener(displayListener, handler);
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.filament.android.DisplayHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    DisplayHelper.this.c();
                }
            });
        } else {
            c();
        }
    }

    public final void b() {
        DisplayManager.DisplayListener displayListener = this.f28614e;
        if (displayListener != null) {
            this.f28612b.unregisterDisplayListener(displayListener);
            this.f28614e = null;
            this.f28613c = null;
            this.d = null;
        }
    }

    public final void c() {
        Renderer renderer = this.d;
        Display display = this.f28613c;
        if (renderer.f28570b == null) {
            renderer.f28570b = new Renderer.DisplayInfo();
        }
        Renderer.DisplayInfo displayInfo = renderer.f28570b;
        if (displayInfo == null) {
            displayInfo = new Renderer.DisplayInfo();
        }
        displayInfo.f28573a = display.getRefreshRate();
        renderer.f(displayInfo);
    }

    public final void finalize() throws Throwable {
        try {
            b();
        } finally {
            super.finalize();
        }
    }

    public DisplayHelper(Context context, Handler handler) {
        this(context);
        this.f28611a = handler;
    }
}

package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAction implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f38893a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f38894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionHolder f38895c;
    public boolean d;

    @Override // com.otaliastudios.cameraview.engine.action.Action
    public final void a(ActionHolder actionHolder) {
        actionHolder.c(this);
        if (!f()) {
            g(actionHolder);
            l(Integer.MAX_VALUE);
        }
        this.d = false;
    }

    @Override // com.otaliastudios.cameraview.engine.action.Action
    public void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
    }

    @Override // com.otaliastudios.cameraview.engine.action.Action
    public void c(ActionHolder actionHolder, CaptureRequest captureRequest) {
        if (this.d) {
            i(actionHolder);
            this.d = false;
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.Action
    public void d(ActionHolder actionHolder, CaptureRequest captureRequest, CaptureResult captureResult) {
    }

    public final void e(ActionCallback actionCallback) {
        ArrayList arrayList = this.f38893a;
        if (arrayList.contains(actionCallback)) {
            return;
        }
        arrayList.add(actionCallback);
        actionCallback.a(this, this.f38894b);
    }

    public final boolean f() {
        return this.f38894b == Integer.MAX_VALUE;
    }

    public void g(ActionHolder actionHolder) {
    }

    public void h(ActionHolder actionHolder) {
    }

    public void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
    }

    public final Object j(CameraCharacteristics.Key key, Object obj) {
        Object obj2 = this.f38895c.i().get(key);
        return obj2 == null ? obj : obj2;
    }

    public final void k(ActionCallback actionCallback) {
        this.f38893a.remove(actionCallback);
    }

    public final void l(int i2) {
        if (i2 != this.f38894b) {
            this.f38894b = i2;
            Iterator it = this.f38893a.iterator();
            while (it.hasNext()) {
                ((ActionCallback) it.next()).a(this, this.f38894b);
            }
            if (this.f38894b == Integer.MAX_VALUE) {
                this.f38895c.c(this);
                h(this.f38895c);
            }
        }
    }

    public final void m(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        actionHolder.l(this);
        if (actionHolder.k() != null) {
            i(actionHolder);
        } else {
            this.d = true;
        }
    }
}

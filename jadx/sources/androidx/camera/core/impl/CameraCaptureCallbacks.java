package androidx.camera.core.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraCaptureCallbacks {

    public static final class ComboCameraCaptureCallback extends CameraCaptureCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f2222a = new ArrayList();

        public ComboCameraCaptureCallback(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) it.next();
                if (!(cameraCaptureCallback instanceof NoOpCameraCaptureCallback)) {
                    this.f2222a.add(cameraCaptureCallback);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void a(int i2) {
            Iterator it = this.f2222a.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).a(i2);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void b(int i2, CameraCaptureResult cameraCaptureResult) {
            Iterator it = this.f2222a.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).b(i2, cameraCaptureResult);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void c(int i2, CameraCaptureFailure cameraCaptureFailure) {
            Iterator it = this.f2222a.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).c(i2, cameraCaptureFailure);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void d(int i2) {
            Iterator it = this.f2222a.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).d(i2);
            }
        }
    }

    public static final class NoOpCameraCaptureCallback extends CameraCaptureCallback {
        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void b(int i2, CameraCaptureResult cameraCaptureResult) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void c(int i2, CameraCaptureFailure cameraCaptureFailure) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void d(int i2) {
        }
    }

    public static CameraCaptureCallback a(CameraCaptureCallback... cameraCaptureCallbackArr) {
        List listAsList = Arrays.asList(cameraCaptureCallbackArr);
        if (listAsList.isEmpty()) {
            return new NoOpCameraCaptureCallback();
        }
        return listAsList.size() == 1 ? (CameraCaptureCallback) listAsList.get(0) : new ComboCameraCaptureCallback(listAsList);
    }
}

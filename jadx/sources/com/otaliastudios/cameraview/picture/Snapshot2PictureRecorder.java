package com.otaliastudios.cameraview.picture;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.engine.Camera2Engine;
import com.otaliastudios.cameraview.engine.action.Action;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.Actions;
import com.otaliastudios.cameraview.engine.action.BaseAction;
import com.otaliastudios.cameraview.engine.action.CompletionCallback;
import com.otaliastudios.cameraview.engine.lock.LockAction;
import com.otaliastudios.cameraview.preview.RendererCameraPreview;
import com.otaliastudios.cameraview.size.AspectRatio;

/* JADX INFO: loaded from: classes3.dex */
public class Snapshot2PictureRecorder extends SnapshotGlPictureRecorder {
    public final Action l;
    public final Camera2Engine m;
    public final boolean n;
    public final Integer o;
    public final Integer p;

    public class FlashAction extends BaseAction {
        @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
        public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.FLASH_STATE);
            if (num == null) {
                SnapshotPictureRecorder.f39065e.b(2, "FlashAction:", "Waiting flash, but flashState is null!", "Taking snapshot.");
                l(Integer.MAX_VALUE);
            } else if (num.intValue() != 3) {
                SnapshotPictureRecorder.f39065e.b(1, "FlashAction:", "Waiting flash but flashState is", num, ". Waiting...");
            } else {
                SnapshotPictureRecorder.f39065e.b(1, "FlashAction:", "Waiting flash and we have FIRED state!", "Taking snapshot.");
                l(Integer.MAX_VALUE);
            }
        }

        @Override // com.otaliastudios.cameraview.engine.action.BaseAction
        public final void i(ActionHolder actionHolder) {
            this.f38895c = actionHolder;
            SnapshotPictureRecorder.f39065e.b(1, "FlashAction:", "Parameters locked, opening torch.");
            actionHolder.a().set(CaptureRequest.FLASH_MODE, 2);
            actionHolder.a().set(CaptureRequest.CONTROL_AE_MODE, 1);
            actionHolder.e();
        }
    }

    public class ResetFlashAction extends BaseAction {
        public ResetFlashAction() {
        }

        @Override // com.otaliastudios.cameraview.engine.action.BaseAction
        public final void i(ActionHolder actionHolder) {
            Snapshot2PictureRecorder snapshot2PictureRecorder = Snapshot2PictureRecorder.this;
            this.f38895c = actionHolder;
            try {
                SnapshotPictureRecorder.f39065e.b(1, "ResetFlashAction:", "Reverting the flash changes.");
                CaptureRequest.Builder builderA = actionHolder.a();
                CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
                builderA.set(key, 1);
                CaptureRequest.Key key2 = CaptureRequest.FLASH_MODE;
                builderA.set(key2, 0);
                actionHolder.d(builderA);
                builderA.set(key, snapshot2PictureRecorder.o);
                builderA.set(key2, snapshot2PictureRecorder.p);
                actionHolder.e();
            } catch (CameraAccessException unused) {
            }
        }
    }

    public Snapshot2PictureRecorder(PictureResult.Stub stub, Camera2Engine camera2Engine, RendererCameraPreview rendererCameraPreview, AspectRatio aspectRatio) {
        super(stub, camera2Engine, rendererCameraPreview, aspectRatio, camera2Engine.V);
        this.m = camera2Engine;
        boolean z = false;
        BaseAction baseActionA = Actions.a(Actions.b(2500L, new LockAction()), new FlashAction());
        this.l = baseActionA;
        baseActionA.e(new CompletionCallback() { // from class: com.otaliastudios.cameraview.picture.Snapshot2PictureRecorder.1
            @Override // com.otaliastudios.cameraview.engine.action.CompletionCallback
            public final void b() {
                SnapshotPictureRecorder.f39065e.b(1, "Taking picture with super.take().");
                Snapshot2PictureRecorder.super.b();
            }
        });
        TotalCaptureResult totalCaptureResult = camera2Engine.b1;
        if (totalCaptureResult == null) {
            SnapshotPictureRecorder.f39065e.b(2, "Picture snapshot requested very early, before the first preview frame.", "Metering might not work as intended.");
        }
        Integer num = totalCaptureResult == null ? null : (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        if (camera2Engine.z && num != null && num.intValue() == 4) {
            z = true;
        }
        this.n = z;
        this.o = (Integer) camera2Engine.t0.get(CaptureRequest.CONTROL_AE_MODE);
        this.p = (Integer) camera2Engine.t0.get(CaptureRequest.FLASH_MODE);
    }

    @Override // com.otaliastudios.cameraview.picture.SnapshotGlPictureRecorder, com.otaliastudios.cameraview.picture.PictureRecorder
    public final void a() {
        new ResetFlashAction().m(this.m);
        super.a();
    }

    @Override // com.otaliastudios.cameraview.picture.SnapshotGlPictureRecorder, com.otaliastudios.cameraview.picture.PictureRecorder
    public final void b() {
        boolean z = this.n;
        CameraLogger cameraLogger = SnapshotPictureRecorder.f39065e;
        if (!z) {
            cameraLogger.b(1, "take:", "Engine does no metering or needs no flash.", "Taking fast snapshot.");
            super.b();
        } else {
            cameraLogger.b(1, "take:", "Engine needs flash. Starting action");
            ((BaseAction) this.l).m(this.m);
        }
    }
}

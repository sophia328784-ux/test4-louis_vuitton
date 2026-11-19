package com.sightcall.mediacapture.presenter;

import androidx.camera.core.CameraSelector;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.lifecycle.ProcessCameraProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/mediacapture/presenter/CameraState;", "", "<init>", "()V", "Pending", "Ready", "Lcom/sightcall/mediacapture/presenter/CameraState$Pending;", "Lcom/sightcall/mediacapture/presenter/CameraState$Ready;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CameraState {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/mediacapture/presenter/CameraState$Pending;", "Lcom/sightcall/mediacapture/presenter/CameraState;", "<init>", "()V", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Pending extends CameraState {
        public static final Pending INSTANCE = new Pending();

        private Pending() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/sightcall/mediacapture/presenter/CameraState$Ready;", "Lcom/sightcall/mediacapture/presenter/CameraState;", "cameraProvider", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "cameraSelector", "Landroidx/camera/core/CameraSelector;", "preview", "Landroidx/camera/core/Preview;", "useCaseGroup", "Landroidx/camera/core/UseCaseGroup;", "<init>", "(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroidx/camera/core/UseCaseGroup;)V", "getCameraProvider", "()Landroidx/camera/lifecycle/ProcessCameraProvider;", "getCameraSelector", "()Landroidx/camera/core/CameraSelector;", "getPreview", "()Landroidx/camera/core/Preview;", "getUseCaseGroup", "()Landroidx/camera/core/UseCaseGroup;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Ready extends CameraState {
        private final ProcessCameraProvider cameraProvider;
        private final CameraSelector cameraSelector;
        private final Preview preview;
        private final UseCaseGroup useCaseGroup;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ready(ProcessCameraProvider processCameraProvider, CameraSelector cameraSelector, Preview preview, UseCaseGroup useCaseGroup) {
            super(null);
            processCameraProvider.getClass();
            cameraSelector.getClass();
            preview.getClass();
            useCaseGroup.getClass();
            this.cameraProvider = processCameraProvider;
            this.cameraSelector = cameraSelector;
            this.preview = preview;
            this.useCaseGroup = useCaseGroup;
        }

        public final ProcessCameraProvider getCameraProvider() {
            return this.cameraProvider;
        }

        public final CameraSelector getCameraSelector() {
            return this.cameraSelector;
        }

        public final Preview getPreview() {
            return this.preview;
        }

        public final UseCaseGroup getUseCaseGroup() {
            return this.useCaseGroup;
        }
    }

    public /* synthetic */ CameraState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CameraState() {
    }
}

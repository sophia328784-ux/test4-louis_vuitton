package com.otaliastudios.cameraview.engine.options;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import com.otaliastudios.cameraview.CameraOptions;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.mappers.Camera1Mapper;
import com.otaliastudios.cameraview.internal.CamcorderProfiles;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Camera1Options extends CameraOptions {
    public Camera1Options(Camera.Parameters parameters, int i2, boolean z) {
        int i3;
        int i4;
        if (Camera1Mapper.f38910a == null) {
            Camera1Mapper.f38910a = new Camera1Mapper();
        }
        Camera1Mapper camera1Mapper = Camera1Mapper.f38910a;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i5 = 0; i5 < numberOfCameras; i5++) {
            Camera.getCameraInfo(i5, cameraInfo);
            int i6 = cameraInfo.facing;
            HashMap map = Camera1Mapper.d;
            Integer numValueOf = Integer.valueOf(i6);
            camera1Mapper.getClass();
            Facing facing = (Facing) Camera1Mapper.a(map, numValueOf);
            if (facing != null) {
                this.f38823b.add(facing);
            }
        }
        List<String> supportedWhiteBalance = parameters.getSupportedWhiteBalance();
        if (supportedWhiteBalance != null) {
            for (String str : supportedWhiteBalance) {
                HashMap map2 = Camera1Mapper.f38912c;
                camera1Mapper.getClass();
                WhiteBalance whiteBalance = (WhiteBalance) Camera1Mapper.a(map2, str);
                if (whiteBalance != null) {
                    this.f38822a.add(whiteBalance);
                }
            }
        }
        this.f38824c.add(Flash.OFF);
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (supportedFlashModes != null) {
            for (String str2 : supportedFlashModes) {
                HashMap map3 = Camera1Mapper.f38911b;
                camera1Mapper.getClass();
                Flash flash = (Flash) Camera1Mapper.a(map3, str2);
                if (flash != null) {
                    this.f38824c.add(flash);
                }
            }
        }
        this.d.add(Hdr.OFF);
        List<String> supportedSceneModes = parameters.getSupportedSceneModes();
        if (supportedSceneModes != null) {
            for (String str3 : supportedSceneModes) {
                HashMap map4 = Camera1Mapper.f38913e;
                camera1Mapper.getClass();
                Hdr hdr = (Hdr) Camera1Mapper.a(map4, str3);
                if (hdr != null) {
                    this.d.add(hdr);
                }
            }
        }
        this.f38830k = parameters.isZoomSupported();
        this.o = parameters.getSupportedFocusModes().contains("auto");
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        this.m = parameters.getMinExposureCompensation() * exposureCompensationStep;
        this.n = parameters.getMaxExposureCompensation() * exposureCompensationStep;
        this.l = (parameters.getMinExposureCompensation() == 0 && parameters.getMaxExposureCompensation() == 0) ? false : true;
        for (Camera.Size size : parameters.getSupportedPictureSizes()) {
            int i7 = z ? size.height : size.width;
            int i8 = z ? size.width : size.height;
            this.f38825e.add(new Size(i7, i8));
            this.g.add(AspectRatio.a(i7, i8));
        }
        CamcorderProfile camcorderProfileA = CamcorderProfiles.a(i2, new Size(Integer.MAX_VALUE, Integer.MAX_VALUE));
        Size size2 = new Size(camcorderProfileA.videoFrameWidth, camcorderProfileA.videoFrameHeight);
        List<Camera.Size> supportedVideoSizes = parameters.getSupportedVideoSizes();
        int i9 = size2.f39087c;
        int i10 = size2.f39086b;
        if (supportedVideoSizes != null) {
            for (Camera.Size size3 : supportedVideoSizes) {
                int i11 = size3.width;
                if (i11 <= i10 && (i4 = size3.height) <= i9) {
                    int i12 = z ? i4 : i11;
                    i11 = z ? i11 : i4;
                    this.f38826f.add(new Size(i12, i11));
                    this.f38827h.add(AspectRatio.a(i12, i11));
                }
            }
        } else {
            for (Camera.Size size4 : parameters.getSupportedPreviewSizes()) {
                int i13 = size4.width;
                if (i13 <= i10 && (i3 = size4.height) <= i9) {
                    int i14 = z ? i3 : i13;
                    i13 = z ? i13 : i3;
                    this.f38826f.add(new Size(i14, i13));
                    this.f38827h.add(AspectRatio.a(i14, i13));
                }
            }
        }
        this.p = Float.MAX_VALUE;
        this.q = -3.4028235E38f;
        for (int[] iArr : parameters.getSupportedPreviewFpsRange()) {
            float f2 = iArr[0] / 1000.0f;
            float f3 = iArr[1] / 1000.0f;
            this.p = Math.min(this.p, f2);
            this.q = Math.max(this.q, f3);
        }
        this.f38828i.add(PictureFormat.JPEG);
        this.f38829j.add(17);
    }
}

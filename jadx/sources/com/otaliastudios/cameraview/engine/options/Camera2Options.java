package com.otaliastudios.cameraview.engine.options;

import android.graphics.ImageFormat;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.CameraOptions;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.mappers.Camera2Mapper;
import com.otaliastudios.cameraview.internal.CamcorderProfiles;
import com.otaliastudios.cameraview.size.AspectRatio;
import defpackage.md;
import defpackage.pq0;
import defpackage.v7;
import java.util.HashMap;
import java.util.HashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class Camera2Options extends CameraOptions {
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    public Camera2Options(CameraManager cameraManager, String str, boolean z, int i2) throws CameraAccessException {
        CamcorderProfile camcorderProfileA;
        if (Camera2Mapper.f38914a == null) {
            Camera2Mapper.f38914a = new Camera2Mapper();
        }
        Camera2Mapper camera2Mapper = Camera2Mapper.f38914a;
        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
        for (String str2 : cameraManager.getCameraIdList()) {
            Integer num = (Integer) cameraManager.getCameraCharacteristics(str2).get(CameraCharacteristics.LENS_FACING);
            if (num != null) {
                HashMap map = Camera2Mapper.f38915b;
                camera2Mapper.getClass();
                Facing facing = (Facing) Camera2Mapper.b(map, num);
                if (facing != null) {
                    this.f38823b.add(facing);
                }
            }
        }
        for (int i3 : (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES)) {
            HashMap map2 = Camera2Mapper.f38916c;
            Integer numValueOf = Integer.valueOf(i3);
            camera2Mapper.getClass();
            WhiteBalance whiteBalance = (WhiteBalance) Camera2Mapper.b(map2, numValueOf);
            if (whiteBalance != null) {
                this.f38822a.add(whiteBalance);
            }
        }
        this.f38824c.add(Flash.OFF);
        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        if (bool != null && bool.booleanValue()) {
            for (int i4 : (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES)) {
                camera2Mapper.getClass();
                HashSet hashSet = new HashSet();
                if (i4 == 0 || i4 == 1) {
                    hashSet.add(Flash.OFF);
                    hashSet.add(Flash.TORCH);
                } else if (i4 == 2) {
                    hashSet.add(Flash.AUTO);
                } else if (i4 == 3) {
                    hashSet.add(Flash.ON);
                } else if (i4 == 4) {
                    hashSet.add(Flash.AUTO);
                }
                this.f38824c.addAll(hashSet);
            }
        }
        this.d.add(Hdr.OFF);
        for (int i5 : (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES)) {
            HashMap map3 = Camera2Mapper.d;
            Integer numValueOf2 = Integer.valueOf(i5);
            camera2Mapper.getClass();
            Hdr hdr = (Hdr) Camera2Mapper.b(map3, numValueOf2);
            if (hdr != null) {
                this.d.add(hdr);
            }
        }
        Float f2 = (Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
        if (f2 != null) {
            this.f38830k = f2.floatValue() > 1.0f;
        }
        Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        Integer num3 = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        Integer num4 = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB);
        this.o = (num2 != null && num2.intValue() > 0) || (num3 != null && num3.intValue() > 0) || (num4 != null && num4.intValue() > 0);
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
        Rational rational = (Rational) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
        if (range != null && rational != null && rational.floatValue() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.m = ((Integer) range.getLower()).intValue() / rational.floatValue();
            this.n = ((Integer) range.getUpper()).intValue() / rational.floatValue();
        }
        this.l = (this.m == Call.Parameters.DEFAULT_CAMERA_ZOOM || this.n == Call.Parameters.DEFAULT_CAMERA_ZOOM) ? false : true;
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            v7.h("StreamConfigurationMap is null. Should not happen.");
            throw null;
        }
        for (int i6 : streamConfigurationMap.getOutputFormats()) {
            if (i6 == i2) {
                for (Size size : streamConfigurationMap.getOutputSizes(i2)) {
                    int height = z ? size.getHeight() : size.getWidth();
                    int width = z ? size.getWidth() : size.getHeight();
                    this.f38825e.add(new com.otaliastudios.cameraview.size.Size(height, width));
                    this.g.add(AspectRatio.a(height, width));
                }
                com.otaliastudios.cameraview.size.Size size2 = new com.otaliastudios.cameraview.size.Size(Integer.MAX_VALUE, Integer.MAX_VALUE);
                CameraLogger cameraLogger = CamcorderProfiles.f38996a;
                try {
                    camcorderProfileA = CamcorderProfiles.a(Integer.parseInt(str), size2);
                } catch (NumberFormatException unused) {
                    CamcorderProfiles.f38996a.b(2, "NumberFormatException for Camera2 id:", str);
                    camcorderProfileA = CamcorderProfile.get(0);
                }
                com.otaliastudios.cameraview.size.Size size3 = new com.otaliastudios.cameraview.size.Size(camcorderProfileA.videoFrameWidth, camcorderProfileA.videoFrameHeight);
                for (Size size4 : streamConfigurationMap.getOutputSizes(MediaRecorder.class)) {
                    if (size4.getWidth() <= size3.f39086b && size4.getHeight() <= size3.f39087c) {
                        int height2 = z ? size4.getHeight() : size4.getWidth();
                        int width2 = z ? size4.getWidth() : size4.getHeight();
                        this.f38826f.add(new com.otaliastudios.cameraview.size.Size(height2, width2));
                        this.f38827h.add(AspectRatio.a(height2, width2));
                    }
                }
                Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
                if (rangeArr != null) {
                    this.p = Float.MAX_VALUE;
                    this.q = -3.4028235E38f;
                    for (Range range2 : rangeArr) {
                        this.p = Math.min(this.p, ((Integer) range2.getLower()).intValue());
                        this.q = Math.max(this.q, ((Integer) range2.getUpper()).intValue());
                    }
                } else {
                    this.p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    this.q = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                this.f38828i.add(PictureFormat.JPEG);
                int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                if (iArr != null) {
                    for (int i7 : iArr) {
                        if (i7 == 3) {
                            this.f38828i.add(PictureFormat.DNG);
                        }
                    }
                }
                this.f38829j.add(35);
                for (int i8 : streamConfigurationMap.getOutputFormats()) {
                    if (ImageFormat.getBitsPerPixel(i8) > 0) {
                        this.f38829j.add(Integer.valueOf(i8));
                    }
                }
                return;
            }
        }
        md.k(pq0.k(i2, "Picture format not supported: "));
        throw null;
    }
}

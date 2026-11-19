package com.sightcall.pratik.camera;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import com.sightcall.core.InitSightcallKt;
import com.sightcall.pratik.logs.Logger;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a\u001f\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0002\u0010\t\u001a\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u0002\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0005¨\u0006\u0011"}, d2 = {"getClosestSize", "Landroid/util/Size;", "sizeArray", "", "maxSize", "", "([Landroid/util/Size;I)Landroid/util/Size;", "getOutputSizes", "lensFacing", "(I)[Landroid/util/Size;", "getSelectedCamera", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "manager", "Landroid/hardware/camera2/CameraManager;", "isCameraAvailable", "", "facing", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CameraUtilsKt {
    public static final Size getClosestSize(Size[] sizeArr, final int i2) {
        List listR = sizeArr != null ? ArraysKt.R(new Comparator() { // from class: com.sightcall.pratik.camera.CameraUtilsKt$getClosestSize$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Size size = (Size) t;
                Size size2 = (Size) t2;
                return Integer.valueOf(Math.abs(Math.max(size.getWidth(), size.getHeight()) - i2)).compareTo(Integer.valueOf(Math.abs(Math.max(size2.getWidth(), size2.getHeight()) - i2)));
            }
        }, sizeArr) : null;
        if (listR != null) {
            return (Size) CollectionsKt.B(listR);
        }
        return null;
    }

    public static /* synthetic */ Size getClosestSize$default(Size[] sizeArr, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            sizeArr = getOutputSizes$default(0, 1, null);
        }
        return getClosestSize(sizeArr, i2);
    }

    private static final Size[] getOutputSizes(int i2) throws CameraAccessException {
        Object systemService = InitSightcallKt.getSightCallComponent().context().getSystemService("camera");
        systemService.getClass();
        StreamConfigurationMap selectedCamera = getSelectedCamera(i2, (CameraManager) systemService);
        if (selectedCamera != null) {
            return selectedCamera.getOutputSizes(256);
        }
        return null;
    }

    public static /* synthetic */ Size[] getOutputSizes$default(int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 1;
        }
        return getOutputSizes(i2);
    }

    private static final StreamConfigurationMap getSelectedCamera(int i2, CameraManager cameraManager) throws CameraAccessException {
        String[] cameraIdList = cameraManager.getCameraIdList();
        cameraIdList.getClass();
        for (String str : cameraIdList) {
            CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
            cameraCharacteristics.getClass();
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num != null && num.intValue() == i2) {
                return (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            }
        }
        return null;
    }

    public static final boolean isCameraAvailable(int i2) {
        try {
            Object systemService = InitSightcallKt.getSightCallComponent().context().getSystemService("camera");
            systemService.getClass();
            CameraManager cameraManager = (CameraManager) systemService;
            String[] cameraIdList = cameraManager.getCameraIdList();
            cameraIdList.getClass();
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                cameraCharacteristics.getClass();
                int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                if (iArr != null ? ArraysKt.g(iArr, 0) : false) {
                    arrayList.add(str);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CameraCharacteristics cameraCharacteristics2 = cameraManager.getCameraCharacteristics((String) it.next());
                cameraCharacteristics2.getClass();
                Integer num = (Integer) cameraCharacteristics2.get(CameraCharacteristics.LENS_FACING);
                if (num != null && num.intValue() == i2) {
                    return true;
                }
            }
        } catch (CameraAccessException e2) {
            if (e2.getMessage() != null) {
                Logger.INSTANCE.getTag();
            }
        }
        return false;
    }

    public static /* synthetic */ boolean isCameraAvailable$default(int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 1;
        }
        return isCameraAvailable(i2);
    }
}

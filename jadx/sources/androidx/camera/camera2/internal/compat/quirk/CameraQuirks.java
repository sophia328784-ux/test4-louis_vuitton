package androidx.camera.camera2.internal.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraQuirks {
    /* JADX WARN: Code duplicated, block: B:277:0x04a7  */
    /* JADX WARN: Multi-variable type inference failed */
    public static Quirks a(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        boolean z;
        boolean z2;
        boolean z3;
        QuirkSettingsHolder quirkSettingsHolder = QuirkSettingsHolder.f2320c;
        quirkSettingsHolder.getClass();
        try {
            QuirkSettings quirkSettings = (QuirkSettings) quirkSettingsHolder.f2321a.a().get();
            ArrayList arrayList = new ArrayList();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            Integer num = (Integer) cameraCharacteristicsCompat.a(key);
            if (quirkSettings.a(AeFpsRangeLegacyQuirk.class, num != null && num.intValue() == 2)) {
                arrayList.add(new AeFpsRangeLegacyQuirk(cameraCharacteristicsCompat));
            }
            if (quirkSettings.a(AspectRatioLegacyApi21Quirk.class, false)) {
                arrayList.add(new AspectRatioLegacyApi21Quirk());
            }
            HashSet hashSet = JpegHalCorruptImageQuirk.f1750a;
            String str = Build.DEVICE;
            Locale locale = Locale.US;
            if (quirkSettings.a(JpegHalCorruptImageQuirk.class, hashSet.contains(str.toLowerCase(locale)))) {
                arrayList.add(new JpegHalCorruptImageQuirk());
            }
            HashSet hashSet2 = JpegCaptureDownsizingQuirk.f1749a;
            String str2 = Build.MODEL;
            if (quirkSettings.a(JpegCaptureDownsizingQuirk.class, hashSet2.contains(str2.toLowerCase(locale)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0)) {
                arrayList.add(new JpegCaptureDownsizingQuirk());
            }
            Integer num2 = (Integer) cameraCharacteristicsCompat.a(key);
            if (quirkSettings.a(CamcorderProfileResolutionQuirk.class, num2 != null && num2.intValue() == 2)) {
                arrayList.add(new CamcorderProfileResolutionQuirk(cameraCharacteristicsCompat));
            }
            String str3 = Build.HARDWARE;
            if (quirkSettings.a(CaptureNoResponseQuirk.class, ("samsungexynos7420".equalsIgnoreCase(str3) || "universal7420".equalsIgnoreCase(str3)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 1)) {
                arrayList.add(new CaptureNoResponseQuirk());
            }
            Integer num3 = (Integer) cameraCharacteristicsCompat.a(key);
            if (quirkSettings.a(LegacyCameraOutputConfigNullPointerQuirk.class, num3 != null && num3.intValue() == 2)) {
                arrayList.add(new LegacyCameraOutputConfigNullPointerQuirk());
            }
            if (quirkSettings.a(LegacyCameraSurfaceCleanupQuirk.class, false)) {
                arrayList.add(new LegacyCameraSurfaceCleanupQuirk());
            }
            if (quirkSettings.a(ImageCaptureWashedOutImageQuirk.class, ImageCaptureWashedOutImageQuirk.f1744a.contains(str2.toUpperCase(locale)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 1)) {
                arrayList.add(new ImageCaptureWashedOutImageQuirk());
            }
            if (quirkSettings.a(CameraNoResponseWhenEnablingFlashQuirk.class, CameraNoResponseWhenEnablingFlashQuirk.f1729a.contains(str2.toUpperCase(locale)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 1)) {
                arrayList.add(new CameraNoResponseWhenEnablingFlashQuirk());
            }
            String str4 = Build.BRAND;
            if (quirkSettings.a(YuvImageOnePixelShiftQuirk.class, ("motorola".equalsIgnoreCase(str4) && "MotoG3".equalsIgnoreCase(str2)) || ("samsung".equalsIgnoreCase(str4) && "SM-G532F".equalsIgnoreCase(str2)) || (("samsung".equalsIgnoreCase(str4) && "SM-J700F".equalsIgnoreCase(str2)) || (("samsung".equalsIgnoreCase(str4) && "SM-A920F".equalsIgnoreCase(str2)) || (("samsung".equalsIgnoreCase(str4) && "SM-J415F".equalsIgnoreCase(str2)) || (Payload.SOURCE_XIAOMI.equalsIgnoreCase(str4) && "Mi A1".equalsIgnoreCase(str2))))))) {
                arrayList.add(new YuvImageOnePixelShiftQuirk());
            }
            Iterator it = FlashTooSlowQuirk.f1738a.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Build.MODEL.toUpperCase(Locale.US).startsWith((String) it.next())) {
                        if (((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                break;
            }
            if (quirkSettings.a(FlashTooSlowQuirk.class, z)) {
                arrayList.add(new FlashTooSlowQuirk());
            }
            if (quirkSettings.a(AfRegionFlipHorizontallyQuirk.class, Build.BRAND.equalsIgnoreCase("SAMSUNG") && Build.VERSION.SDK_INT < 33 && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0)) {
                arrayList.add(new AfRegionFlipHorizontallyQuirk());
            }
            CameraCharacteristics.Key key2 = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            Integer num4 = (Integer) cameraCharacteristicsCompat.a(key2);
            if (quirkSettings.a(ConfigureSurfaceToSecondarySessionFailQuirk.class, num4 != null && num4.intValue() == 2)) {
                arrayList.add(new ConfigureSurfaceToSecondarySessionFailQuirk());
            }
            Integer num5 = (Integer) cameraCharacteristicsCompat.a(key2);
            if (quirkSettings.a(PreviewOrientationIncorrectQuirk.class, num5 != null && num5.intValue() == 2)) {
                arrayList.add(new PreviewOrientationIncorrectQuirk());
            }
            Integer num6 = (Integer) cameraCharacteristicsCompat.a(key2);
            if (quirkSettings.a(CaptureSessionStuckQuirk.class, num6 != null && num6.intValue() == 2)) {
                arrayList.add(new CaptureSessionStuckQuirk());
            }
            List list = ImageCaptureFlashNotFireQuirk.f1742b;
            String str5 = Build.MODEL;
            Locale locale2 = Locale.US;
            if (quirkSettings.a(ImageCaptureFlashNotFireQuirk.class, (list.contains(str5.toLowerCase(locale2)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0) || ImageCaptureFlashNotFireQuirk.f1741a.contains(str5.toLowerCase(locale2)))) {
                arrayList.add(new ImageCaptureFlashNotFireQuirk());
            }
            if (quirkSettings.a(ImageCaptureWithFlashUnderexposureQuirk.class, ImageCaptureWithFlashUnderexposureQuirk.f1745a.contains(str5.toLowerCase(locale2)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 1)) {
                arrayList.add(new ImageCaptureWithFlashUnderexposureQuirk());
            }
            if (quirkSettings.a(ImageCaptureFailWithAutoFlashQuirk.class, ImageCaptureFailWithAutoFlashQuirk.f1739a.contains(str5.toLowerCase(locale2)) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0)) {
                arrayList.add(new ImageCaptureFailWithAutoFlashQuirk());
            }
            Integer num7 = (Integer) cameraCharacteristicsCompat.a(key2);
            if (quirkSettings.a(IncorrectCaptureStateQuirk.class, num7 != null && num7.intValue() == 2)) {
                arrayList.add(new IncorrectCaptureStateQuirk());
            }
            Iterator it2 = TorchFlashRequiredFor3aUpdateQuirk.f1756b.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (Build.MODEL.toUpperCase(Locale.US).equals((String) it2.next())) {
                        if (((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
                            z2 = true;
                            break;
                        }
                    }
                }
                z2 = false;
                break;
            }
            if (quirkSettings.a(TorchFlashRequiredFor3aUpdateQuirk.class, z2)) {
                arrayList.add(new TorchFlashRequiredFor3aUpdateQuirk(cameraCharacteristicsCompat));
            }
            String str6 = Build.MANUFACTURER;
            if (quirkSettings.a(PreviewStretchWhenVideoCaptureIsBoundQuirk.class, ("HUAWEI".equalsIgnoreCase(str6) && "HUAWEI ALE-L04".equalsIgnoreCase(Build.MODEL)) || ("Samsung".equalsIgnoreCase(str6) && "sm-j320f".equalsIgnoreCase(Build.MODEL)) || (("Samsung".equalsIgnoreCase(str6) && "sm-j700f".equalsIgnoreCase(Build.MODEL)) || (("Samsung".equalsIgnoreCase(str6) && "sm-j111f".equalsIgnoreCase(Build.MODEL)) || ((n.a.f38812e.equalsIgnoreCase(str6) && "A37F".equalsIgnoreCase(Build.MODEL)) || ("Samsung".equalsIgnoreCase(str6) && "sm-j510fn".equalsIgnoreCase(Build.MODEL))))))) {
                arrayList.add(new PreviewStretchWhenVideoCaptureIsBoundQuirk());
            }
            if (quirkSettings.a(PreviewDelayWhenVideoCaptureIsBoundQuirk.class, "Huawei".equalsIgnoreCase(str6))) {
                arrayList.add(new PreviewDelayWhenVideoCaptureIsBoundQuirk());
            }
            if (ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.f() || ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.g() || ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.j() || ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.h()) {
                z3 = true;
            } else {
                String str7 = Build.MODEL;
                if (("pixel 4 xl".equalsIgnoreCase(str7) && Build.VERSION.SDK_INT == 29) || (("motorola".equalsIgnoreCase(Build.BRAND) && "moto e13".equalsIgnoreCase(str7)) || ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.i() || Device.a())) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            if (quirkSettings.a(ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.class, z3)) {
                arrayList.add(new ImageCaptureFailedWhenVideoCaptureIsBoundQuirk());
            }
            String str8 = Build.MODEL;
            if (quirkSettings.a(TemporalNoiseQuirk.class, "Pixel 8".equalsIgnoreCase(str8) && ((Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.LENS_FACING)).intValue() == 0)) {
                arrayList.add(new TemporalNoiseQuirk());
            }
            if (quirkSettings.a(ImageCaptureFailedForVideoSnapshotQuirk.class, ImageCaptureFailedForVideoSnapshotQuirk.f())) {
                arrayList.add(new ImageCaptureFailedForVideoSnapshotQuirk());
            }
            String str9 = Build.BRAND;
            if (quirkSettings.a(CaptureSessionStuckWhenCreatingBeforeClosingCameraQuirk.class, "motorola".equalsIgnoreCase(str9) && "moto e20".equalsIgnoreCase(str8) && cameraCharacteristicsCompat.f1701c.equals("1"))) {
                arrayList.add(new CaptureSessionStuckWhenCreatingBeforeClosingCameraQuirk());
            }
            if (quirkSettings.a(AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.class, "samsung".equalsIgnoreCase(str9) && Build.DEVICE.equalsIgnoreCase("m55xq"))) {
                arrayList.add(new AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk());
            }
            Quirks quirks = new Quirks(arrayList);
            Quirks.d(quirks);
            Logger.c(3, "CameraQuirks");
            return quirks;
        } catch (InterruptedException | ExecutionException e2) {
            throw new AssertionError("Unexpected error in QuirkSettings StateObservable", e2);
        }
    }
}

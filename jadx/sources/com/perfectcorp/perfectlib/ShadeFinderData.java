package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.perfectlib.makeupcam.camera.ColorLab32f;
import com.perfectcorp.perfectlib.makeupcam.camera.ShadeFinderReport;
import com.perfectcorp.perfectlib.ymk.kernelctrl.TestConfigHelper;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShadeFinderReport f39845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShadeFinderQualityCheck f39846b;

    public ShadeFinderData(ShadeFinderReport shadeFinderReport, ShadeFinderQualityCheck shadeFinderQualityCheck) {
        this.f39845a = shadeFinderReport;
        this.f39846b = shadeFinderQualityCheck;
    }

    public final FitzpatrickScale getFitzpatrickScale() {
        ShadeFinderReport shadeFinderReport = this.f39845a;
        switch (shadeFinderReport.fitzpatrick_scale) {
            case 0:
                return FitzpatrickScale.UNKNOWN;
            case 1:
                return FitzpatrickScale.TYPE1;
            case 2:
                return FitzpatrickScale.TYPE2;
            case 3:
                return FitzpatrickScale.TYPE3;
            case 4:
                return FitzpatrickScale.TYPE4;
            case 5:
                return FitzpatrickScale.TYPE5;
            case 6:
                return FitzpatrickScale.TYPE6;
            default:
                r81.c(shadeFinderReport.fitzpatrick_scale, "Unknown fitzpatrick scale: ");
                return null;
        }
    }

    public final LabColorSpace getLabSkinTone() {
        String str;
        TestConfigHelper testConfigHelperC = TestConfigHelper.c();
        testConfigHelperC.getClass();
        Pair pair = TestConfigHelper.f41980e;
        String str2 = (String) pair.first;
        String str3 = (String) pair.second;
        if (testConfigHelperC.b() && (str = (String) testConfigHelperC.f41976b.get(str2)) != null) {
            str3 = str;
        }
        ColorLab32f colorLab32f = null;
        if (!TextUtils.isEmpty(str3)) {
            com.perfectcorp.thirdparty.com.google.common.base.m mVarA = com.perfectcorp.thirdparty.com.google.common.base.m.a(com.perfectcorp.thirdparty.com.google.common.base.d.a());
            com.perfectcorp.thirdparty.com.google.common.base.d dVarB = com.perfectcorp.thirdparty.com.google.common.base.d.b();
            dVarB.getClass();
            String[] strArr = (String[]) new com.perfectcorp.thirdparty.com.google.common.base.m(mVarA.f42101b, dVarB).b(str3).toArray(new String[0]);
            if (strArr.length == 3) {
                try {
                    colorLab32f = new ColorLab32f(Float.parseFloat(strArr[0]), Float.parseFloat(strArr[1]), Float.parseFloat(strArr[2]));
                } catch (Throwable unused) {
                }
            }
        }
        if (colorLab32f != null) {
            return new LabColorSpace(colorLab32f.l, colorLab32f.f40593a, colorLab32f.f40594b);
        }
        ShadeFinderReport shadeFinderReport = this.f39845a;
        return new LabColorSpace(shadeFinderReport.adaptive_skin_tone_lab_l, shadeFinderReport.adaptive_skin_tone_lab_a, shadeFinderReport.adaptive_skin_tone_lab_b);
    }

    public final LabColorSpace getRM200QCSkinTone() {
        ShadeFinderReport shadeFinderReport = this.f39845a;
        return new LabColorSpace(shadeFinderReport.rm200qc_skin_tone_lab_l, shadeFinderReport.rm200qc_skin_tone_lab_a, shadeFinderReport.rm200qc_skin_tone_lab_b);
    }

    public final RgbColorSpace getRgbSkinTone() {
        ShadeFinderReport shadeFinderReport = this.f39845a;
        return new RgbColorSpace(shadeFinderReport.skin_color_rgb_r, shadeFinderReport.skin_color_rgb_g, shadeFinderReport.skin_color_rgb_b);
    }

    public final boolean isValid() {
        return this.f39846b.isValid() && this.f39845a.report_id >= 6;
    }
}

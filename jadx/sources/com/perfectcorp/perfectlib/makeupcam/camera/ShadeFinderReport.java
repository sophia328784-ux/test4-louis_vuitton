package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderReport {
    public float adaptive_skin_tone_lab_a;
    public float adaptive_skin_tone_lab_b;
    public float adaptive_skin_tone_lab_l;
    public int fitzpatrick_scale;
    public int report_id;
    public double report_time;
    public float rm200qc_skin_tone_lab_a;
    public float rm200qc_skin_tone_lab_b;
    public float rm200qc_skin_tone_lab_l;
    public int skin_color_rgb_b;
    public int skin_color_rgb_g;
    public int skin_color_rgb_r;

    public ShadeFinderReport(ShadeFinderReport shadeFinderReport) {
        this.report_id = shadeFinderReport.report_id;
        this.report_time = shadeFinderReport.report_time;
        this.skin_color_rgb_r = shadeFinderReport.skin_color_rgb_r;
        this.skin_color_rgb_g = shadeFinderReport.skin_color_rgb_g;
        this.skin_color_rgb_b = shadeFinderReport.skin_color_rgb_b;
        this.adaptive_skin_tone_lab_l = shadeFinderReport.adaptive_skin_tone_lab_l;
        this.adaptive_skin_tone_lab_a = shadeFinderReport.adaptive_skin_tone_lab_a;
        this.adaptive_skin_tone_lab_b = shadeFinderReport.adaptive_skin_tone_lab_b;
        this.rm200qc_skin_tone_lab_l = shadeFinderReport.rm200qc_skin_tone_lab_l;
        this.rm200qc_skin_tone_lab_a = shadeFinderReport.rm200qc_skin_tone_lab_a;
        this.rm200qc_skin_tone_lab_b = shadeFinderReport.rm200qc_skin_tone_lab_b;
        this.fitzpatrick_scale = shadeFinderReport.fitzpatrick_scale;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ShadeFinderReport");
        toStringHelper.b("report_id", String.valueOf(this.report_id));
        toStringHelper.b("report_time", String.valueOf(this.report_time));
        toStringHelper.b("skin_color_rgb", "(" + this.skin_color_rgb_r + ", " + this.skin_color_rgb_g + ", " + this.skin_color_rgb_b + ")");
        toStringHelper.b("adaptive_skin_tone_lab", "(" + this.adaptive_skin_tone_lab_l + ", " + this.adaptive_skin_tone_lab_a + ", " + this.adaptive_skin_tone_lab_b + ")");
        toStringHelper.b("rm200qc_skin_tone_lab", "(" + this.rm200qc_skin_tone_lab_l + ", " + this.rm200qc_skin_tone_lab_a + ", " + this.rm200qc_skin_tone_lab_b + ")");
        toStringHelper.b("fitzpatrick_scale", String.valueOf(this.fitzpatrick_scale));
        return toStringHelper.toString();
    }

    public ShadeFinderReport() {
    }
}

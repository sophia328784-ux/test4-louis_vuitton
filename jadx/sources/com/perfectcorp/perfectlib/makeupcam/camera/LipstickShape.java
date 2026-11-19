package com.perfectcorp.perfectlib.makeupcam.camera;

import com.linkplay.medialib.ContentTree;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class LipstickShape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40708c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f40709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f40710f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f40711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f40712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f40713j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f40714k;

    public LipstickShape(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f40706a = str;
        this.f40707b = str2;
        this.f40708c = str3;
        this.d = str4;
        this.f40709e = str5;
        this.f40710f = i2;
        this.g = i3;
        this.f40711h = i4;
        this.f40712i = i5;
        this.f40713j = i6;
        this.f40714k = i7;
    }

    public static int a(String str, JSONObject jSONObject) {
        try {
            return Integer.parseInt(jSONObject.optString(str, ContentTree.ROOT_ID).trim());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static LipstickShape b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new LipstickShape(jSONObject.optString("attr_mask", ""), jSONObject.optString("attr_shadow", ""), jSONObject.optString("attr_highlight", ""), jSONObject.optString("attr_lip_shape_ombre", ""), jSONObject.optString("attr_lip_shape_roi_start", ""), a("attr_height_intensity", jSONObject), a("attr_height_upper_intensity", jSONObject), a("attr_height_lower_intensity", jSONObject), a("attr_size_intensity", jSONObject), a("attr_width_intensity", jSONObject), a("attr_mshaped_intensity", jSONObject));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}

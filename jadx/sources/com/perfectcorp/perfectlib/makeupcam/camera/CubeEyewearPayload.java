package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.perfectcorp.common.utility.MoreCollections;
import defpackage.md;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class CubeEyewearPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f40601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo f40602b;

    public CubeEyewearPayload(Map<String, Bitmap> map, CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo) {
        this.f40601a = map;
        this.f40602b = liveCubeEyewearInfo;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        String str;
        Set set = MoreCollections.f39434a;
        Map map = this.f40601a;
        if (map == null || map.isEmpty()) {
            str = "textureList is empty";
        } else if (this.f40602b != null) {
            return;
        } else {
            str = "eyewearInfo is null";
        }
        md.n(str);
    }
}

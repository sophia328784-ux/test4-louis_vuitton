package com.perfectcorp.perfectlib.makeupcam.camera;

import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public final class Real3DEyewearPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CLMakeupLive3DFilter.Object3DEyewearSetting f40754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CLMakeupLive3DFilter.Object3DEyewearGlassInfo f40755b;

    public Real3DEyewearPayload(CLMakeupLive3DFilter.Object3DEyewearSetting object3DEyewearSetting, CLMakeupLive3DFilter.Object3DEyewearGlassInfo object3DEyewearGlassInfo) {
        this.f40754a = object3DEyewearSetting;
        this.f40755b = object3DEyewearGlassInfo;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        String str;
        if (this.f40754a == null) {
            str = "eyewearSetting is null";
        } else if (this.f40755b != null) {
            return;
        } else {
            str = "eyewearGlassInfo is null";
        }
        md.n(str);
    }
}

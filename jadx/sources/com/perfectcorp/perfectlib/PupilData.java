package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.EstimatedPDInfo;

/* JADX INFO: loaded from: classes3.dex */
public final class PupilData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EstimatedPDInfo f39808a;

    public PupilData(EstimatedPDInfo estimatedPDInfo) {
        this.f39808a = estimatedPDInfo;
    }

    public final float getPupilDistance() {
        return this.f39808a.pd;
    }

    public final boolean isValid() {
        return this.f39808a.is_success;
    }
}

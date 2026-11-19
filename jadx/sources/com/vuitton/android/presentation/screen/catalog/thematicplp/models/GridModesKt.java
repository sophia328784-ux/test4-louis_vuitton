package com.vuitton.android.presentation.screen.catalog.thematicplp.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GridModesKt {
    public static final float a(GridModes gridModes, GridModes gridModes2) {
        gridModes.getClass();
        gridModes2.getClass();
        if (Intrinsics.c(gridModes, gridModes2)) {
            return 1.0f;
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}

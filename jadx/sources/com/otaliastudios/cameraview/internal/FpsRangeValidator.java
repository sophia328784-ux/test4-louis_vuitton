package com.otaliastudios.cameraview.internal;

import android.util.Range;
import com.otaliastudios.cameraview.CameraLogger;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class FpsRangeValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraLogger f38999a = CameraLogger.a("FpsRangeValidator");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f39000b;

    static {
        HashMap map = new HashMap();
        f39000b = map;
        map.put("Google Pixel 4", Arrays.asList(new Range(15, 60)));
        map.put("Google Pixel 4a", Arrays.asList(new Range(15, 60)));
    }
}

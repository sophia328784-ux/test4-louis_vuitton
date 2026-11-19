package com.otaliastudios.cameraview.internal;

import android.media.CamcorderProfile;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.size.Size;
import com.sightcall.uvc.Camera;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes3.dex */
public class CamcorderProfiles {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraLogger f38996a = CameraLogger.a("CamcorderProfiles");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f38997b;

    static {
        HashMap map = new HashMap();
        f38997b = map;
        map.put(new Size(176, 144), 2);
        map.put(new Size(DilithiumEngine.DilithiumPolyT1PackedBytes, 240), 7);
        map.put(new Size(352, 288), 3);
        map.put(new Size(Sink.Video.MAX_DIMENSION_LOW, Camera.DEFAULT_PREVIEW_HEIGHT), 4);
        map.put(new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW), 5);
        map.put(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW), 6);
        map.put(new Size(3840, 2160), 8);
    }

    public static CamcorderProfile a(int i2, Size size) {
        final long j2 = ((long) size.f39086b) * ((long) size.f39087c);
        HashMap map = f38997b;
        ArrayList arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList, new Comparator<Size>() { // from class: com.otaliastudios.cameraview.internal.CamcorderProfiles.1
            @Override // java.util.Comparator
            public final int compare(Size size2, Size size3) {
                Size size4 = size2;
                Size size5 = size3;
                long j3 = size4.f39086b * size4.f39087c;
                long j4 = j2;
                long jAbs = Math.abs(j3 - j4);
                long jAbs2 = Math.abs(((long) (size5.f39086b * size5.f39087c)) - j4);
                if (jAbs < jAbs2) {
                    return -1;
                }
                return jAbs == jAbs2 ? 0 : 1;
            }
        });
        while (arrayList.size() > 0) {
            int iIntValue = ((Integer) map.get((Size) arrayList.remove(0))).intValue();
            if (CamcorderProfile.hasProfile(i2, iIntValue)) {
                return CamcorderProfile.get(i2, iIntValue);
            }
        }
        return CamcorderProfile.get(i2, 0);
    }
}

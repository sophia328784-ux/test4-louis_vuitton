package com.otaliastudios.cameraview.engine.mappers;

import com.otaliastudios.cameraview.controls.Control;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Camera1Mapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Camera1Mapper f38910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f38911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f38912c;
    public static final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f38913e;

    static {
        HashMap map = new HashMap();
        f38911b = map;
        HashMap map2 = new HashMap();
        f38912c = map2;
        HashMap map3 = new HashMap();
        d = map3;
        HashMap map4 = new HashMap();
        f38913e = map4;
        map.put(Flash.OFF, "off");
        map.put(Flash.ON, "on");
        map.put(Flash.AUTO, "auto");
        map.put(Flash.TORCH, "torch");
        map3.put(Facing.BACK, 0);
        map3.put(Facing.FRONT, 1);
        map2.put(WhiteBalance.AUTO, "auto");
        map2.put(WhiteBalance.INCANDESCENT, "incandescent");
        map2.put(WhiteBalance.FLUORESCENT, "fluorescent");
        map2.put(WhiteBalance.DAYLIGHT, "daylight");
        map2.put(WhiteBalance.CLOUDY, "cloudy-daylight");
        map4.put(Hdr.OFF, "auto");
        map4.put(Hdr.ON, "hdr");
    }

    public static Control a(Map map, Object obj) {
        for (Control control : map.keySet()) {
            if (obj.equals(map.get(control))) {
                return control;
            }
        }
        return null;
    }
}

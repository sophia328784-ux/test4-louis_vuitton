package com.otaliastudios.cameraview.engine.mappers;

import android.util.Pair;
import com.otaliastudios.cameraview.controls.Control;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Camera2Mapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Camera2Mapper f38914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f38915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f38916c;
    public static final HashMap d;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.mappers.Camera2Mapper$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38917a;

        static {
            int[] iArr = new int[Flash.values().length];
            f38917a = iArr;
            try {
                iArr[Flash.ON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38917a[Flash.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38917a[Flash.OFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38917a[Flash.TORCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        HashMap map = new HashMap();
        f38915b = map;
        HashMap map2 = new HashMap();
        f38916c = map2;
        HashMap map3 = new HashMap();
        d = map3;
        map.put(Facing.BACK, 1);
        map.put(Facing.FRONT, 0);
        map2.put(WhiteBalance.AUTO, 1);
        map2.put(WhiteBalance.CLOUDY, 6);
        map2.put(WhiteBalance.DAYLIGHT, 5);
        map2.put(WhiteBalance.FLUORESCENT, 3);
        map2.put(WhiteBalance.INCANDESCENT, 2);
        map3.put(Hdr.OFF, 0);
        map3.put(Hdr.ON, 18);
    }

    public static ArrayList a(Flash flash) {
        ArrayList arrayList = new ArrayList();
        int i2 = AnonymousClass1.f38917a[flash.ordinal()];
        if (i2 == 1) {
            arrayList.add(new Pair(3, 0));
            return arrayList;
        }
        if (i2 == 2) {
            arrayList.add(new Pair(2, 0));
            arrayList.add(new Pair(4, 0));
            return arrayList;
        }
        if (i2 == 3) {
            arrayList.add(new Pair(1, 0));
            arrayList.add(new Pair(0, 0));
            return arrayList;
        }
        if (i2 != 4) {
            return arrayList;
        }
        arrayList.add(new Pair(1, 2));
        arrayList.add(new Pair(0, 2));
        return arrayList;
    }

    public static Control b(Map map, Integer num) {
        for (Control control : map.keySet()) {
            if (num.equals(map.get(control))) {
                return control;
            }
        }
        return null;
    }
}

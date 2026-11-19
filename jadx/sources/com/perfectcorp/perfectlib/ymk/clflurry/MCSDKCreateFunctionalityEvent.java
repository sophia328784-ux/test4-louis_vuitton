package com.perfectcorp.perfectlib.ymk.clflurry;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class MCSDKCreateFunctionalityEvent extends BaseEvent {

    public enum Functionality {
        MAKEUP("makeup"),
        NAILS("nails"),
        SKINCARE("skincare"),
        SKINCAREHD("skincareHD"),
        SHADE_FINDER("shade_finder"),
        FACE_ATTRIBUTE("face_attribute"),
        RING("ring"),
        BRACELET("bracelet"),
        WATCH("watch"),
        JEWELRY("jewelry"),
        NECKLACE("necklace");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41951a;

        Functionality(String str) {
            this.f41951a = str;
        }

        public final String a() {
            return this.f41951a;
        }
    }

    public MCSDKCreateFunctionalityEvent(Functionality functionality) {
        super("MCSDK_Create_Functionality", "4");
        HashMap mapA = a();
        mapA.put("functionality", functionality.a());
        c(mapA);
    }
}

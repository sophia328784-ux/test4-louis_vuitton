package com.perfectcorp.perfectlib.ymk.clflurry;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class MCSDKGetRecommendationEvent extends BaseEvent {

    public enum Type {
        SKINCARE("skincare"),
        SHADE_FINDER("shade_finder");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41962a;

        Type(String str) {
            this.f41962a = str;
        }
    }

    public MCSDKGetRecommendationEvent(Type type) {
        super("MCSDK_Get_Recommendation", "1");
        HashMap mapA = a();
        mapA.put("type", type.f41962a);
        c(mapA);
    }
}

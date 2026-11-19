package com.perfectcorp.perfectlib.ymk.clflurry;

import com.linkplay.medialib.ContentTree;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class MCSDKRecommendProductEvent extends BaseEvent {

    public enum Type {
        SKINCARE("skincare"),
        SHADE_FINDER("shade_finder");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41964a;

        Type(String str) {
            this.f41964a = str;
        }
    }

    public MCSDKRecommendProductEvent(List<String> list, Type type) {
        super("MCSDK_recommend_product", ContentTree.AUDIO_ID);
        HashMap mapA = a();
        mapA.put("type", type.f41964a);
        mapA.put("operation", "product_recommend");
        mapA.put("product_id", String.join("^", list));
        c(mapA);
    }
}

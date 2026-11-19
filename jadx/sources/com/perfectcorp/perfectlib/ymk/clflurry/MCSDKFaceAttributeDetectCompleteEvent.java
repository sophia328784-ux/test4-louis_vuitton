package com.perfectcorp.perfectlib.ymk.clflurry;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class MCSDKFaceAttributeDetectCompleteEvent extends BaseEvent {
    public MCSDKFaceAttributeDetectCompleteEvent(Set<String> set) {
        super("MCSDK_FaceAttribute_Detect_Complete", "1");
        HashMap mapA = a();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            mapA.put(it.next(), "yes");
        }
        c(mapA);
    }
}

package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public enum RecommendationType {
    SKIN_CARE { // from class: com.perfectcorp.perfectlib.RecommendationType.1
        @Override // com.perfectcorp.perfectlib.RecommendationType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.SKIN_CARE);
        }
    },
    SHADE_FINDER { // from class: com.perfectcorp.perfectlib.RecommendationType.2
        @Override // com.perfectcorp.perfectlib.RecommendationType
        public final boolean a() {
            return !PerfectLib.d.contains(Functionality.SHADE_FINDER);
        }
    };

    public abstract boolean a();
}

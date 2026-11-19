package com.perfectcorp.perfectlib.ph.clflurry;

import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends c {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41140a = new a("LIVE_CAM", 0, "livecam");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f41141b = new a("PHOTO_EDITING", 1, "photo_editing");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f41142c;

        public a(String str, int i2, String str2) {
            super(str, i2);
            this.f41142c = str2;
        }

        public final void a(Map map) {
            map.put("page", this.f41142c);
        }
    }

    public b(YMKFeatures$EventFeature yMKFeatures$EventFeature, a aVar) {
        super("MCSDK_Tryout");
        this.d = yMKFeatures$EventFeature;
        if (this.f41949c == null) {
            this.f41949c = new HashMap();
        }
        this.f41949c.put("ver", "12");
        aVar.a(this.f41949c);
    }
}

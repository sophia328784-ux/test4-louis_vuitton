package com.sightcall.universal.ar;

import com.batch.android.s.b;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class ArSaved {

    @Json(name = b.a.f24015b)
    private final String id;

    @Json(name = "success")
    private final boolean saved;

    private ArSaved(boolean z, String str) {
        this.saved = z;
        this.id = str;
    }

    public static ArSaved failure() {
        return new ArSaved(false, null);
    }

    public static ArSaved success(String str) {
        return new ArSaved(true, str);
    }
}

package com.sightcall.universal.ar;

import com.sightcall.universal.api.FallbackEnum;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class ArStart {

    @Json(name = "unit")
    private final Unit unit;

    @FallbackEnum(name = "METRIC")
    public enum Unit {
        METRIC,
        IMPERIAL
    }

    private ArStart(Unit unit) {
        this.unit = unit;
    }

    public Unit unit() {
        Unit unit = this.unit;
        return unit != null ? unit : Unit.METRIC;
    }
}

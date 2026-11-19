package com.sightcall.universal.ar;

import com.sightcall.universal.model.Moshi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class ArPopup {

    @Json(name = "type")
    private final Type type;
    public static final ArPopup INSTALL = new ArPopup(Type.INSTALL);
    public static final ArPopup UPDATE = new ArPopup(Type.UPDATE);
    public static final ArPopup SUCCESS = new ArPopup(Type.SUCCESS);
    public static final ArPopup CANCEL = new ArPopup(Type.CANCEL);

    public enum Type {
        INSTALL,
        UPDATE,
        SUCCESS,
        CANCEL
    }

    private ArPopup(Type type) {
        this.type = type;
    }

    public String toJson() {
        return Moshi.toJson(ArPopup.class, this);
    }
}

package org.teleal.cling.support.renderingcontrol;

/* JADX INFO: loaded from: classes5.dex */
public enum RenderingControlErrorCode {
    INVALID_PRESET_NAME(701, "The specified name is not a valid preset name"),
    INVALID_INSTANCE_ID(702, "The specified instanceID is invalid for this RenderingControl");

    private int code;
    private String description;

    RenderingControlErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public final int a() {
        return this.code;
    }

    public final String b() {
        return this.description;
    }
}

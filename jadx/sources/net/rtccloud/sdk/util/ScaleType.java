package net.rtccloud.sdk.util;

/* JADX INFO: loaded from: classes4.dex */
public enum ScaleType {
    FIT,
    CROP,
    FILL;

    public ScaleType next() {
        ScaleType[] scaleTypeArrValues = values();
        return scaleTypeArrValues[(ordinal() + 1) % scaleTypeArrValues.length];
    }

    public ScaleType previous() {
        ScaleType[] scaleTypeArrValues = values();
        return scaleTypeArrValues[((ordinal() + scaleTypeArrValues.length) - 1) % scaleTypeArrValues.length];
    }
}

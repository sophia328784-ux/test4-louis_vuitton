package com.lightup.sdk.device.features.commands;

/* JADX INFO: loaded from: classes4.dex */
public enum ColorPickerMode {
    BRIGHTNESS((byte) 1),
    IMPACT((byte) 2),
    NONE((byte) -1),
    ALWAYS_ON((byte) 0);

    private byte byteID;

    ColorPickerMode(byte b2) {
        this.byteID = b2;
    }

    public byte getByteID() {
        return this.byteID;
    }

    @Override // java.lang.Enum
    public String toString() {
        return ((int) this.byteID) + " " + super.toString();
    }
}

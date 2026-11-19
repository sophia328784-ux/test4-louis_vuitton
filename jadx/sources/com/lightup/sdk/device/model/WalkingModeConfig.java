package com.lightup.sdk.device.model;

import com.google.gson.Gson;
import com.lightup.sdk.device.utils.communication.ByteUtils;

/* JADX INFO: loaded from: classes2.dex */
public class WalkingModeConfig {
    private int brightnessMoving;
    private int brightnessStanding;
    private int duration;
    private int threshold;
    private boolean[] zones;

    public WalkingModeConfig(String str) {
        WalkingModeConfig walkingModeConfig = (WalkingModeConfig) new Gson().fromJson(str, WalkingModeConfig.class);
        this.duration = walkingModeConfig.duration;
        this.threshold = walkingModeConfig.threshold;
        this.brightnessMoving = walkingModeConfig.brightnessMoving;
        this.brightnessStanding = walkingModeConfig.brightnessStanding;
        this.zones = walkingModeConfig.zones;
    }

    public int getBrightnessMoving() {
        return this.brightnessMoving;
    }

    public int getBrightnessStanding() {
        return this.brightnessStanding;
    }

    public int getDuration() {
        return this.duration;
    }

    public byte[] getMessageData() {
        byte[] bArr = new byte[7];
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.zones;
            if (i2 >= zArr.length) {
                ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(15);
                byteBuilder.c(this.duration, 4);
                byteBuilder.c(this.threshold, 2);
                byteBuilder.b(bArr);
                byteBuilder.c(this.brightnessMoving, 1);
                byteBuilder.c(this.brightnessStanding, 1);
                return byteBuilder.f36034a;
            }
            bArr[i2] = zArr[i2] ? (byte) 1 : (byte) 0;
            i2++;
        }
    }

    public int getThreshold() {
        return this.threshold;
    }

    public boolean[] getZones() {
        return this.zones;
    }

    public String toString() {
        return new Gson().toJson(this);
    }

    public WalkingModeConfig(int i2, int i3, boolean[] zArr, int i4, int i5) {
        this.duration = i2;
        this.threshold = i3;
        this.brightnessMoving = i4;
        this.brightnessStanding = i5;
        this.zones = zArr;
        for (int length = zArr.length; length < 7; length++) {
            this.zones[length] = false;
        }
    }
}

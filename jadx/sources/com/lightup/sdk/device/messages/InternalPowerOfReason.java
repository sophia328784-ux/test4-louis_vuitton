package com.lightup.sdk.device.messages;

import com.lightup.sdk.device.enums.PowerOffReason;

/* JADX INFO: loaded from: classes2.dex */
public enum InternalPowerOfReason {
    BATTERY_LOW(0),
    BUTTON_ACTION(1),
    CRITICAL_HEAT(2),
    LOCK(3),
    UPDATING(4),
    SMARTPHONE(5);

    private static final boolean DEBUG = false;
    private static final String TAG = "PowerOffReason";
    public byte value;

    /* JADX INFO: renamed from: com.lightup.sdk.device.messages.InternalPowerOfReason$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f36024a;

        static {
            int[] iArr = new int[InternalPowerOfReason.values().length];
            f36024a = iArr;
            try {
                iArr[InternalPowerOfReason.BATTERY_LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36024a[InternalPowerOfReason.BUTTON_ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36024a[InternalPowerOfReason.CRITICAL_HEAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36024a[InternalPowerOfReason.SMARTPHONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    InternalPowerOfReason(int i2) {
        this.value = (byte) i2;
    }

    public final PowerOffReason a() {
        int i2 = AnonymousClass1.f36024a[ordinal()];
        if (i2 == 1) {
            return PowerOffReason.BATTERY_LOW;
        }
        if (i2 == 2) {
            return PowerOffReason.BUTTON_ACTION;
        }
        if (i2 != 3) {
            return i2 != 4 ? PowerOffReason.UNKNOWN : PowerOffReason.SMARTPHONE;
        }
        return PowerOffReason.CRITICAL_HEAT;
    }
}

package com.lightup.sdk.device.enums;

import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateError;
import defpackage.az;

/* JADX INFO: loaded from: classes2.dex */
public enum UpdateError {
    NO_UPDATE_REQUIRED,
    TIMEOUT,
    UNEXPECTED_ERROR,
    TRANSFER_ERROR,
    INTERRUPTED;

    /* JADX INFO: renamed from: com.lightup.sdk.device.enums.UpdateError$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError;

        static {
            int[] iArr = new int[FirmwareUpdateError.values().length];
            $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError = iArr;
            try {
                iArr[FirmwareUpdateError.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError[FirmwareUpdateError.INTERRUPTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError[FirmwareUpdateError.NO_UPDATE_REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError[FirmwareUpdateError.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError[FirmwareUpdateError.TRANSFER_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static UpdateError fromFirmwareUpdateError(FirmwareUpdateError firmwareUpdateError) {
        int i2 = AnonymousClass1.$SwitchMap$com$lightup$sdk$device$features$process$dataupload$FirmwareUpdateError[firmwareUpdateError.ordinal()];
        if (i2 == 1) {
            az.m(firmwareUpdateError, "No match for ");
            return null;
        }
        if (i2 == 2) {
            return INTERRUPTED;
        }
        if (i2 == 3) {
            return NO_UPDATE_REQUIRED;
        }
        if (i2 != 4) {
            return i2 != 5 ? UNEXPECTED_ERROR : TRANSFER_ERROR;
        }
        return TIMEOUT;
    }
}

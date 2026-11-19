package com.lightup.sdk.device.utils.firmware;

import android.content.Context;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.features.process.programupdate.ProgramUpdate;
import com.lightup.sdk.device.model.device.BLEDeviceFirmwareChecksums;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import defpackage.az;
import defpackage.fc;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DualFirmwareManager extends FirmwareManager {
    public DualFirmwareManager(Context context, String str) {
        super(context, str);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:? A[SYNTHETIC] */
    @Override // com.lightup.sdk.device.utils.firmware.FirmwareManager
    public final BLEDeviceFirmwareBundle b(JSONObject jSONObject) throws JSONException, IOException {
        String string = jSONObject.getString("firmware_1");
        int i2 = jSONObject.getInt("firmware_addr_1");
        String string2 = jSONObject.getString("firmware_2");
        int i3 = jSONObject.getInt("firmware_addr_2");
        String string3 = jSONObject.getString("recovery");
        Context context = this.f36048a;
        InputStream inputStreamOpen = context.getAssets().open(string);
        try {
            InputStream inputStreamOpen2 = context.getAssets().open(string2);
            try {
                InputStream inputStreamOpen3 = context.getAssets().open(string3);
                try {
                    byte[] bArrF = ByteUtils.f(inputStreamOpen);
                    byte[] bArrF2 = ByteUtils.f(inputStreamOpen2);
                    byte[] bArrF3 = ByteUtils.f(inputStreamOpen3);
                    inputStreamOpen3.close();
                    inputStreamOpen2.close();
                    inputStreamOpen.close();
                    return new BLEDeviceFirmwareBundle(jSONObject.getString("name"), bArrF, i2, bArrF2, i3, bArrF3);
                } catch (Throwable th) {
                    if (inputStreamOpen3 == null) {
                        throw th;
                    }
                    try {
                        inputStreamOpen3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                    if (inputStreamOpen != null) {
                        throw th;
                    }
                    try {
                        inputStreamOpen.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                if (inputStreamOpen2 == null) {
                    throw th4;
                }
                try {
                    inputStreamOpen2.close();
                    throw th4;
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            if (inputStreamOpen != null) {
                throw th6;
            }
            inputStreamOpen.close();
            throw th6;
        }
    }

    @Override // com.lightup.sdk.device.utils.firmware.FirmwareManager
    public final ProcessFeature e(BLEDevicesManager bLEDevicesManager, BLEDevice bLEDevice, FirmwareUpdateListener firmwareUpdateListener, int i2, int i3) {
        return new ProgramUpdate(bLEDevicesManager, bLEDevice, i2, firmwareUpdateListener);
    }

    @Override // com.lightup.sdk.device.utils.firmware.FirmwareManager
    public final String f(String str) {
        try {
            InputStream inputStreamOpen = this.f36048a.getAssets().open(fc.h("firmwares", str, ".json"));
            try {
                byte[] bArr = new byte[inputStreamOpen.available()];
                inputStreamOpen.read(bArr);
                String str2 = new String(bArr);
                inputStreamOpen.close();
                return str2;
            } catch (Throwable th) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            az.s("Could not read file", e2);
            return null;
        }
    }

    @Override // com.lightup.sdk.device.utils.firmware.FirmwareManager
    public final RequiredUpdateType g(DeviceId deviceId, BLEDeviceFirmwareChecksums bLEDeviceFirmwareChecksums) {
        BLEDeviceFirmwareBundle bLEDeviceFirmwareBundleC = c(deviceId);
        if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, new byte[]{-1, -1, -1, -1})) {
            return RequiredUpdateType.UPDATE_POSSIBLE;
        }
        if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, new byte[]{0, 0, 0, 0})) {
            return RequiredUpdateType.NONE;
        }
        if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundleC.d) || Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundleC.g)) {
            return RequiredUpdateType.NONE;
        }
        if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundleC.f36046j)) {
            return RequiredUpdateType.UPDATE_POSSIBLE;
        }
        for (BLEDeviceFirmwareBundle bLEDeviceFirmwareBundle : d(deviceId)) {
            if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundle.f36046j)) {
                return RequiredUpdateType.UPDATE_POSSIBLE;
            }
            if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundle.d) || Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundle.g)) {
                return RequiredUpdateType.UPDATE_POSSIBLE;
            }
        }
        return RequiredUpdateType.UPDATE_NOT_POSSIBLE;
    }
}

package com.lightup.sdk.device.utils.firmware;

import android.content.Context;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdate;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.model.device.BLEDeviceFirmwareChecksums;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import defpackage.az;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f36048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f36049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f36050c = new HashMap();
    public final HashMap d = new HashMap();

    public FirmwareManager(Context context, String str) {
        this.f36048a = context;
        try {
            this.f36049b = new JSONObject(f(str));
        } catch (JSONException unused) {
            md.k("Could not parse file");
            throw null;
        }
    }

    public final void a(byte b2) {
        JSONArray jSONArray;
        try {
            jSONArray = this.f36049b.getJSONArray(String.format("%02X", Byte.valueOf(b2)));
            if (jSONArray.length() == 0) {
                jSONArray = null;
            }
        } catch (JSONException unused) {
        }
        if (jSONArray == null) {
            return;
        }
        try {
            this.f36050c.put(Byte.valueOf(b2), b(jSONArray.getJSONObject(jSONArray.length() - 1)));
        } catch (IOException | JSONException unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:? A[SYNTHETIC] */
    public BLEDeviceFirmwareBundle b(JSONObject jSONObject) throws JSONException, IOException {
        String string = jSONObject.getString("firmware");
        int i2 = jSONObject.getInt("firmwareAddr");
        String string2 = jSONObject.getString("bootloader");
        int i3 = jSONObject.getInt("bootloaderAddr");
        String string3 = jSONObject.getString("bootloaderUpdater");
        int i4 = jSONObject.getInt("bootloaderUpdaterAddr");
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
                    return new BLEDeviceFirmwareBundle(jSONObject.getString("name"), bArrF, i2, bArrF2, i3, bArrF3, i4);
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

    public final BLEDeviceFirmwareBundle c(DeviceId deviceId) {
        byte hardwareVersion = deviceId.getHardwareVersion();
        Byte bValueOf = Byte.valueOf(hardwareVersion);
        HashMap map = this.f36050c;
        if (!map.containsKey(bValueOf)) {
            a(hardwareVersion);
        }
        BLEDeviceFirmwareBundle bLEDeviceFirmwareBundle = (BLEDeviceFirmwareBundle) map.get(Byte.valueOf(hardwareVersion));
        if (bLEDeviceFirmwareBundle != null) {
            return bLEDeviceFirmwareBundle;
        }
        throw new UnsupportedDeviceException("Could not find a matching firmware bundle: " + deviceId);
    }

    public final List d(DeviceId deviceId) throws UnsupportedDeviceException {
        JSONArray jSONArray;
        byte hardwareVersion = deviceId.getHardwareVersion();
        Byte bValueOf = Byte.valueOf(hardwareVersion);
        HashMap map = this.d;
        if (!map.containsKey(bValueOf)) {
            try {
                jSONArray = this.f36049b.getJSONArray(String.format("%02X", Byte.valueOf(hardwareVersion)));
                if (jSONArray.length() == 0) {
                    jSONArray = null;
                }
            } catch (JSONException unused) {
            }
            if (jSONArray != null) {
                try {
                    LinkedList linkedList = new LinkedList();
                    for (int i2 = 0; i2 < jSONArray.length() - 1; i2++) {
                        linkedList.addFirst(b(jSONArray.getJSONObject(i2)));
                    }
                    map.put(Byte.valueOf(hardwareVersion), linkedList);
                } catch (IOException | JSONException unused2) {
                }
            }
        }
        List list = (List) map.get(Byte.valueOf(hardwareVersion));
        if (list != null) {
            return list;
        }
        throw new UnsupportedDeviceException("Could not find firmware bundles for: " + deviceId);
    }

    public ProcessFeature e(BLEDevicesManager bLEDevicesManager, BLEDevice bLEDevice, FirmwareUpdateListener firmwareUpdateListener, int i2, int i3) {
        return new FirmwareUpdate(bLEDevicesManager, bLEDevice, firmwareUpdateListener, i2, i3);
    }

    public String f(String str) {
        try {
            InputStream inputStreamOpen = this.f36048a.getAssets().open("packages.json");
            try {
                byte[] bArr = new byte[inputStreamOpen.available()];
                inputStreamOpen.read(bArr);
                String str2 = new String(bArr, StandardCharsets.UTF_8);
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

    public RequiredUpdateType g(DeviceId deviceId, BLEDeviceFirmwareChecksums bLEDeviceFirmwareChecksums) {
        BLEDeviceFirmwareBundle bLEDeviceFirmwareBundleC = c(deviceId);
        if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundleC.d) && Arrays.equals(bLEDeviceFirmwareChecksums.bootloaderChecksum, bLEDeviceFirmwareBundleC.f36046j)) {
            return RequiredUpdateType.NONE;
        }
        for (BLEDeviceFirmwareBundle bLEDeviceFirmwareBundle : d(deviceId)) {
            if (Arrays.equals(bLEDeviceFirmwareChecksums.firmwareChecksum, bLEDeviceFirmwareBundle.d) && Arrays.equals(bLEDeviceFirmwareChecksums.bootloaderChecksum, bLEDeviceFirmwareBundle.f36046j)) {
                return RequiredUpdateType.UPDATE_POSSIBLE;
            }
        }
        return RequiredUpdateType.UPDATE_NOT_POSSIBLE;
    }
}

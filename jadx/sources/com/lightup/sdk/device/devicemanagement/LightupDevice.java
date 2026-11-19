package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.ArrayList;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0019\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\u0006\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\fJ\u0006\u00102\u001a\u000203J\n\u00104\u001a\u00020\u0003H\u0096\u0080\u0004R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\fR\u0011\u0010\u0016\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0014R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R*\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u00170,j\b\u0012\u0004\u0012\u00020\u0017`-X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "", "name", "", "device", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "<init>", "(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V", "pair", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V", "deviceString", "(Ljava/lang/String;)V", "type", "Lcom/lightup/sdk/device/enums/LightupDeviceType;", "getType", "()Lcom/lightup/sdk/device/enums/LightupDeviceType;", "setType", "(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V", "getName", "()Ljava/lang/String;", "setName", "uniqueId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "getUniqueId", "()Lcom/lightup/sdk/device/model/device/DeviceId;", "debugIdentifier", "getDebugIdentifier", "bleDevice", "getBleDevice$library", "()Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "setBleDevice$library", "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V", "getPair$library", "()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "setPair$library", "(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V", "isInternal", "", "isInternal$library", "()Z", "setInternal$library", "(Z)V", "deviceIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getDeviceIds$library", "()Ljava/util/ArrayList;", "setDeviceIds$library", "(Ljava/util/ArrayList;)V", "getOrientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "toString", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class LightupDevice {
    private BLELightup bleDevice;
    private ArrayList<DeviceId> deviceIds;
    private boolean isInternal;
    private String name;
    private BLEX408Pair pair;
    private LightupDeviceType type;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LightupDeviceType.values().length];
            try {
                iArr[LightupDeviceType.X408PAIR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LightupDeviceType.KEEPALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LightupDeviceType.TRUNK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LightupDeviceType.X408.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LightupDevice(String str, BLELightup bLELightup) {
        str.getClass();
        bLELightup.getClass();
        ArrayList<DeviceId> arrayList = new ArrayList<>();
        this.deviceIds = arrayList;
        this.name = str;
        this.bleDevice = bLELightup;
        this.isInternal = true;
        arrayList.add(bLELightup.getDeviceId());
        int iA = ByteUtils.a(bLELightup.getDeviceId().getProductId());
        if (iA == ByteUtils.a(SpecificProperties.PRODUCT_ID_KEEP_ALL)) {
            this.type = LightupDeviceType.KEEPALL;
            return;
        }
        if (iA == ByteUtils.a(SpecificProperties.PRODUCT_ID_X408)) {
            this.type = LightupDeviceType.X408;
        } else if (iA == ByteUtils.a(SpecificProperties.PRODUCT_ID_TRUNK)) {
            this.type = LightupDeviceType.TRUNK;
        } else {
            this.type = LightupDeviceType.UNKNOWN;
        }
    }

    /* JADX INFO: renamed from: getBleDevice$library, reason: from getter */
    public final BLELightup getBleDevice() {
        return this.bleDevice;
    }

    public final String getDebugIdentifier() {
        StringBuilder sb = new StringBuilder();
        if (this.deviceIds.isEmpty()) {
            sb.append("NC");
        } else {
            sb.append(this.deviceIds.get(0).getSerialNumber());
            if (this.type == LightupDeviceType.X408PAIR) {
                sb.append("_");
                if (this.deviceIds.size() == 2) {
                    sb.append(this.deviceIds.get(1).getSerialNumber());
                } else {
                    sb.append("NC");
                }
            }
        }
        return sb.toString();
    }

    public final ArrayList<DeviceId> getDeviceIds$library() {
        return this.deviceIds;
    }

    public final String getName() {
        return this.name;
    }

    public final PairOrientation getOrientation() {
        BLELightup bLELightup = this.bleDevice;
        if (bLELightup == null) {
            return PairOrientation.UNKNOWN;
        }
        bLELightup.getClass();
        PairOrientation orientation = bLELightup.getOrientation();
        orientation.getClass();
        return orientation;
    }

    /* JADX INFO: renamed from: getPair$library, reason: from getter */
    public final BLEX408Pair getPair() {
        return this.pair;
    }

    public final LightupDeviceType getType() {
        return this.type;
    }

    public final DeviceId getUniqueId() {
        DeviceId deviceId = this.deviceIds.get(0);
        deviceId.getClass();
        return deviceId;
    }

    /* JADX INFO: renamed from: isInternal$library, reason: from getter */
    public final boolean getIsInternal() {
        return this.isInternal;
    }

    public final void setBleDevice$library(BLELightup bLELightup) {
        this.bleDevice = bLELightup;
    }

    public final void setDeviceIds$library(ArrayList<DeviceId> arrayList) {
        arrayList.getClass();
        this.deviceIds = arrayList;
    }

    public final void setInternal$library(boolean z) {
        this.isInternal = z;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPair$library(BLEX408Pair bLEX408Pair) {
        this.pair = bLEX408Pair;
    }

    public final void setType(LightupDeviceType lightupDeviceType) {
        this.type = lightupDeviceType;
    }

    public String toString() {
        String strN;
        LightupDeviceType lightupDeviceType = this.type;
        int i2 = lightupDeviceType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[lightupDeviceType.ordinal()];
        if (i2 != 1) {
            strN = (i2 == 2 || i2 == 3 || i2 == 4) ? o60.n("\"", this.deviceIds.get(0), "\"") : "";
        } else {
            strN = "\"" + this.deviceIds.get(0) + "\", \"" + this.deviceIds.get(1) + "\"";
        }
        String str = this.name;
        LightupDeviceType lightupDeviceType2 = this.type;
        lightupDeviceType2.getClass();
        return n00.r(strN, "] }", fc.s("{ \"name\": \"", str, "\", \"type\": \"", lightupDeviceType2.getValue(), "\", \"deviceId\": ["));
    }

    public LightupDevice(String str, BLEX408Pair bLEX408Pair) {
        str.getClass();
        bLEX408Pair.getClass();
        ArrayList<DeviceId> arrayList = new ArrayList<>();
        this.deviceIds = arrayList;
        this.name = str;
        this.pair = bLEX408Pair;
        this.type = LightupDeviceType.X408PAIR;
        this.isInternal = true;
        BLELightup leftDevice = bLEX408Pair.getLeftDevice();
        leftDevice.getClass();
        arrayList.add(leftDevice.getDeviceId());
        ArrayList<DeviceId> arrayList2 = this.deviceIds;
        BLELightup rightDevice = bLEX408Pair.getRightDevice();
        rightDevice.getClass();
        arrayList2.add(rightDevice.getDeviceId());
    }

    public LightupDevice(String str) throws JSONException {
        str.getClass();
        this.deviceIds = new ArrayList<>();
        JSONObject jSONObject = new JSONObject(str);
        this.name = jSONObject.getString("name");
        String string = jSONObject.getString("type");
        string.getClass();
        this.type = LightupDeviceType.valueOf(string);
        JSONArray jSONArray = jSONObject.getJSONArray("deviceId");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            this.deviceIds.add(new DeviceId(jSONArray.getString(i2)));
        }
    }
}

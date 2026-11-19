package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import android.content.SharedPreferences;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.ble.scanner.listeners.X408PairScanProcessListener;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DataUploadError;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.PowerOffReason;
import com.lightup.sdk.device.features.process.LightingUpload;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.lightup.DualDataUpload;
import com.lightup.sdk.device.features.process.lightup.SendWalkingInfo;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.EmptyActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener;
import com.lightup.sdk.device.features.process.monitoring.X408Monitoring;
import com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener;
import com.lightup.sdk.device.messages.InternalPowerOfReason;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.messages.SpecificMessageBuilder;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.DualFirmwareManager;
import com.lightup.sdk.device.utils.firmware.FirmwareManager;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.fcm.messages.Ping;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.CRC32;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001{B!\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J.\u0010)\u001a\u00020*2\u0006\u0010'\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010\r2\b\u0010,\u001a\u0004\u0018\u00010\r2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J(\u0010/\u001a\u00020\"2\u0006\u0010'\u001a\u00020(2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020.H\u0014J\b\u00100\u001a\u000201H\u0016J \u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u00022\u0006\u0010'\u001a\u00020(2\u0006\u00104\u001a\u00020*H\u0014J\u001c\u00105\u001a\u00020*2\b\u00103\u001a\u0004\u0018\u00010\u00022\b\u00106\u001a\u0004\u0018\u000107H\u0016J\u0010\u00108\u001a\u0002012\u0006\u00103\u001a\u00020\u0002H\u0002J\u0010\u00109\u001a\u0002012\u0006\u0010:\u001a\u00020;H\u0002J\u001c\u0010<\u001a\u00020=2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020?2\u0006\u0010:\u001a\u00020;J\u0010\u0010@\u001a\u00020=2\b\u0010A\u001a\u0004\u0018\u00010BJ\u0006\u0010C\u001a\u00020\u0010J\u000e\u0010D\u001a\u00020*2\u0006\u0010E\u001a\u00020FJ\u0010\u0010G\u001a\u0004\u0018\u00010(2\u0006\u0010E\u001a\u00020FJ\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020\r2\u0006\u0010:\u001a\u00020;J\u000e\u0010H\u001a\u00020=2\u0006\u0010J\u001a\u00020\u001bJ\u000e\u0010K\u001a\u00020=2\u0006\u0010:\u001a\u00020;J\u000e\u0010L\u001a\u00020=2\u0006\u0010:\u001a\u00020\u001fJ\u0016\u0010M\u001a\u00020=2\u0006\u00103\u001a\u00020\"2\u0006\u0010:\u001a\u00020NJ\u0016\u0010O\u001a\u00020=2\u0006\u0010P\u001a\u00020Q2\u0006\u0010:\u001a\u00020NJ*\u0010R\u001a\u00020=2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020?2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00020T2\u0006\u0010U\u001a\u00020VJ\u000e\u0010W\u001a\u00020=2\u0006\u0010:\u001a\u00020XJ\u000e\u0010Y\u001a\u00020*2\u0006\u0010Z\u001a\u00020\u001dJ\u0006\u0010[\u001a\u00020\u001dJ\u0013\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00180?H\u0000¢\u0006\u0002\b]J\u000e\u0010^\u001a\u00020=2\u0006\u0010:\u001a\u00020;J\u0006\u0010_\u001a\u00020`J\u000e\u0010a\u001a\u00020=2\u0006\u0010:\u001a\u00020bJ\u001a\u0010c\u001a\u0002012\b\u0010d\u001a\u0004\u0018\u00010.2\u0006\u0010:\u001a\u00020bH\u0002J\u000e\u0010e\u001a\u00020*2\u0006\u0010f\u001a\u00020\rJ\u0006\u0010g\u001a\u00020*J\u0006\u0010h\u001a\u00020*J\b\u0010i\u001a\u0004\u0018\u00010\u0018J\r\u0010j\u001a\u00020\u001bH\u0000¢\u0006\u0002\bkJ\u0015\u0010l\u001a\u0002012\u0006\u0010J\u001a\u00020\u001bH\u0000¢\u0006\u0002\bmJ\u0006\u0010n\u001a\u00020\u001bJ\b\u0010o\u001a\u000201H\u0002J\u0006\u0010p\u001a\u000201J\u0006\u0010q\u001a\u000201J\u0010\u0010r\u001a\u0002012\u0006\u0010s\u001a\u00020\u0002H\u0014J\u0010\u0010t\u001a\u0002012\u0006\u00103\u001a\u00020\u0002H\u0014J\u0016\u0010u\u001a\u00020=2\u0006\u0010v\u001a\u00020w2\u0006\u0010:\u001a\u00020;J\u0016\u0010x\u001a\u00020=2\u0006\u0010y\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020FJ\u0018\u0010z\u001a\u00020=2\u0006\u0010y\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020FH\u0002R\u0016\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\"0!j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\"`#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\rX\u0082D¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;", "Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "permissionsManager", "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;", "internetTimeReader", "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;", "<init>", "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V", "TAG", "", "kotlin.jvm.PlatformType", "prefs", "Landroid/content/SharedPreferences;", "getPrefs$library", "()Landroid/content/SharedPreferences;", "firstMonitoring", "Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;", "secondMonitoring", "loadedAnimations", "Ljava/util/ArrayList;", "Lcom/lightup/sdk/animation/CreatorProject;", "Lkotlin/collections/ArrayList;", "triggerIndex", "", "deviceMode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "pairListener", "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;", "pairDevices", "Ljava/util/HashMap;", "Lcom/lightup/sdk/device/devicemanagement/BLEX408;", "Lkotlin/collections/HashMap;", "productId", "getFirmwareManager", "Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "canCreateBLEDevice", "", "name", "mac", "scanRecord", "", "createBLEDevice", "defineScanFilterPattern", "", "onConnected", "device", "reconnection", "onDeviceInitiatedShutdown", "powerOffReason", "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;", "startMonitoring", "launchConfig", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "twin", "Lcom/lightup/sdk/device/enums/CallStatus;", "devices", "", "updateDevices", "updateDeviceListener", "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;", "getPrefs", "isInBootloader", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "getDeviceId", "startAnimation", "animationId", "triggerId", "stopAnimation", "startPairScanProcess", Ping.KEY, "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "pingPair", "pair", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "connectPair", "deviceConnectionProcessListener", "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;", "monitoringListener", "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;", "openDevices", "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;", "setMode", "mode", "getMode", "getLocalAnimations", "getLocalAnimations$library", "setPowerModeOff", "getDeviceStatus", "Lcom/lightup/sdk/device/enums/DeviceStatus;", "updateAnimations", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "uploadToDevice", DbParams.KEY_DATA, "enableAdminMode", "adminKey", "disableAdminMode", "isAdminModeEnable", "getCurrentlyPlaying", "getTriggerIndex", "getTriggerIndex$library", "setCurrentlyPlaying", "setCurrentlyPlaying$library", "generateCheckSum", "setTriggerMax", "stopScan", "disconnectDevices", "onExpectedlyDisconnect", "bleDevice", "onLostDevice", "setWalkingModeConfig", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "setWalkingInfo", "intensity", "launchWalkingInfoFeature", "PairPingDeviceListener", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLEX408Manager extends BLEPairedDevicesManager<BLELightup, VuittonMonitoringListener> {
    private final String TAG;
    private DeviceMode deviceMode;
    private X408Monitoring firstMonitoring;
    private ArrayList<CreatorProject> loadedAnimations;
    private HashMap<String, BLEX408> pairDevices;
    private X408PairScanProcessListener pairListener;
    private final SharedPreferences prefs;
    private final String productId;
    private X408Monitoring secondMonitoring;
    private int triggerIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLEX408Manager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) {
        super(context, permissionsManager, internetTimeReader);
        context.getClass();
        permissionsManager.getClass();
        internetTimeReader.getClass();
        this.TAG = "BLEX408Manager";
        this.loadedAnimations = new ArrayList<>();
        this.triggerIndex = -1;
        this.deviceMode = DeviceMode.UNKNOWN;
        this.pairDevices = new HashMap<>();
        this.productId = "0408";
        this.firmwareManager = new DualFirmwareManager(context, "_x408");
        SharedPreferences sharedPreferences = context.getSharedPreferences("LUCIE_PREFS_X408", 0);
        sharedPreferences.getClass();
        this.prefs = sharedPreferences;
        ArrayList<CreatorProject> arrayList = SpecificProperties.outOfProdAnimation.get("0408");
        arrayList.getClass();
        this.loadedAnimations = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchConfig(final ActionListener listener) {
        byte[] bArrC = ByteUtils.c(getDevice(PairOrientation.RIGHT).getDeviceId().getSerialNumber());
        byte[] bArrC2 = ByteUtils.c(getDevice(PairOrientation.LEFT).getDeviceId().getSerialNumber());
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_SET_CONFIG_X408;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        System.arraycopy(bArrC, 0, bArr, 1, 8);
        DeviceMessage deviceMessage = new DeviceMessage(bArr);
        byte[] bArr2 = new byte[messageInfo.d()];
        bArr2[0] = messageInfo.b();
        System.arraycopy(bArrC2, 0, bArr2, 1, 8);
        launchFeature(deviceMessage, new DeviceMessage(bArr2), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.launchConfig.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError error) {
                BLEX408Manager.this.setIsModePing(false);
                BLEX408Manager.this.stopScan();
                BLEX408Manager.this.disconnectDevices();
                String unused = BLEX408Manager.this.TAG;
                listener.onDeviceError(error);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
                BLEX408Manager.this.setIsModePing(false);
                BLEX408Manager.this.stopScan();
                BLEX408Manager.this.disconnectDevices();
                String unused = BLEX408Manager.this.TAG;
                listener.onDone();
            }
        });
    }

    private final CallStatus launchWalkingInfoFeature(int intensity, PairOrientation orientation) {
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            PairOrientation pairOrientation = PairOrientation.LEFT;
            if (orientation == pairOrientation) {
                pairOrientation = PairOrientation.RIGHT;
            }
            BLELightup device = getDevice(pairOrientation);
            device.getClass();
            new SendWalkingInfo(device, intensity).execute();
        }
        callStatus.getClass();
        return callStatus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTriggerMax() {
        int size = this.loadedAnimations.size() + 5;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_SET_MAX_TRIG;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = ByteUtils.d(size)[3];
        launchFeature(new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.setTriggerMax.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError error) {
            }
        });
    }

    private final void startMonitoring(BLELightup device) {
        M m = this.deviceMonitoringListener;
        m.getClass();
        X408Monitoring x408Monitoring = new X408Monitoring(device, this, (X408MonitoringListener) m);
        if (device.isLeft$library()) {
            this.firstMonitoring = x408Monitoring;
        } else {
            this.secondMonitoring = x408Monitoring;
        }
        x408Monitoring.execute();
    }

    private final void uploadToDevice(byte[] data, DataUploadListener listener) {
        if (getCallStatus() != CallStatus.INITIATED || data == null) {
            listener.onError(DataUploadError.TransferError);
        } else {
            new DualDataUpload(new LightingUpload(getDevice(PairOrientation.LEFT), data, 256, listener), new LightingUpload(getDevice(PairOrientation.RIGHT), data, 256, listener), listener);
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public boolean canCreateBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord) {
        deviceId.getClass();
        byte[] productId = deviceId.getProductId();
        productId.getClass();
        return Arrays.equals(productId, SpecificProperties.PRODUCT_ID_X408);
    }

    public final CallStatus connectPair(List<? extends BLELightup> devices, OrientedDeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener, X408MonitoringListener monitoringListener) {
        devices.getClass();
        deviceConnectionProcessListener.getClass();
        monitoringListener.getClass();
        this.deviceMonitoringListener = monitoringListener;
        CallStatus callStatusConnectPair = connectPair(devices, deviceConnectionProcessListener);
        callStatusConnectPair.getClass();
        return callStatusConnectPair;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public BLEX408 createBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord) {
        deviceId.getClass();
        name.getClass();
        mac.getClass();
        scanRecord.getClass();
        byte[] bArrO = ArraysKt.o(scanRecord, 35, 43);
        String strG = ByteUtils.g(bArrO.length, bArrO, false);
        String serialNumber = deviceId.getSerialNumber();
        serialNumber.getClass();
        String strConcat = "X408_".concat(serialNumber.substring(0, 4));
        strG.getClass();
        return new BLEX408(deviceId, strConcat, mac, strG, this);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void defineScanFilterPattern() {
        setPatternId(SpecificProperties.PRODUCT_ID_X408);
    }

    public final boolean disableAdminMode() {
        setIsAdminMode(false);
        return true;
    }

    public final void disconnectDevices() {
        clearConnections();
    }

    public final boolean enableAdminMode(String adminKey) {
        adminKey.getClass();
        if (!Intrinsics.c(adminKey, SpecificProperties.X408_ADMIN_KEY)) {
            return false;
        }
        setIsAdminMode(true);
        return true;
    }

    public final int generateCheckSum() {
        byte[] bArr = SpecificProperties.outOfProdAnimationFileX408.get(this.productId);
        CRC32 crc32 = new CRC32();
        bArr.getClass();
        crc32.update(bArr, 0, bArr.length);
        return (int) crc32.getValue();
    }

    public final CreatorProject getCurrentlyPlaying() {
        if (this.triggerIndex == -1) {
            return null;
        }
        Iterator<CreatorProject> it = this.loadedAnimations.iterator();
        it.getClass();
        while (it.hasNext()) {
            CreatorProject next = it.next();
            next.getClass();
            CreatorProject creatorProject = next;
            if (creatorProject.getTriggerIndex() == this.triggerIndex) {
                return creatorProject;
            }
        }
        return null;
    }

    public final DeviceId getDeviceId(PairOrientation orientation) {
        orientation.getClass();
        if (getCallStatus() == CallStatus.INITIATED) {
            return getDevice(orientation).getDeviceId();
        }
        return null;
    }

    public final DeviceStatus getDeviceStatus() {
        if (getCallStatus() != CallStatus.INITIATED) {
            return DeviceStatus.OFF;
        }
        return this.triggerIndex == -1 ? DeviceStatus.STANDBY : DeviceStatus.ON;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public FirmwareManager getFirmwareManager(DeviceId deviceId) {
        FirmwareManager firmwareManager = this.firmwareManager;
        firmwareManager.getClass();
        return firmwareManager;
    }

    public final List<CreatorProject> getLocalAnimations$library() {
        ArrayList<CreatorProject> arrayList = SpecificProperties.outOfProdAnimation.get(this.productId);
        arrayList.getClass();
        return arrayList;
    }

    public final DeviceMode getMode() {
        if (getCallStatus() != CallStatus.INITIATED) {
            return this.deviceMode;
        }
        Objects.toString(this.deviceMode);
        return this.deviceMode;
    }

    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final SharedPreferences getPrefs$library() {
        return this.prefs;
    }

    /* JADX INFO: renamed from: getTriggerIndex$library, reason: from getter */
    public final int getTriggerIndex() {
        return this.triggerIndex;
    }

    public final boolean isAdminModeEnable() {
        return getIsAdminMode();
    }

    public final boolean isInBootloader(PairOrientation orientation) {
        orientation.getClass();
        return getDevice(orientation).getBleDeviceState().bleDeviceState == DeviceState.IN_BOOTLOADER;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onConnected(BLELightup device, DeviceId deviceId, boolean reconnection) {
        device.getClass();
        deviceId.getClass();
        if (!reconnection && !getIsModePing()) {
            startMonitoring(device);
            if (isReady()) {
                cancelDiscovery();
            }
        }
        if (reconnection && getSoftCallStatus() == CallStatus.INITIATED) {
            startAnimation(this.triggerIndex);
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public boolean onDeviceInitiatedShutdown(BLELightup device, InternalPowerOfReason powerOffReason) {
        boolean zOnDeviceInitiatedShutdown = super.onDeviceInitiatedShutdown(device, powerOffReason);
        if (powerOffReason != InternalPowerOfReason.BATTERY_LOW && powerOffReason != InternalPowerOfReason.BUTTON_ACTION && powerOffReason != InternalPowerOfReason.CRITICAL_HEAT) {
            return zOnDeviceInitiatedShutdown;
        }
        launchFeature(MessageBuilder.a(), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new EmptyActionListener());
        return zOnDeviceInitiatedShutdown;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEPairedDevicesManager
    public void onExpectedlyDisconnect(BLELightup bleDevice) {
        bleDevice.getClass();
        super.onExpectedlyDisconnect(bleDevice);
    }

    public final CallStatus openDevices(final OpenDeviceListener listener) {
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING;
            byte[] bArr = new byte[messageInfo.d()];
            bArr[0] = messageInfo.b();
            launchFeature(new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.openDevices.1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public void onDone() {
                    BLEX408Manager bLEX408Manager = this;
                    bLEX408Manager.stopAnimation(new BLEX408Manager$openDevices$1$onDone$1(listener, bLEX408Manager));
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public void onDeviceError(DeviceError error) {
                    listener.onDeviceError(error);
                }
            });
        }
        callStatus.getClass();
        return callStatus;
    }

    public final CallStatus ping(BLEX408 device, PingDeviceListener listener) {
        device.getClass();
        listener.getClass();
        CallStatus callStatusPingDevice = super.pingDevice(device, listener);
        callStatusPingDevice.getClass();
        return callStatusPingDevice;
    }

    public final CallStatus pingPair(final BLEX408Pair pair, final PingDeviceListener listener) {
        pair.getClass();
        listener.getClass();
        final PairPingDeviceListener pairPingDeviceListener = new PairPingDeviceListener(listener);
        setIsModePing(true);
        CallStatus callStatusConnectPair = connectPair(CollectionsKt.P(pair.getLeftDevice(), pair.getRightDevice()), new OrientedDeviceConnectionProcessListener<BLELightup>() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.pingPair.1
            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onConnected(PairOrientation orientation, BLELightup device, boolean reconnection) {
                orientation.getClass();
                device.getClass();
                if (BLEX408Manager.this.isConnected()) {
                    BLEX408Manager.this.launchPingFeature(pair.getLeftDevice(), pairPingDeviceListener);
                    BLEX408Manager.this.launchPingFeature(pair.getRightDevice(), pairPingDeviceListener);
                }
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onConnecting(PairOrientation orientation) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onDeviceShutDown(PairOrientation orientation, PowerOffReason reason) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onError(String error) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onLost(PairOrientation orientation) {
                listener.onDeviceError(DeviceConnectionError.CONNECTION_LOST);
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onNoDeviceFound() {
                listener.onDeviceError(DeviceConnectionError.DEVICE_NOT_FOUND);
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onReconnecting(PairOrientation orientation) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onRequiresUpdate(PairOrientation orientation, BLELightup device, boolean updatePossible) {
                orientation.getClass();
                device.getClass();
                if (BLEX408Manager.this.isConnected()) {
                    BLEX408Manager.this.launchPingFeature(pair.getLeftDevice(), pairPingDeviceListener);
                    BLEX408Manager.this.launchPingFeature(pair.getRightDevice(), pairPingDeviceListener);
                }
            }
        });
        callStatusConnectPair.getClass();
        return callStatusConnectPair;
    }

    public final void setCurrentlyPlaying$library(int triggerId) {
        this.triggerIndex = triggerId;
    }

    public final boolean setMode(DeviceMode mode) {
        mode.getClass();
        Objects.toString(mode);
        if (getCallStatus() != CallStatus.INITIATED) {
            return false;
        }
        final DeviceMode deviceMode = this.deviceMode;
        this.deviceMode = mode;
        int deviceMode2 = mode.getDeviceMode();
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_OPEN_SET_MODE;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = ByteUtils.d(deviceMode2)[3];
        launchFeature(new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.setMode.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError error) {
                BLEX408Manager.this.deviceMode = deviceMode;
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
                ((VuittonMonitoringListener) BLEX408Manager.this.deviceMonitoringListener).onDeviceStatusChanged();
            }
        });
        return true;
    }

    public final CallStatus setPowerModeOff(ActionListener listener) {
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            launchFeature(MessageBuilder.a(), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener);
        }
        callStatus.getClass();
        return callStatus;
    }

    public final CallStatus setWalkingInfo(int intensity, PairOrientation orientation) {
        orientation.getClass();
        return launchWalkingInfoFeature(intensity, orientation);
    }

    public final CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener) {
        config.getClass();
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            launchFeature(SpecificMessageBuilder.buildWalkingModeConfig(config), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener);
        }
        callStatus.getClass();
        return callStatus;
    }

    public final CallStatus startAnimation(String animationId, ActionListener listener) {
        animationId.getClass();
        listener.getClass();
        Iterator<CreatorProject> it = this.loadedAnimations.iterator();
        it.getClass();
        CreatorProject creatorProject = null;
        while (it.hasNext()) {
            CreatorProject next = it.next();
            next.getClass();
            CreatorProject creatorProject2 = next;
            if (Intrinsics.c(animationId, creatorProject2.getId())) {
                creatorProject = creatorProject2;
            }
        }
        if (creatorProject == null) {
            listener.onDeviceError(DeviceError.DEVICE_REQUIRES_UPDATE);
            return CallStatus.ERROR;
        }
        int triggerIndex = creatorProject.getTriggerIndex();
        CallStatus callStatus = getCallStatus();
        CallStatus callStatus2 = CallStatus.INITIATED;
        if (callStatus == callStatus2) {
            this.triggerIndex = triggerIndex;
            launchFeature(MessageBuilder.c(triggerIndex, true), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener);
        }
        return callStatus2;
    }

    public final CallStatus startPairScanProcess(final X408PairScanProcessListener listener) {
        listener.getClass();
        stopDeviceConnectionProcess();
        this.pairListener = listener;
        CallStatus callStatusStartScanProcess = startScanProcess(new DeviceScanProcessListener<BLELightup>() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.startPairScanProcess.1
            @Override // com.lightup.sdk.device.model.listeners.DeviceScanProcessListener
            public void onDeviceFound(BLELightup device) {
                device.getClass();
                BLEX408 blex408 = (BLEX408) BLEX408Manager.this.pairDevices.get(device.getSerialNumber());
                if (blex408 == null) {
                    BLEX408Manager.this.pairDevices.put(((BLEX408) device).getTwinSerialNumber(), device);
                    return;
                }
                BLEX408Pair bLEX408Pair = device.isLeft$library() ? new BLEX408Pair(device, blex408) : new BLEX408Pair(blex408, device);
                X408PairScanProcessListener x408PairScanProcessListener = BLEX408Manager.this.pairListener;
                x408PairScanProcessListener.getClass();
                x408PairScanProcessListener.onDeviceFound(bLEX408Pair);
            }

            @Override // com.lightup.sdk.device.model.listeners.DeviceScanProcessListener
            public void onScanEnd(boolean cancelled) {
                listener.onScanEnd(cancelled);
            }
        });
        callStatusStartScanProcess.getClass();
        return callStatusStartScanProcess;
    }

    public final CallStatus stopAnimation(ActionListener listener) {
        listener.getClass();
        if (getCallStatus() == CallStatus.INITIATED) {
            this.triggerIndex = -1;
            launchFeature(MessageBuilder.c(0, false), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener);
        }
        CallStatus callStatus = getCallStatus();
        callStatus.getClass();
        return callStatus;
    }

    public final void stopScan() {
        killScanTimeout();
        cancelDiscovery();
    }

    public final CallStatus twin(List<? extends BLELightup> devices, final ActionListener listener) {
        devices.getClass();
        listener.getClass();
        setIsModePing(true);
        CallStatus callStatusConnectPair = connectPair(CollectionsKt.P(devices.get(0).isLeft$library() ? devices.get(0) : devices.get(1), devices.get(0).isLeft$library() ? devices.get(1) : devices.get(0)), new OrientedDeviceConnectionProcessListener<BLELightup>() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.twin.1
            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onConnected(PairOrientation orientation, BLELightup device, boolean reconnection) {
                orientation.getClass();
                device.getClass();
                if (BLEX408Manager.this.isConnected()) {
                    BLEX408Manager.this.launchConfig(listener);
                }
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onConnecting(PairOrientation orientation) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onDeviceShutDown(PairOrientation orientation, PowerOffReason reason) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onError(String error) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onLost(PairOrientation orientation) {
                listener.onDeviceError(DeviceError.CONNECTION_LOST);
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onNoDeviceFound() {
                listener.onDeviceError(DeviceError.UNREACHABLE);
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onReconnecting(PairOrientation orientation) {
            }

            @Override // com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener
            public void onRequiresUpdate(PairOrientation orientation, BLELightup device, boolean updatePossible) {
                orientation.getClass();
                device.getClass();
                if (BLEX408Manager.this.isConnected()) {
                    BLEX408Manager.this.launchConfig(listener);
                }
            }
        });
        callStatusConnectPair.getClass();
        return callStatusConnectPair;
    }

    public final CallStatus updateAnimations(final DataUploadListener listener) {
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            stopAnimation(new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.updateAnimations.1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public void onDone() {
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public void onDeviceError(DeviceError error) {
                    error.getClass();
                }
            });
            byte[] bArr = SpecificProperties.outOfProdAnimationFileX408.get(this.productId);
            bArr.getClass();
            ArrayList<CreatorProject> arrayList = SpecificProperties.outOfProdAnimation.get(this.productId);
            arrayList.getClass();
            this.loadedAnimations = arrayList;
            uploadToDevice(bArr, new DataUploadListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.updateAnimations.2
                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                public void onCompleted() {
                    listener.onCompleted();
                    this.setTriggerMax();
                }

                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                public void onError(DataUploadError dataUploadError) {
                    listener.onError(dataUploadError);
                }

                @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
                public void onProgress(double progress) {
                    listener.onProgress(progress);
                }
            });
        }
        callStatus.getClass();
        return callStatus;
    }

    public final CallStatus updateDevices(UpdateDeviceListener updateDeviceListener) {
        CallStatus callStatusUpdateDevices = super.updateDevices(updateDeviceListener, 256, 10000);
        callStatusUpdateDevices.getClass();
        return callStatusUpdateDevices;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0016J\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\bJ\u0006\u0010\u000f\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;", "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "listener", "<init>", "(Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V", "once", "Ljava/util/concurrent/atomic/AtomicBoolean;", "deviceError", "Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;", "onDone", "", "onDeviceError", "error", "onDonePair", "onErrorPair", "resolve", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PairPingDeviceListener implements PingDeviceListener {
        private DeviceConnectionError deviceError;
        private final PingDeviceListener listener;
        private final AtomicBoolean once;

        public PairPingDeviceListener(PingDeviceListener pingDeviceListener) {
            pingDeviceListener.getClass();
            this.listener = pingDeviceListener;
            this.once = new AtomicBoolean(false);
        }

        @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
        public void onDone() {
            onDonePair();
        }

        public final void onDonePair() {
            if (this.once.getAndSet(true)) {
                resolve();
            }
        }

        public final void onErrorPair(DeviceConnectionError error) {
            this.deviceError = error;
            if (this.once.getAndSet(true)) {
                resolve();
            }
        }

        public final void resolve() {
            DeviceConnectionError deviceConnectionError = this.deviceError;
            if (deviceConnectionError != null) {
                this.listener.onDeviceError(deviceConnectionError);
            }
            this.listener.onDone();
        }

        @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
        public void onDeviceError(DeviceConnectionError error) {
            onErrorPair(error);
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onLostDevice(BLELightup device) {
        device.getClass();
    }

    public final CallStatus startAnimation(int triggerId) {
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            launchFeature(MessageBuilder.c(triggerId, true), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEX408Manager.startAnimation.1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public void onDone() {
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public void onDeviceError(DeviceError error) {
                }
            });
        }
        callStatus.getClass();
        return callStatus;
    }
}

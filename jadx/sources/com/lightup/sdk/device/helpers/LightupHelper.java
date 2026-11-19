package com.lightup.sdk.device.helpers;

import android.content.Context;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.scanner.listeners.LightupDeviceConnectionListener;
import com.lightup.sdk.device.ble.scanner.listeners.LightupScanProcessListener;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLEX408Pair;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.sightcall.universal.fcm.messages.Ping;
import defpackage.mt;
import defpackage.v40;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u0000 32\u00020\u0001:\u00013B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0018\u001a\u00020\u0017J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00152\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\b\u0010\u001f\u001a\u00020\u0015H\u0002J\u001e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u0010\u0010&\u001a\u00020\u00152\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\b\u0010'\u001a\u00020\u0015H\u0002J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020)J\u001c\u0010*\u001a\u00020\u001a2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\"0,2\u0006\u0010\u001b\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0017J\u001e\u00100\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u00101\u001a\u0002022\u0006\u0010\u001b\u001a\u00020-R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/lightup/sdk/device/helpers/LightupHelper;", "", "activationKey", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "bleAvailabilityListener", "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;", "<init>", "(Ljava/lang/String;Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V", "keepAllHelper", "Lcom/lightup/sdk/device/helpers/KeepAllHelper;", "x408Helper", "Lcom/lightup/sdk/device/helpers/X408Helper;", "trunkHelper", "Lcom/lightup/sdk/device/helpers/TrunkHelper;", "getDeviceHelper", "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", "type", "Lcom/lightup/sdk/device/enums/LightupDeviceType;", "setAdminMode", "", "isAdmin", "", "isAdminModeEnable", "startScan", "Lcom/lightup/sdk/device/enums/CallStatus;", "listener", "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;", "startDeviceScanProcess", "stopScan", "stopAllScans", "connect", "device", "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;", "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;", "monitoring", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "disconnect", "disconnectAll", Ping.KEY, "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "twinPair", "devices", "", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "setTestFolder", "useTestFolder", "setSide", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "Companion", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class LightupHelper {
    private KeepAllHelper keepAllHelper;
    private TrunkHelper trunkHelper;
    private X408Helper x408Helper;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final WalkingModeConfig defaultWalkingConfig = new WalkingModeConfig(500, 700, new boolean[]{false, false, true, true, true, false, true}, 100, 5);
    private static final WalkingModeConfig defaultX408WalkingConfig = new WalkingModeConfig(500, 700, new boolean[]{false, false, true, true, true, false, true}, 100, 5);
    private static final WalkingModeConfig defaultKeepAllWalkingConfig = new WalkingModeConfig(HarvestConfiguration.SLOW_START_THRESHOLD, 1, new boolean[]{true, true, true, true, true, true, true}, 100, 10);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LightupDeviceType.values().length];
            try {
                iArr[LightupDeviceType.KEEPALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LightupDeviceType.X408.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LightupDeviceType.X408PAIR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LightupDeviceType.TRUNK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LightupDeviceType.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LightupHelper(String str, Context context, BLEAvailabilityListener bLEAvailabilityListener) {
        str.getClass();
        context.getClass();
        bLEAvailabilityListener.getClass();
        this.keepAllHelper = new KeepAllHelper(context, str, bLEAvailabilityListener);
        this.x408Helper = new X408Helper(context, str, bLEAvailabilityListener);
        this.trunkHelper = new TrunkHelper(context, str, bLEAvailabilityListener);
    }

    public static /* synthetic */ void disconnect$default(LightupHelper lightupHelper, LightupDeviceType lightupDeviceType, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: disconnect");
            return;
        }
        if ((i2 & 1) != 0) {
            lightupDeviceType = LightupDeviceType.UNKNOWN;
        }
        lightupHelper.disconnect(lightupDeviceType);
    }

    private final void disconnectAll() {
        this.keepAllHelper.disconnect();
        this.x408Helper.disconnect();
        this.trunkHelper.disconnect();
    }

    public static /* synthetic */ void setAdminMode$default(LightupHelper lightupHelper, boolean z, LightupDeviceType lightupDeviceType, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: setAdminMode");
            return;
        }
        if ((i2 & 2) != 0) {
            lightupDeviceType = LightupDeviceType.UNKNOWN;
        }
        lightupHelper.setAdminMode(z, lightupDeviceType);
    }

    private final CallStatus startDeviceScanProcess(LightupScanProcessListener listener) {
        UnifiedScanListener unifiedScanListener = new UnifiedScanListener(listener);
        this.keepAllHelper.startDeviceScanProcess(unifiedScanListener);
        this.x408Helper.startPairScanProcess(unifiedScanListener);
        return CallStatus.INITIATED;
    }

    public static /* synthetic */ CallStatus startScan$default(LightupHelper lightupHelper, LightupScanProcessListener lightupScanProcessListener, LightupDeviceType lightupDeviceType, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: startScan");
            return null;
        }
        if ((i2 & 2) != 0) {
            lightupDeviceType = LightupDeviceType.UNKNOWN;
        }
        return lightupHelper.startScan(lightupScanProcessListener, lightupDeviceType);
    }

    private final void stopAllScans() {
        this.keepAllHelper.stopScan();
        this.x408Helper.stopScan();
        this.trunkHelper.stopScan();
    }

    public static /* synthetic */ void stopScan$default(LightupHelper lightupHelper, LightupDeviceType lightupDeviceType, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: stopScan");
            return;
        }
        if ((i2 & 1) != 0) {
            lightupDeviceType = LightupDeviceType.UNKNOWN;
        }
        lightupHelper.stopScan(lightupDeviceType);
    }

    public final CallStatus connect(LightupDevice device, LightupDeviceConnectionListener listener, LightupMonitoringListener monitoring) {
        device.getClass();
        listener.getClass();
        monitoring.getClass();
        LightupDeviceType type = device.getType();
        int i2 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            boolean isInternal = device.getIsInternal();
            KeepAllHelper keepAllHelper = this.keepAllHelper;
            if (!isInternal) {
                return keepAllHelper.startDeviceConnectionProcess((DeviceId[]) device.getDeviceIds$library().toArray(new DeviceId[0]), false, monitoring, new UnifiedConnectionListener(device, listener, this.keepAllHelper));
            }
            BLELightup bleDevice = device.getBleDevice();
            bleDevice.getClass();
            return keepAllHelper.connectToDevice(bleDevice, new UnifiedConnectionListener(device, listener, this.keepAllHelper), monitoring);
        }
        if (i2 == 2) {
            return CallStatus.ERROR;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                return i2 != 5 ? CallStatus.ERROR : CallStatus.ERROR;
            }
            boolean isInternal2 = device.getIsInternal();
            TrunkHelper trunkHelper = this.trunkHelper;
            if (!isInternal2) {
                return trunkHelper.startDeviceConnectionProcess((DeviceId[]) device.getDeviceIds$library().toArray(new DeviceId[0]), false, monitoring, new UnifiedConnectionListener(device, listener, this.trunkHelper));
            }
            BLELightup bleDevice2 = device.getBleDevice();
            bleDevice2.getClass();
            return trunkHelper.connectToDevice(bleDevice2, new UnifiedConnectionListener(device, listener, this.trunkHelper), monitoring);
        }
        boolean isInternal3 = device.getIsInternal();
        X408Helper x408Helper = this.x408Helper;
        if (!isInternal3) {
            return x408Helper.startDeviceConnectionProcess((DeviceId[]) device.getDeviceIds$library().toArray(new DeviceId[0]), false, monitoring, new UnifiedConnectionListener(device, listener, this.x408Helper));
        }
        BLEX408Pair pair = device.getPair();
        pair.getClass();
        BLELightup rightDevice = pair.getRightDevice();
        rightDevice.getClass();
        BLEX408Pair pair2 = device.getPair();
        pair2.getClass();
        BLELightup leftDevice = pair2.getLeftDevice();
        leftDevice.getClass();
        return x408Helper.connectToPair(CollectionsKt.P(rightDevice, leftDevice), new UnifiedConnectionListener(device, listener, this.x408Helper), monitoring);
    }

    public final void disconnect(LightupDeviceType type) {
        type.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            this.keepAllHelper.disconnect();
            return;
        }
        if (i2 == 2 || i2 == 3) {
            this.x408Helper.disconnect();
            return;
        }
        if (i2 == 4) {
            this.trunkHelper.disconnect();
        } else if (i2 == 5) {
            disconnectAll();
        } else {
            v40.g();
        }
    }

    public final LightupHelperInterface getDeviceHelper(LightupDeviceType type) {
        int i2 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            return this.keepAllHelper;
        }
        if (i2 == 2 || i2 == 3) {
            return this.x408Helper;
        }
        if (i2 != 4) {
            return null;
        }
        return this.trunkHelper;
    }

    public final boolean isAdminModeEnable() {
        return this.keepAllHelper.isAdminModeEnable() && this.x408Helper.isAdminModeEnable() && this.trunkHelper.isAdminModeEnable();
    }

    public final CallStatus ping(LightupDevice device, PingDeviceListener listener) {
        device.getClass();
        listener.getClass();
        LightupDeviceType type = device.getType();
        int i2 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == -1) {
            return CallStatus.ERROR;
        }
        if (i2 == 1) {
            return this.keepAllHelper.ping(device.getBleDevice(), listener);
        }
        if (i2 == 2) {
            return this.x408Helper.pingDevice(device.getBleDevice(), listener);
        }
        if (i2 == 3) {
            X408Helper x408Helper = this.x408Helper;
            BLEX408Pair pair = device.getPair();
            pair.getClass();
            return x408Helper.pingPair(pair, listener);
        }
        if (i2 == 4) {
            return this.trunkHelper.ping(device.getBleDevice(), listener);
        }
        if (i2 == 5) {
            return CallStatus.ERROR;
        }
        v40.g();
        return null;
    }

    public final void setAdminMode(boolean isAdmin, LightupDeviceType type) {
        type.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            KeepAllHelper keepAllHelper = this.keepAllHelper;
            if (isAdmin) {
                keepAllHelper.enableAdminMode(SpecificProperties.KEEPALL_ADMIN_KEY);
                return;
            } else {
                keepAllHelper.disableAdminMode();
                return;
            }
        }
        if (i2 == 2 || i2 == 3) {
            X408Helper x408Helper = this.x408Helper;
            if (isAdmin) {
                x408Helper.enableAdminMode(SpecificProperties.X408_ADMIN_KEY);
                return;
            } else {
                x408Helper.disableAdminMode();
                return;
            }
        }
        if (i2 == 4) {
            TrunkHelper trunkHelper = this.trunkHelper;
            if (isAdmin) {
                trunkHelper.enableAdminMode(SpecificProperties.KEEPALL_ADMIN_KEY);
                return;
            } else {
                trunkHelper.disableAdminMode();
                return;
            }
        }
        if (i2 != 5) {
            v40.g();
            return;
        }
        KeepAllHelper keepAllHelper2 = this.keepAllHelper;
        if (isAdmin) {
            keepAllHelper2.enableAdminMode(SpecificProperties.KEEPALL_ADMIN_KEY);
            this.x408Helper.enableAdminMode(SpecificProperties.X408_ADMIN_KEY);
            this.trunkHelper.enableAdminMode(SpecificProperties.KEEPALL_ADMIN_KEY);
        } else {
            keepAllHelper2.disableAdminMode();
            this.x408Helper.disableAdminMode();
            this.trunkHelper.disableAdminMode();
        }
    }

    public final CallStatus setSide(LightupDevice device, PairOrientation orientation, ActionListener listener) {
        device.getClass();
        orientation.getClass();
        listener.getClass();
        return CallStatus.NOT_AVAILABLE;
    }

    public final void setTestFolder(boolean useTestFolder) {
        this.keepAllHelper.setTestFolder(useTestFolder);
        this.trunkHelper.setTestFolder(useTestFolder);
        this.x408Helper.setTestFolder(useTestFolder);
    }

    public final CallStatus startScan(LightupScanProcessListener listener, LightupDeviceType type) {
        listener.getClass();
        type.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            return this.keepAllHelper.startDeviceScanProcess(new UnifiedScanListener(listener));
        }
        if (i2 == 2) {
            return this.x408Helper.startDeviceScanProcess(new UnifiedScanListener(listener));
        }
        if (i2 == 3) {
            return this.x408Helper.startPairScanProcess(new UnifiedScanListener(listener));
        }
        if (i2 == 4) {
            return this.trunkHelper.startDeviceScanProcess(new UnifiedScanListener(listener));
        }
        if (i2 == 5) {
            return startDeviceScanProcess(listener);
        }
        v40.g();
        return null;
    }

    public final void stopScan(LightupDeviceType type) {
        type.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            this.keepAllHelper.stopScan();
            return;
        }
        if (i2 == 2 || i2 == 3) {
            this.x408Helper.stopScan();
            return;
        }
        if (i2 == 4) {
            this.trunkHelper.stopScan();
        } else if (i2 == 5) {
            stopAllScans();
        } else {
            v40.g();
        }
    }

    public final CallStatus twinPair(List<? extends LightupDevice> devices, ActionListener listener) {
        devices.getClass();
        listener.getClass();
        if (devices.size() != 2) {
            return CallStatus.NOT_AVAILABLE;
        }
        LightupDeviceType type = devices.get(0).getType();
        LightupDeviceType lightupDeviceType = LightupDeviceType.X408;
        if (type != lightupDeviceType && devices.get(1).getType() != lightupDeviceType) {
            return CallStatus.NOT_AVAILABLE;
        }
        BLELightup bleDevice = devices.get(0).getBleDevice();
        DeviceId deviceId = bleDevice != null ? bleDevice.getDeviceId() : null;
        BLELightup bleDevice2 = devices.get(1).getBleDevice();
        if (Intrinsics.c(deviceId, bleDevice2 != null ? bleDevice2.getDeviceId() : null)) {
            return CallStatus.NOT_AVAILABLE;
        }
        X408Helper x408Helper = this.x408Helper;
        BLELightup bleDevice3 = devices.get(0).getBleDevice();
        bleDevice3.getClass();
        BLELightup bleDevice4 = devices.get(1).getBleDevice();
        bleDevice4.getClass();
        return x408Helper.twin(CollectionsKt.P(bleDevice3, bleDevice4), listener);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;", "", "<init>", "()V", "defaultWalkingConfig", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "getDefaultWalkingConfig$annotations", "getDefaultWalkingConfig", "()Lcom/lightup/sdk/device/model/WalkingModeConfig;", "defaultX408WalkingConfig", "getDefaultX408WalkingConfig", "defaultKeepAllWalkingConfig", "getDefaultKeepAllWalkingConfig", "sdkVersion", "", "getSdkVersion", "()Ljava/lang/String;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated
        public static /* synthetic */ void getDefaultWalkingConfig$annotations() {
        }

        public final WalkingModeConfig getDefaultKeepAllWalkingConfig() {
            return LightupHelper.defaultKeepAllWalkingConfig;
        }

        public final WalkingModeConfig getDefaultWalkingConfig() {
            return LightupHelper.defaultWalkingConfig;
        }

        public final WalkingModeConfig getDefaultX408WalkingConfig() {
            return LightupHelper.defaultX408WalkingConfig;
        }

        public final String getSdkVersion() {
            return "0.6.0";
        }

        private Companion() {
        }
    }
}

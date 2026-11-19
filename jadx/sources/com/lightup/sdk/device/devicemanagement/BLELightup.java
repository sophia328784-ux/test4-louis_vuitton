package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceType;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import defpackage.az;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B/\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u001b\u001a\u00020\u001cH\u0000¢\u0006\u0002\b\u001dJ\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0010¢\u0006\u0002\b!J\r\u0010\"\u001a\u00020#H\u0010¢\u0006\u0002\b$J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020'H\u0016J\u000f\u0010(\u001a\u0004\u0018\u00010\u000fH\u0000¢\u0006\u0002\b)J\u0015\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020\u0016H\u0000¢\u0006\u0002\b,R\u0016\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;", "deviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "name", "", "mac", "manager", "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;", "<init>", "(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V", "TAG", "kotlin.jvm.PlatformType", "loadedAnimations", "Ljava/util/ArrayList;", "Lcom/lightup/sdk/animation/CreatorProject;", "Lkotlin/collections/ArrayList;", "getLoadedAnimations$library", "()Ljava/util/ArrayList;", "setLoadedAnimations$library", "(Ljava/util/ArrayList;)V", "triggerIndex", "", "getTriggerIndex$library", "()I", "setTriggerIndex$library", "(I)V", "isLeft", "", "isLeft$library", "buildCypher", "", "deviceIdBytes", "buildCypher$library", "sendUnlock", "", "sendUnlock$library", "update", "firmwareUpdateListener", "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;", "getCurrentlyPlaying", "getCurrentlyPlaying$library", "setCurrentlyPlaying", "triggerId", "setCurrentlyPlaying$library", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class BLELightup extends BLEOrientedDevice {
    private final String TAG;
    private ArrayList<CreatorProject> loadedAnimations;
    private int triggerIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLELightup(DeviceId deviceId, String str, String str2, BLEDevicesManager<BLELightup> bLEDevicesManager) {
        super(deviceId, str, str2, bLEDevicesManager, DeviceType.LIGHTUP);
        deviceId.getClass();
        str.getClass();
        str2.getClass();
        bLEDevicesManager.getClass();
        this.TAG = "BLELightup";
        this.loadedAnimations = new ArrayList<>();
        this.triggerIndex = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendUnlock$lambda$0(BLELightup bLELightup) {
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e2) {
            String str = bLELightup.TAG;
            e2.getMessage();
        }
        if (bLELightup.bleDevicesManager.getIsAdminMode() || bLELightup.bleDevicesManager.getIsModePing()) {
            byte[] pairingId = bLELightup.getDeviceId().getPairingId();
            ByteUtils.g(pairingId.length, pairingId, false);
            byte[] byteArray = bLELightup.getDeviceId().toByteArray();
            byteArray.getClass();
            bLELightup.putMessage(MessageBuilder.d(bLELightup.buildCypher(byteArray), bLELightup.getDeviceId().getPairingId()));
            return;
        }
        byte[] pairingId2 = bLELightup.bleDevicesManager.getPairingId();
        ByteUtils.g(pairingId2.length, pairingId2, false);
        byte[] byteArray2 = bLELightup.getDeviceId().toByteArray();
        byteArray2.getClass();
        bLELightup.putMessage(MessageBuilder.d(bLELightup.buildCypher(byteArray2), bLELightup.bleDevicesManager.getPairingId()));
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice
    /* JADX INFO: renamed from: buildCypher$library, reason: merged with bridge method [inline-methods] */
    public byte[] buildCypher(byte[] deviceIdBytes) {
        deviceIdBytes.getClass();
        byte b2 = deviceIdBytes[0];
        byte b3 = deviceIdBytes[2];
        byte b4 = deviceIdBytes[1];
        byte b5 = deviceIdBytes[4];
        byte b6 = deviceIdBytes[3];
        byte b7 = deviceIdBytes[7];
        byte b8 = deviceIdBytes[6];
        byte b9 = deviceIdBytes[5];
        return new byte[]{(byte) (b2 ^ b3), (byte) (b4 ^ b5), (byte) (b3 ^ b2), (byte) (b6 ^ b7), (byte) (b5 ^ b8), (byte) (b9 ^ b4), (byte) (b8 ^ b6), (byte) (b3 ^ b7), (byte) (b2 ^ b4), (byte) (b4 ^ b9), (byte) 0, (byte) (b6 ^ b5), (byte) (b2 ^ b5), (byte) (b9 ^ b7), (byte) (b8 ^ b6), (byte) (b7 ^ b9)};
    }

    public final CreatorProject getCurrentlyPlaying$library() {
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

    public final ArrayList<CreatorProject> getLoadedAnimations$library() {
        return this.loadedAnimations;
    }

    /* JADX INFO: renamed from: getTriggerIndex$library, reason: from getter */
    public final int getTriggerIndex() {
        return this.triggerIndex;
    }

    public final boolean isLeft$library() {
        return getOrientation() == PairOrientation.LEFT;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice
    /* JADX INFO: renamed from: sendUnlock$library, reason: merged with bridge method [inline-methods] */
    public void sendUnlock() {
        new Thread(new z1(this, 12)).start();
    }

    public final void setCurrentlyPlaying$library(int triggerId) {
        this.triggerIndex = triggerId;
    }

    public final void setLoadedAnimations$library(ArrayList<CreatorProject> arrayList) {
        arrayList.getClass();
        this.loadedAnimations = arrayList;
    }

    public final void setTriggerIndex$library(int i2) {
        this.triggerIndex = i2;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevice, com.lightup.sdk.device.model.device.Device
    public boolean update(FirmwareUpdateListener firmwareUpdateListener) throws IllegalStateException {
        firmwareUpdateListener.getClass();
        registrationFlowLock("update");
        try {
            if (!this.requiresUpdate || !this.updatePossible) {
                return false;
            }
            registrationFlowUnlock("update");
            try {
                this.bleDevicesManager.getFirmwareManager(getDeviceId()).e(this.bleDevicesManager, this, firmwareUpdateListener, 256, 10000).execute();
                return true;
            } catch (UnsupportedDeviceException e2) {
                az.s("This should not happen", e2);
                return false;
            }
        } finally {
            registrationFlowUnlock("update");
        }
    }
}

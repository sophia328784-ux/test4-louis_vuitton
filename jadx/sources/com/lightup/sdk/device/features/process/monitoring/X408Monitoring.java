package com.lightup.sdk.device.features.process.monitoring;

import android.content.SharedPreferences;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLEX408Manager;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.DeviceInfoLighting;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Objects;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \f*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;", "Lcom/lightup/sdk/device/features/process/ProcessFeature;", "bleX408", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "manager", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;", "monitoringListener", "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;", "<init>", "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)V", "TAG", "", "kotlin.jvm.PlatformType", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "stateChange", "Ljava/util/concurrent/locks/Condition;", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "run", "", "handleNewMessage", "bleDevice", "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;", "messageId", "", ConfigurationName.PING_PAYLOAD, "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class X408Monitoring extends ProcessFeature {
    private final String TAG;
    private final ReentrantLock lock;
    private final BLEX408Manager manager;
    private final X408MonitoringListener monitoringListener;
    private final PairOrientation orientation;
    private final Condition stateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X408Monitoring(BLELightup bLELightup, BLEX408Manager bLEX408Manager, X408MonitoringListener x408MonitoringListener) {
        super(bLELightup);
        bLELightup.getClass();
        bLEX408Manager.getClass();
        x408MonitoringListener.getClass();
        this.manager = bLEX408Manager;
        this.monitoringListener = x408MonitoringListener;
        this.TAG = "X408Monitoring";
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stateChange = reentrantLock.newCondition();
        this.orientation = bLELightup.getOrientation();
        registerForNewMessages();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bleDevice, byte messageId, byte[] payload) throws InterruptedException {
        bleDevice.getClass();
        payload.getClass();
        if (messageId != MessageInfo.DEVICE_TO_SMARTPHONE_SEND_STATUS.b()) {
            if (messageId == MessageInfo.DEVICE_TO_SMARTPHONE_REQUEST_PLAY.b()) {
                byte b2 = payload[0];
                this.manager.setCurrentlyPlaying$library(b2);
                this.manager.startAnimation(b2);
                this.monitoringListener.onAnimationPlaying();
                this.lock.lock();
                this.stateChange.signal();
                this.lock.unlock();
                return;
            }
            if (messageId == MessageInfo.DEVICE_TO_SMARTPHONE_BATTERY_LEVEL.b()) {
                byte b3 = payload[0];
                byte b4 = (byte) (b3 & 127);
                boolean z = ((byte) (b3 >> 7)) != 0;
                X408MonitoringListener x408MonitoringListener = this.monitoringListener;
                PairOrientation pairOrientation = this.orientation;
                pairOrientation.getClass();
                x408MonitoringListener.onBatteryLevel(pairOrientation, b4, z);
                return;
            }
            if (messageId == MessageInfo.SMARTPHONE_AND_DEVICE_WALKING_INFO.b()) {
                byte b5 = payload[0];
                BLEX408Manager bLEX408Manager = this.manager;
                PairOrientation pairOrientation2 = this.orientation;
                pairOrientation2.getClass();
                bLEX408Manager.setWalkingInfo(b5, pairOrientation2);
                return;
            }
            return;
        }
        DeviceInfoLighting deviceInfoLighting = new DeviceInfoLighting(payload);
        SharedPreferences prefs$library = this.manager.getPrefs$library();
        byte[] productId = bleDevice.getDeviceId().getProductId();
        int iGenerateCheckSum = prefs$library.getInt(ByteUtils.g(productId.length, productId, false) + SpecificProperties.CHECKSUM_KEY_SUFFIX, 0);
        if (iGenerateCheckSum == 0) {
            iGenerateCheckSum = this.manager.generateCheckSum();
        }
        BLEX408Manager bLEX408Manager2 = this.manager;
        int i2 = deviceInfoLighting.f35982b;
        DeviceMode deviceModeValueOf = DeviceMode.valueOf(i2);
        deviceModeValueOf.getClass();
        bLEX408Manager2.setMode(deviceModeValueOf);
        if (iGenerateCheckSum != deviceInfoLighting.f35983c) {
            Thread.sleep(1000L);
            this.monitoringListener.onRequiresAnimationsUpdate();
        } else {
            Objects.toString(DeviceMode.valueOf(i2));
            CallStatus callStatus = this.manager.getCallStatus();
            CallStatus callStatus2 = CallStatus.INITIATED;
            BLEX408Manager bLEX408Manager3 = this.manager;
            int i3 = deviceInfoLighting.f35981a;
            if (callStatus == callStatus2) {
                int triggerIndex$library = bLEX408Manager3.getTriggerIndex();
                if (i3 != triggerIndex$library && triggerIndex$library != -1) {
                    this.manager.startAnimation(triggerIndex$library);
                }
            } else {
                bLEX408Manager3.setCurrentlyPlaying$library(i3);
            }
            this.monitoringListener.onAnimationPlaying();
        }
        this.lock.lock();
        this.stateChange.signal();
        this.lock.unlock();
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.lock.lock();
                this.stateChange.await();
                this.lock.unlock();
                Thread.sleep(3600000L);
                this.lock.unlock();
            } catch (InterruptedException unused) {
                this.lock.unlock();
                return;
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
    }
}

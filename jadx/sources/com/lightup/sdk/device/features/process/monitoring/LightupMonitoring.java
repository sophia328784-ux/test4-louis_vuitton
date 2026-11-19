package com.lightup.sdk.device.features.process.monitoring;

import android.content.SharedPreferences;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLELightupManager;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.features.process.DeviceInfoLighting;
import com.lightup.sdk.device.features.process.ProcessFeature;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\b\u0017\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\b\u0010\u001c\u001a\u00020\u0016H\u0016R\u0010\u0010\u0006\u001a\u00028\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0010*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;", "M", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "Lcom/lightup/sdk/device/features/process/ProcessFeature;", "bleDevice", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "manager", "monitoringListener", "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;", "<init>", "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;)V", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "DEBUG", "", "TAG", "", "kotlin.jvm.PlatformType", "lock", "Ljava/util/concurrent/locks/Lock;", "stateChange", "Ljava/util/concurrent/locks/Condition;", "handleNewMessage", "", "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;", "messageId", "", ConfigurationName.PING_PAYLOAD, "", "run", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class LightupMonitoring<M extends BLELightupManager> extends ProcessFeature {
    private final boolean DEBUG;
    private final String TAG;
    private final Lock lock;
    private final M manager;
    private final VuittonMonitoringListener monitoringListener;
    private final Condition stateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightupMonitoring(BLELightup bLELightup, M m, VuittonMonitoringListener vuittonMonitoringListener) {
        super(bLELightup);
        bLELightup.getClass();
        m.getClass();
        vuittonMonitoringListener.getClass();
        this.manager = m;
        this.monitoringListener = vuittonMonitoringListener;
        this.DEBUG = false;
        this.TAG = "LightupMonitoring";
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stateChange = reentrantLock.newCondition();
        registerForNewMessages();
    }

    @Override // com.lightup.sdk.device.features.Feature
    public void handleNewMessage(BLEDevice bleDevice, byte messageId, byte[] payload) {
        bleDevice.getClass();
        payload.getClass();
        if (messageId == MessageInfo.DEVICE_TO_SMARTPHONE_SEND_STATUS.b()) {
            DeviceInfoLighting deviceInfoLighting = new DeviceInfoLighting(payload);
            deviceInfoLighting.toString();
            SharedPreferences prefs = this.manager.getPrefs();
            byte[] productId = bleDevice.getDeviceId().getProductId();
            int iGenerateCheckSum = prefs.getInt(ByteUtils.g(productId.length, productId, false) + SpecificProperties.CHECKSUM_KEY_SUFFIX, 0);
            if (iGenerateCheckSum == 0) {
                iGenerateCheckSum = this.manager.generateCheckSum();
            }
            M m = this.manager;
            DeviceMode deviceModeValueOf = DeviceMode.valueOf(deviceInfoLighting.f35982b);
            deviceModeValueOf.getClass();
            m.setMode(deviceModeValueOf);
            if (iGenerateCheckSum != deviceInfoLighting.f35983c) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                }
                this.monitoringListener.onRequiresAnimationsUpdate();
            } else {
                this.manager.setCurrentlyPlaying(deviceInfoLighting.f35981a);
                this.monitoringListener.onAnimationPlaying();
            }
            this.lock.lock();
            this.stateChange.signal();
            this.lock.unlock();
        }
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

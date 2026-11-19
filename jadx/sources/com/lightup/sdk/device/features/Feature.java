package com.lightup.sdk.device.features;

import com.lightup.sdk.device.ble.communication.MessageListener;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.PriorityMode;
import defpackage.md;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Feature implements Runnable, MessageListener, BLEDeviceStateListener {
    private static final boolean DEBUG = false;
    private static final String TAG = "Feature";
    protected BLEDevice bleDevice;
    private FeatureStore featureStore;
    private Future<?> future;
    protected int uniqueId;
    private boolean deviceUnbinding = false;
    private AtomicBoolean featureExecuted = new AtomicBoolean(false);
    private boolean isRegisteredForNewMessages = false;
    private boolean isRegisteredForBLEDeviceStateChange = false;

    public Feature(BLEDevice bLEDevice) {
        this.uniqueId = 0;
        this.bleDevice = bLEDevice;
        this.featureStore = bLEDevice.getFeatureStore();
        if (isAtomic()) {
            return;
        }
        this.uniqueId = UUID.randomUUID().hashCode();
    }

    public final void deregisterForBLEDeviceStateChange() {
        this.isRegisteredForBLEDeviceStateChange = false;
    }

    public final void deregisterForNewMessages() {
        this.isRegisteredForNewMessages = false;
    }

    public int execute() {
        if (!this.featureExecuted.getAndSet(true)) {
            FeatureStore featureStore = this.featureStore;
            ExecutorService executorService = featureStore.f35979b;
            if (!executorService.isShutdown()) {
                featureStore.f35978a.add(this);
                setFuture(executorService.submit(this));
            }
        }
        return this.uniqueId;
    }

    public void handleBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
    }

    public void handleNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
    }

    public abstract boolean isAtomic();

    public final boolean isCompleted() {
        Future<?> future = this.future;
        return future == null || future.isCancelled() || this.future.isDone();
    }

    public boolean isDeviceUnbinding() {
        return this.deviceUnbinding;
    }

    public boolean kill(boolean z) {
        Future<?> future = this.future;
        if (future == null || future.isDone()) {
            return false;
        }
        this.deviceUnbinding = z;
        this.future.cancel(true);
        return true;
    }

    @Override // com.lightup.sdk.device.model.device.BLEDeviceStateListener
    public final void onBLEDeviceStateChange(BLEDeviceStateListener.StateChangeType stateChangeType, BLEDevice.DeviceStateBundle deviceStateBundle) {
        if (isCompleted() || !this.isRegisteredForBLEDeviceStateChange) {
            return;
        }
        handleBLEDeviceStateChange(stateChangeType, deviceStateBundle);
    }

    public final void onNewMessage(BLEDevice bLEDevice, byte b2, byte[] bArr) {
        if (isCompleted() || !this.isRegisteredForNewMessages) {
            return;
        }
        handleNewMessage(bLEDevice, b2, bArr);
    }

    public final void putMessage(DeviceMessage deviceMessage) {
        putMessage(PriorityMode.NORMAL, deviceMessage);
    }

    public final void registerForBLEDeviceStateChange() {
        if (isAtomic()) {
            md.k("Feature is atomic");
        } else {
            this.isRegisteredForBLEDeviceStateChange = true;
        }
    }

    public final void registerForNewMessages() {
        if (isAtomic()) {
            md.k("Feature is atomic");
        } else {
            this.isRegisteredForNewMessages = true;
        }
    }

    public final void setFuture(Future<?> future) {
        this.future = future;
    }

    public final void putMessage(PriorityMode priorityMode, DeviceMessage deviceMessage) {
        putMessage(this.bleDevice, priorityMode, deviceMessage);
    }

    private void putMessage(BLEDevice bLEDevice, PriorityMode priorityMode, DeviceMessage deviceMessage) {
        bLEDevice.putMessage(priorityMode, deviceMessage);
    }
}

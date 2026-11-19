package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.PriorityMode;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
class Broker {
    private static final boolean DEBUG = false;
    private static final String TAG = "Broker";
    private PriorityMode currentMode = PriorityMode.NORMAL;
    private final BlockingQueue<DeviceMessage> messagesQueue = new LinkedBlockingQueue(1000);

    public synchronized void clear() {
        this.messagesQueue.clear();
    }

    public DeviceMessage poll() {
        DeviceMessage deviceMessagePoll;
        synchronized (this.messagesQueue) {
            deviceMessagePoll = this.messagesQueue.poll();
        }
        return deviceMessagePoll;
    }

    public boolean put(PriorityMode priorityMode, DeviceMessage deviceMessage) {
        if (!this.currentMode.equals(priorityMode)) {
            return false;
        }
        try {
            synchronized (this.messagesQueue) {
                this.messagesQueue.add(deviceMessage);
            }
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public synchronized void setPriorityMode(PriorityMode priorityMode) {
        this.currentMode = priorityMode;
    }
}

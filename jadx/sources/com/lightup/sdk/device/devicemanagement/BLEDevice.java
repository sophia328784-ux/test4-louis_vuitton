package com.lightup.sdk.device.devicemanagement;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.features.Feature;
import com.lightup.sdk.device.features.FeatureStore;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.features.process.epoch.SetEpoch;
import com.lightup.sdk.device.features.process.epoch.SetEpochListener;
import com.lightup.sdk.device.messages.InternalPowerOfReason;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.BLEDeviceFirmwareChecksums;
import com.lightup.sdk.device.model.device.BLEDeviceStateListener;
import com.lightup.sdk.device.model.device.Device;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.DeviceRegistrationListener;
import com.lightup.sdk.device.model.device.DeviceType;
import com.lightup.sdk.device.model.device.PriorityMode;
import com.lightup.sdk.device.properties.Properties;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.RequiredUpdateType;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import defpackage.az;
import defpackage.b5;
import defpackage.bm;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLEDevice implements Device {
    protected static final boolean DEBUG = false;
    private static final boolean DEBUG_LOCKING = false;
    private static final int FAILED_PACKET_STREAK_THRESHOLD = 80;
    private static final int HARD_RESET_RETRY_TIMEOUT_MS = 2000;
    private static final int MAX_CHARAC_WRITE_RETRY = 10;
    private static final String READ_CHARAC_NOT_FOUND_MSG = "Could not find mandatory read characteristic on the device.";
    private static final String TAG = "BLEDevice";
    private static final String WRITE_CHARAC_NOT_FOUND_MSG = "Could not find mandatory write characteristic on the device.";
    private BLEDeviceFirmwareChecksums bleDeviceFirmwareChecksums;
    protected BLEDevicesManager<? extends BLEDevice> bleDevicesManager;
    private byte[] currentChunkedMessage;
    private int currentMessagePointer;
    private BluetoothDevice device;
    private final DeviceId deviceId;
    private Thread deviceRegistrationHangingThread;
    private DeviceRegistrationListener deviceRegistrationListener;
    private final DeviceType deviceType;
    private BluetoothGatt gatt;
    private Thread hardResetRetryThread;
    private boolean hasRegistered;
    private boolean hasShutdown;
    private boolean isHanging;
    private boolean isUpdating;
    private final String mac;
    protected String name;
    private Byte previousChunkPacketId;
    private BluetoothGattCharacteristic readCharac;
    protected boolean requiresUpdate;
    private Thread unlockRetryThread;
    protected boolean updatePossible;
    private BluetoothGattCharacteristic writeCharac;
    private final Broker broker = new Broker();
    private final ReentrantLock deviceRegistrationLock = new ReentrantLock();
    private final ReentrantLock connectionLock = new ReentrantLock();
    protected int deviceRegistrationHangingDuration = 15000;
    private DeviceState state = DeviceState.NOT_CONNECTED;
    private boolean isPlugged = false;
    private int batteryLevel = -1;
    private final FeatureStore featureStore = new FeatureStore();
    private volatile boolean descriptorWritten = false;
    private int characWriteRetry = 0;
    private int failedPacketStreak = 0;
    private DeviceMode mode = DeviceMode.STANDARD;
    private byte packetId = 0;
    private final IdPrinter idPrinter = new IdPrinter() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.1
        @Override // com.lightup.sdk.device.devicemanagement.BLEDevice.IdPrinter
        public String getShortId() {
            return BLEDevice.this.getShortId();
        }
    };

    public static class DeviceStateBundle {
        public final int batteryLevel;
        public final BLEDevice bleDevice;
        public final DeviceState bleDeviceState;
        public final boolean isPlugged;

        public DeviceStateBundle(BLEDevice bLEDevice, DeviceState deviceState, int i2, boolean z) {
            this.bleDevice = bLEDevice;
            this.bleDeviceState = deviceState;
            this.batteryLevel = i2;
            this.isPlugged = z;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DeviceStateBundle{bleDevice=");
            sb.append(this.bleDevice);
            sb.append(", bleDeviceState=");
            sb.append(this.bleDeviceState);
            sb.append(", batteryLevel=");
            sb.append(this.batteryLevel);
            sb.append(", isPlugged=");
            return d21.q(sb, this.isPlugged, '}');
        }
    }

    public interface IdPrinter {
        String getShortId();
    }

    public BLEDevice(DeviceId deviceId, String str, String str2, BLEDevicesManager<? extends BLEDevice> bLEDevicesManager, DeviceType deviceType) {
        this.deviceId = deviceId;
        this.name = str;
        this.mac = str2;
        this.bleDevicesManager = bLEDevicesManager;
        this.deviceType = deviceType;
        this.device = bLEDevicesManager.getPermissionsManager().f35969c.getRemoteDevice(str2);
    }

    private boolean BLEOK() {
        return this.bleDevicesManager.getPermissionsManager().f35969c != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionFlowLock(String str) {
        this.connectionLock.lock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionFlowUnlock(String str) {
        this.connectionLock.unlock();
    }

    private void extractBatteryInfo(byte b2) {
        this.batteryLevel = (byte) (b2 & 127);
        this.isPlugged = ((byte) (b2 >> 7)) != 0;
    }

    private RequiredUpdateType extractRegisterInfo(byte[] bArr) {
        try {
            this.bleDeviceFirmwareChecksums = new BLEDeviceFirmwareChecksums(Arrays.copyOfRange(bArr, 1, 5), Arrays.copyOfRange(bArr, 5, 9));
            extractBatteryInfo(bArr[9]);
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        try {
            return this.bleDevicesManager.getFirmwareManager(this.deviceId).g(this.deviceId, this.bleDeviceFirmwareChecksums);
        } catch (UnsupportedDeviceException e2) {
            bm.i(e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeviceHangingState() {
        if (this.deviceRegistrationListener.onDeviceRegistrationHanging(this, this.hasRegistered)) {
            unbind();
        }
    }

    private void handleNewCharacteristic(byte[] bArr, byte b2, byte b3, byte[] bArr2, int i2) {
        this.previousChunkPacketId = null;
        this.currentChunkedMessage = null;
        this.currentMessagePointer = 1;
        MessageInfo messageInfoA = MessageInfo.a(this.deviceType, b3);
        if (messageInfoA == null) {
            return;
        }
        if (messageInfoA.d() <= 19) {
            if (bArr.length - 1 != messageInfoA.d()) {
                return;
            }
            onNewMessage(Arrays.copyOfRange(bArr, 1, bArr.length), i2);
        } else {
            if (bArr.length != 20) {
                return;
            }
            byte[] bArr3 = new byte[messageInfoA.d()];
            this.currentChunkedMessage = bArr3;
            bArr3[0] = b3;
            newChunk(b2, bArr2);
        }
    }

    private void handleNewChunk(byte[] bArr, byte b2, byte[] bArr2, int i2) {
        Byte b3 = this.previousChunkPacketId;
        if (b3 == null || b2 != b3.byteValue() + 1) {
            this.previousChunkPacketId = null;
            return;
        }
        int length = this.currentChunkedMessage.length - this.currentMessagePointer;
        if (length > 18) {
            if (bArr2.length != 18) {
                this.previousChunkPacketId = null;
                return;
            } else {
                newChunk(b2, bArr2);
                return;
            }
        }
        if (bArr2.length == length) {
            newChunk(b2, bArr2);
            onNewMessage(this.currentChunkedMessage, i2);
        }
        this.previousChunkPacketId = null;
    }

    private void killDeviceRegistrationHangingThread() {
        Thread thread = this.deviceRegistrationHangingThread;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.deviceRegistrationHangingThread.interrupt();
    }

    private void killUnlockRetryThread() {
        Thread thread = this.unlockRetryThread;
        if (thread == null || thread.isInterrupted()) {
            return;
        }
        this.unlockRetryThread.interrupt();
    }

    private void newCharacteristic(byte[] bArr, int i2) {
        if (bArr == null || bArr.length < 2) {
            return;
        }
        byte b2 = bArr[0];
        byte b3 = bArr[1];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 2, bArr.length);
        if (b3 == -1) {
            handleNewChunk(bArr, b2, bArrCopyOfRange, i2);
        } else {
            handleNewCharacteristic(bArr, b2, b3, bArrCopyOfRange, i2);
        }
    }

    private void newChunk(byte b2, byte[] bArr) {
        System.arraycopy(bArr, 0, this.currentChunkedMessage, this.currentMessagePointer, bArr.length);
        this.currentMessagePointer += bArr.length;
        this.previousChunkPacketId = Byte.valueOf(b2);
    }

    private void notifyFeaturesOfNewMessage(final BLEDevice bLEDevice, final byte b2, final byte[] bArr) {
        FeatureStore featureStore = this.featureStore;
        synchronized (featureStore.f35978a) {
            try {
                int size = featureStore.f35978a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    final Feature feature = (Feature) featureStore.f35978a.get(i2);
                    if (!featureStore.f35980c.isShutdown()) {
                        featureStore.f35980c.execute(new Runnable() { // from class: ex
                            @Override // java.lang.Runnable
                            public final void run() {
                                feature.onNewMessage(bLEDevice, b2, bArr);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void notifyFeaturesOfStateChange(BLEDeviceStateListener.StateChangeType stateChangeType) {
        DeviceStateBundle bleDeviceState = getBleDeviceState();
        FeatureStore featureStore = this.featureStore;
        synchronized (featureStore.f35978a) {
            try {
                int size = featureStore.f35978a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Feature feature = (Feature) featureStore.f35978a.get(i2);
                    if (!featureStore.f35980c.isShutdown()) {
                        featureStore.f35980c.execute(new b5(feature, stateChangeType, bleDeviceState, 14));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void onBLEReady() {
        registrationFlowLock("onBLEReady");
        this.hasShutdown = false;
        startUnlockRetryThread();
        registrationFlowUnlock("onBLEReady");
        sendUnlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHardReset() {
        unexpectedDisconnection();
    }

    private void onNewMessage(byte[] bArr, int i2) {
        InternalPowerOfReason internalPowerOfReason;
        DeviceState deviceState;
        registrationFlowLock("onNewMessage");
        killUnlockRetryThread();
        byte b2 = bArr[0];
        if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST.b()) {
            killDeviceRegistrationHangingThread();
            this.isHanging = false;
            DeviceState deviceState2 = this.state;
            DeviceState deviceState3 = DeviceState.IN_BOOTLOADER;
            if (deviceState2 != deviceState3) {
                this.requiresUpdate = true;
                this.updatePossible = true;
                this.hasRegistered = false;
                setState(deviceState3);
                if (this.isUpdating) {
                    registrationFlowUnlock("onNewMessage");
                } else {
                    registrationFlowUnlock("onNewMessage");
                    this.deviceRegistrationListener.onDeviceRequiresUpdate(this, true);
                }
            } else {
                registrationFlowUnlock("onNewMessage");
            }
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_SYNC_REQ.b()) {
            registrationFlowUnlock("onNewMessage");
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, 5);
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_SYNC_INFO;
            byte[] bArr2 = new byte[messageInfo.d()];
            bArr2[0] = messageInfo.b();
            System.arraycopy(bArrCopyOfRange, 0, bArr2, 1, bArrCopyOfRange.length);
            System.arraycopy(ByteUtils.d(i2), 0, bArr2, 5, 4);
            putMessage(new DeviceMessage(bArr2, 9, 13));
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_REGISTER.b()) {
            killDeviceRegistrationHangingThread();
            this.isHanging = false;
            DeviceState deviceState4 = this.state;
            DeviceState deviceState5 = DeviceState.REGISTERED;
            if (deviceState4 == deviceState5 || deviceState4 == (deviceState = DeviceState.REGISTERED_REQUIRES_UPDATE)) {
                registrationFlowUnlock("onNewMessage");
                putMessage(new DeviceMessage(new byte[]{MessageInfo.SMARTPHONE_TO_DEVICE_REGISTER_ACK.b()}));
            } else {
                RequiredUpdateType requiredUpdateTypeExtractRegisterInfo = extractRegisterInfo(bArr);
                if (requiredUpdateTypeExtractRegisterInfo == RequiredUpdateType.NONE) {
                    this.requiresUpdate = false;
                    this.updatePossible = false;
                    boolean z = !this.hasRegistered;
                    this.hasRegistered = true;
                    setState(deviceState5);
                    registrationFlowUnlock("onNewMessage");
                    putMessage(new DeviceMessage(new byte[]{MessageInfo.SMARTPHONE_TO_DEVICE_REGISTER_ACK.b()}));
                    this.deviceRegistrationListener.onDeviceRegistered(this, z);
                } else {
                    this.requiresUpdate = true;
                    RequiredUpdateType requiredUpdateType = RequiredUpdateType.UPDATE_POSSIBLE;
                    this.updatePossible = requiredUpdateTypeExtractRegisterInfo == requiredUpdateType;
                    setState(deviceState);
                    registrationFlowUnlock("onNewMessage");
                    putMessage(new DeviceMessage(new byte[]{MessageInfo.SMARTPHONE_TO_DEVICE_REGISTER_ACK.b()}));
                    if (!this.isUpdating) {
                        this.deviceRegistrationListener.onDeviceRequiresUpdate(this, requiredUpdateTypeExtractRegisterInfo == requiredUpdateType);
                    }
                }
            }
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_POWER_OFF.b()) {
            byte b3 = bArr[1];
            if (b3 == 0) {
                internalPowerOfReason = InternalPowerOfReason.BATTERY_LOW;
            } else if (b3 == 1) {
                internalPowerOfReason = InternalPowerOfReason.BUTTON_ACTION;
            } else if (b3 == 2) {
                internalPowerOfReason = InternalPowerOfReason.CRITICAL_HEAT;
            } else if (b3 == 3) {
                internalPowerOfReason = InternalPowerOfReason.LOCK;
            } else if (b3 == 4) {
                internalPowerOfReason = InternalPowerOfReason.UPDATING;
            } else if (b3 != 5) {
                InternalPowerOfReason internalPowerOfReason2 = InternalPowerOfReason.BATTERY_LOW;
                internalPowerOfReason = null;
            } else {
                internalPowerOfReason = InternalPowerOfReason.SMARTPHONE;
            }
            killDeviceRegistrationHangingThread();
            this.isHanging = false;
            this.hasShutdown = true;
            registrationFlowUnlock("onNewMessage");
            if (this.deviceRegistrationListener.onDeviceInitiatedShutdown(this, internalPowerOfReason)) {
                setState(DeviceState.DISCONNECTING);
            }
        } else if (b2 == MessageInfo.DEVICE_TO_SMARTPHONE_BATTERY_LEVEL.b()) {
            registrationFlowUnlock("onNewMessage");
            extractBatteryInfo(bArr[1]);
            notifyFeaturesOfStateChange(BLEDeviceStateListener.StateChangeType.BATTERY);
        } else {
            registrationFlowUnlock("onNewMessage");
        }
        if (MessageInfo.f(bArr)) {
            notifyFeaturesOfNewMessage(this, b2, Arrays.copyOfRange(bArr, 1, bArr.length));
        }
    }

    private void reset() {
        this.hasRegistered = false;
        this.requiresUpdate = false;
        this.updatePossible = false;
        this.isUpdating = false;
        this.isHanging = false;
        this.hasShutdown = false;
        this.previousChunkPacketId = null;
        this.currentChunkedMessage = null;
        this.currentMessagePointer = 0;
        this.packetId = (byte) 0;
    }

    private boolean setReadCharacteristic() {
        BluetoothGatt bluetoothGatt = this.gatt;
        UUID uuid = Properties.n;
        if (bluetoothGatt.getService(uuid) == null) {
            return false;
        }
        BluetoothGattCharacteristic characteristic = this.gatt.getService(uuid).getCharacteristic(Properties.p);
        this.readCharac = characteristic;
        this.gatt.setCharacteristicNotification(characteristic, true);
        return true;
    }

    private boolean setWriteCharacteristic() {
        BluetoothGatt bluetoothGatt = this.gatt;
        UUID uuid = Properties.n;
        if (bluetoothGatt.getService(uuid) == null) {
            return false;
        }
        BluetoothGattCharacteristic characteristic = this.gatt.getService(uuid).getCharacteristic(Properties.o);
        this.writeCharac = characteristic;
        characteristic.setWriteType(1);
        return true;
    }

    private void startDeviceRegistrationHangingThread() {
        killDeviceRegistrationHangingThread();
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(BLEDevice.this.deviceRegistrationHangingDuration);
                    BLEDevice.this.registrationFlowLock("startDeviceRegistrationHangingThread");
                    if (BLEDevice.this.state != DeviceState.REGISTERING && BLEDevice.this.state != DeviceState.HARD_RESET_AWAITING_RECONNECTION && BLEDevice.this.state != DeviceState.CONNECTING) {
                        BLEDevice.this.registrationFlowUnlock("startDeviceRegistrationHangingThread");
                        return;
                    }
                    BLEDevice.this.isHanging = true;
                    BLEDevice.this.registrationFlowUnlock("startDeviceRegistrationHangingThread");
                    if (BLEDevice.this.isUpdating) {
                        return;
                    }
                    BLEDevice.this.handleDeviceHangingState();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        });
        this.deviceRegistrationHangingThread = thread;
        thread.start();
    }

    private void startUnlockRetryThread() {
        killUnlockRetryThread();
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.2
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(1500L);
                        BLEDevice.this.registrationFlowLock("startUnlockRetryThread");
                        DeviceState deviceState = BLEDevice.this.state;
                        DeviceState deviceState2 = DeviceState.REGISTERING;
                        BLEDevice bLEDevice = BLEDevice.this;
                        if (deviceState != deviceState2) {
                            bLEDevice.registrationFlowUnlock("startUnlockRetryThread");
                            return;
                        } else {
                            bLEDevice.registrationFlowUnlock("startUnlockRetryThread");
                            BLEDevice.this.sendUnlock();
                        }
                    } catch (InterruptedException e2) {
                        e2.getMessage();
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        });
        this.unlockRetryThread = thread;
        thread.start();
    }

    public void bind(DeviceRegistrationListener deviceRegistrationListener) {
        registrationFlowLock("bind");
        this.deviceRegistrationListener = deviceRegistrationListener;
        DeviceState deviceState = this.state;
        if (deviceState != DeviceState.NOT_CONNECTED && deviceState != DeviceState.DISCONNECTING && deviceState != DeviceState.DISCONNECTED) {
            registrationFlowUnlock("bind");
            return;
        }
        reset();
        setState(DeviceState.REGISTERING);
        startDeviceRegistrationHangingThread();
        registrationFlowUnlock("bind");
        connect();
        deviceRegistrationListener.onDeviceRegistering(this, true);
    }

    public byte[] buildCypher(byte[] bArr) {
        byte b2 = bArr[0];
        byte b3 = bArr[12];
        byte b4 = bArr[1];
        byte b5 = bArr[4];
        byte b6 = bArr[2];
        byte b7 = bArr[8];
        byte b8 = bArr[3];
        byte b9 = bArr[14];
        byte b10 = bArr[6];
        byte b11 = bArr[5];
        byte b12 = bArr[9];
        byte b13 = bArr[11];
        byte b14 = bArr[7];
        byte b15 = bArr[13];
        byte b16 = bArr[15];
        return new byte[]{(byte) (b2 ^ b3), (byte) (b4 ^ b5), (byte) (b6 ^ b7), (byte) (b8 ^ b9), (byte) (b5 ^ b10), (byte) (b11 ^ b12), (byte) (b10 ^ b13), (byte) (b14 ^ b9), (byte) (b7 ^ b12), (byte) (b12 ^ b15), (byte) (bArr[10] ^ b6), (byte) (b13 ^ b14), (byte) (b2 ^ b3), (byte) (b15 ^ b16), (byte) (b9 ^ b8), (byte) (b16 ^ b11)};
    }

    public void close() {
        connectionFlowLock("close");
        if (!BLEOK()) {
            connectionFlowUnlock("close");
            return;
        }
        killHardResetRetryThread();
        setState(DeviceState.DISCONNECTED);
        BluetoothGatt bluetoothGatt = this.gatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.close();
            this.gatt = null;
        }
        connectionFlowUnlock("close post closing");
    }

    public void connect() {
        connectionFlowLock("connect");
        if (this.bleDevicesManager.getPermissionsManager().f35969c == null) {
            connectionFlowUnlock("connect");
        } else if (this.device == null) {
            connectionFlowUnlock("connect");
        } else {
            setState(DeviceState.CONNECTING);
            connectionFlowUnlock("connect post connection");
        }
    }

    public void connectionHardReset(boolean z) {
        connectionFlowLock("connectionHardReset");
        if (!BLEOK()) {
            connectionFlowUnlock("connectionHardReset");
            return;
        }
        DeviceState deviceState = this.state;
        DeviceState deviceState2 = DeviceState.HARD_RESET_AWAITING_RECONNECTION;
        if (deviceState != deviceState2) {
            setState(deviceState2);
            BluetoothGatt bluetoothGatt = this.gatt;
            if (bluetoothGatt != null) {
                bluetoothGatt.close();
            }
            if (z) {
                new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.4
                    @Override // java.lang.Runnable
                    public void run() {
                        BLEDevice.this.onHardReset();
                    }
                }).start();
            }
        }
        this.packetId = (byte) 0;
        connectionFlowUnlock("connectionHardReset post closing");
    }

    public boolean equals(Object obj) {
        if (obj != null && BLEDevice.class.isAssignableFrom(obj.getClass())) {
            return this.deviceId.equals(((BLEDevice) obj).deviceId);
        }
        return false;
    }

    public BLEDeviceFirmwareChecksums getBleDeviceFirmwareChecksums() {
        return this.bleDeviceFirmwareChecksums;
    }

    public DeviceStateBundle getBleDeviceState() {
        registrationFlowLock("setBleDeviceStateListener");
        try {
            return new DeviceStateBundle(this, this.state, this.batteryLevel, this.isPlugged);
        } finally {
            registrationFlowUnlock("setBleDeviceStateListener");
        }
    }

    public BluetoothDevice getBluetoothDevice() {
        return this.device;
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public DeviceId getDeviceId() {
        return this.deviceId;
    }

    public FeatureStore getFeatureStore() {
        return this.featureStore;
    }

    public String getMac() {
        return this.mac;
    }

    public DeviceMode getMode() {
        return this.mode;
    }

    public String getName() {
        return this.name;
    }

    public String getSerialNumber() {
        return this.deviceId.getSerialNumber();
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public String getShortId() {
        return this.deviceId + "/" + this.mac;
    }

    public DeviceState getState() {
        return this.state;
    }

    public void handleDescriptorWrite(BluetoothGattDescriptor bluetoothGattDescriptor, int i2) {
        getShortId();
        if (bluetoothGattDescriptor.equals(this.readCharac.getDescriptor(Properties.q)) && i2 == 0) {
            this.descriptorWritten = true;
            connectionFlowLock(getShortId() + " Descriptor written");
            setState(DeviceState.READY);
            connectionFlowUnlock(getShortId() + " Descriptor written");
            onBLEReady();
        }
    }

    public void handleDeviceCharacteristicChanged(byte[] bArr, int i2) {
        newCharacteristic(bArr, i2);
    }

    public void handleServicesDiscovery(final BluetoothGatt bluetoothGatt) {
        if (setWriteCharacteristic() && setReadCharacteristic()) {
            final BluetoothGattDescriptor descriptor = this.readCharac.getDescriptor(Properties.q);
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            bluetoothGatt.writeDescriptor(descriptor);
            this.characWriteRetry = 0;
            new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.6
                @Override // java.lang.Runnable
                public void run() {
                    while (true) {
                        try {
                            Thread.sleep(200L);
                        } catch (InterruptedException e2) {
                            e2.getMessage();
                            Thread.currentThread().interrupt();
                        }
                        if (BLEDevice.this.descriptorWritten || BLEDevice.this.characWriteRetry >= 10) {
                            return;
                        }
                        bluetoothGatt.writeDescriptor(descriptor);
                        BLEDevice.this.characWriteRetry++;
                    }
                }
            }).start();
        }
    }

    public boolean hasConnected() {
        registrationFlowLock("hasConnected");
        try {
            DeviceState deviceState = this.state;
            return (deviceState == DeviceState.NOT_CONNECTED || deviceState == DeviceState.DISCONNECTING || deviceState == DeviceState.DISCONNECTED) ? false : true;
        } finally {
            registrationFlowUnlock("hasConnected");
        }
    }

    public boolean hasShutDown() {
        registrationFlowLock("hasShutDown");
        try {
            return this.hasShutdown;
        } finally {
            registrationFlowUnlock("hasShutDown");
        }
    }

    public int hashCode() {
        return this.deviceId.hashCode();
    }

    public boolean isHanging() {
        registrationFlowLock("isHanging");
        try {
            return this.isHanging;
        } finally {
            registrationFlowUnlock("isHanging");
        }
    }

    public boolean isInBootloader() {
        registrationFlowLock("isInBootloader");
        try {
            return this.state == DeviceState.IN_BOOTLOADER;
        } finally {
            registrationFlowUnlock("isInBootloader");
        }
    }

    public boolean isRegistered() {
        registrationFlowLock("isRegistered");
        try {
            return this.state == DeviceState.REGISTERED;
        } finally {
            registrationFlowUnlock("isRegistered");
        }
    }

    public boolean isRegisteredRequiresUpdate() {
        registrationFlowLock("isRegisteredRequiresUpdated");
        try {
            return this.state == DeviceState.REGISTERED_REQUIRES_UPDATE;
        } finally {
            registrationFlowUnlock("isRegisteredRequiresUpdate");
        }
    }

    public boolean isUp() {
        registrationFlowLock("isUp");
        try {
            DeviceState deviceState = this.state;
            return deviceState == DeviceState.REGISTERED || deviceState == DeviceState.IN_BOOTLOADER || deviceState == DeviceState.REGISTERED_REQUIRES_UPDATE;
        } finally {
            registrationFlowUnlock("isUp");
        }
    }

    public boolean isUpdating() {
        return this.isUpdating;
    }

    public void killHardResetRetryThread() {
        Thread thread = this.hardResetRetryThread;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.hardResetRetryThread.interrupt();
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public void onInternetTimeAvailable(SetEpochListener setEpochListener) {
        registrationFlowLock("onInternetTimeAvailable");
        if (this.state != DeviceState.REGISTERED) {
            registrationFlowUnlock("onInternetTimeAvailable");
        } else {
            registrationFlowUnlock("onInternetTimeAvailable");
            new SetEpoch(setEpochListener, this).execute();
        }
    }

    public DeviceMessage pollMessage() {
        return this.broker.poll();
    }

    public boolean putMessage(PriorityMode priorityMode, DeviceMessage deviceMessage) {
        boolean zPut = this.broker.put(priorityMode, deviceMessage);
        if (zPut) {
            this.bleDevicesManager.notifyConsumer();
        }
        return zPut;
    }

    public void registrationFlowLock(String str) {
        this.deviceRegistrationLock.lock();
    }

    public void registrationFlowUnlock(String str) {
        this.deviceRegistrationLock.unlock();
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public boolean requiresUpdate() {
        registrationFlowLock("requiresUpdate");
        try {
            return this.requiresUpdate;
        } finally {
            registrationFlowUnlock("requiresUpdate");
        }
    }

    public void resetMessageStack() {
        this.broker.clear();
    }

    public boolean sendPacket(byte[] bArr) {
        int length = bArr.length + 1;
        byte[] bArr2 = new byte[length];
        byte b2 = this.packetId;
        this.packetId = (byte) (b2 + 1);
        bArr2[0] = b2;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        connectionFlowLock("sendPacket");
        if (!DeviceState.READY.equals(this.state) && !DeviceState.REGISTERED.equals(this.state) && !DeviceState.REGISTERED_REQUIRES_UPDATE.equals(this.state)) {
            connectionFlowUnlock("sendPacket dropped");
            return false;
        }
        this.writeCharac.setValue(bArr2);
        boolean zWriteCharacteristic = this.gatt.writeCharacteristic(this.writeCharac);
        connectionFlowUnlock("sendPacket ready");
        IdPrinter idPrinter = this.idPrinter;
        if (zWriteCharacteristic) {
            idPrinter.getShortId();
            ByteUtils.g(length, bArr2, true);
            this.failedPacketStreak = 0;
            return zWriteCharacteristic;
        }
        idPrinter.getShortId();
        ByteUtils.g(length, bArr2, true);
        int i2 = this.failedPacketStreak + 1;
        this.failedPacketStreak = i2;
        if (i2 > 80) {
            this.idPrinter.getShortId();
            this.failedPacketStreak = 0;
            connectionHardReset(true);
        }
        return zWriteCharacteristic;
    }

    public void sendUnlock() {
        putMessage(MessageBuilder.d(buildCypher(this.deviceId.toByteArray()), this.bleDevicesManager.getPairingId()));
    }

    public void setBluetoothDevice(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public void setBluetoothGatt(BluetoothGatt bluetoothGatt) {
        this.gatt = bluetoothGatt;
    }

    public void setDeviceRegistrationHangingDuration(int i2) {
        this.deviceRegistrationHangingDuration = i2;
    }

    public void setMode(DeviceMode deviceMode) {
        this.mode = deviceMode;
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public void setPriorityMode(PriorityMode priorityMode) {
        this.broker.setPriorityMode(priorityMode);
    }

    public void setState(DeviceState deviceState) {
        registrationFlowLock("setState");
        this.state = deviceState;
        registrationFlowUnlock("setState");
        notifyFeaturesOfStateChange(BLEDeviceStateListener.StateChangeType.BLE_DEVICE_STATE);
    }

    public void setUpdating(boolean z) {
        registrationFlowLock("setUpdating");
        boolean z2 = this.isUpdating;
        this.isUpdating = z;
        registrationFlowUnlock("setUpdating");
        if (z2 && this.isHanging) {
            handleDeviceHangingState();
        }
    }

    public void startHardResetRetryThread() {
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevice.5
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(2000L);
                        BLEDevice.this.connectionFlowLock("startHardResetRetryThread");
                        DeviceState deviceState = BLEDevice.this.state;
                        DeviceState deviceState2 = DeviceState.HARD_RESET_AWAITING_RECONNECTION;
                        BLEDevice bLEDevice = BLEDevice.this;
                        if (deviceState != deviceState2) {
                            bLEDevice.connectionFlowUnlock("startHardResetRetryThread break");
                            return;
                        } else {
                            bLEDevice.bleDevicesManager.connectionHardReset(bLEDevice, false);
                            BLEDevice.this.connectionFlowUnlock("startHardResetRetryThread prior to connectionHardReset");
                        }
                    } catch (InterruptedException e2) {
                        e2.getMessage();
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        });
        this.hardResetRetryThread = thread;
        thread.start();
    }

    public String toString() {
        return this.name + " " + this.deviceId + " " + this.mac;
    }

    public void unbind() {
        registrationFlowLock("unbind");
        if (!hasConnected()) {
            getShortId();
            registrationFlowUnlock("unbind");
            return;
        }
        setState(DeviceState.DISCONNECTING);
        BluetoothGatt bluetoothGatt = this.gatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
        }
        killUnlockRetryThread();
        killDeviceRegistrationHangingThread();
        reset();
        FeatureStore featureStore = this.featureStore;
        synchronized (featureStore.f35978a) {
            try {
                int size = featureStore.f35978a.size();
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = featureStore.f35978a;
                    if (i2 < size) {
                        ((Feature) arrayList.get(i2)).kill(true);
                        i2++;
                    } else {
                        arrayList.clear();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        registrationFlowUnlock("unbind");
    }

    public void unexpectedDisconnection() {
        registrationFlowLock("unexpectedDisconnection");
        getShortId();
        if (this.state == DeviceState.REGISTERING) {
            killUnlockRetryThread();
            registrationFlowUnlock("unexpectedDisconnection");
        } else {
            if (!this.hasShutdown) {
                startDeviceRegistrationHangingThread();
            }
            registrationFlowUnlock("unexpectedDisconnection");
            this.deviceRegistrationListener.onDeviceRegistering(this, false);
        }
    }

    @Override // com.lightup.sdk.device.model.device.Device
    public boolean update(FirmwareUpdateListener firmwareUpdateListener) {
        registrationFlowLock("update");
        try {
            if (!this.requiresUpdate || !this.updatePossible) {
                return false;
            }
            registrationFlowUnlock("update");
            try {
                this.bleDevicesManager.getFirmwareManager(this.deviceId).e(this.bleDevicesManager, this, firmwareUpdateListener, 256, 10000).execute();
                return true;
            } catch (UnsupportedDeviceException e2) {
                az.s("this should not happen", e2);
                return false;
            }
        } finally {
            registrationFlowUnlock("update");
        }
    }

    public boolean putMessage(DeviceMessage deviceMessage) {
        return putMessage(PriorityMode.NORMAL, deviceMessage);
    }
}

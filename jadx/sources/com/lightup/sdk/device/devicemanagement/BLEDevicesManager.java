package com.lightup.sdk.device.devicemanagement;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.content.Context;
import android.provider.Settings;
import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.ble.scanner.BLEScanner;
import com.lightup.sdk.device.ble.scanner.MBLEScanner;
import com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener;
import com.lightup.sdk.device.ble.scanner.listeners.ScanListener;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.enums.UpdateError;
import com.lightup.sdk.device.features.process.ackable.AckableFeature;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateError;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.messages.InternalPowerOfReason;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.DeviceRegistrationListener;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.lightup.sdk.device.properties.Properties;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.communication.Scheduling;
import com.lightup.sdk.device.utils.firmware.FirmwareManager;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import com.lightup.sdk.device.utils.networktime.InternetTimeReaderListener;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLEDevicesManager<D extends BLEDevice> extends BluetoothGattCallback implements InternetTimeReaderListener, ScanListener, DeviceDiscoveryListener<D>, DeviceRegistrationListener<D> {
    protected static final boolean DEBUG = false;
    private static final boolean DEBUG_LOCKING = false;
    protected static final String TAG = "BLEDevicesManager";
    protected AtomicBoolean bleDeviceUpdateOngoing;
    private Thread consumer;
    private final Lock consumerLock;
    protected final Context context;
    protected DeviceConnectionProcessListener deviceConnectionProcessListener;
    private DeviceDiscoveryListener<D> deviceDiscoveryListener;
    protected DeviceScanProcessListener<D> deviceScanProcessListener;
    FirmwareManager firmwareManager;
    private int inactivityStreak;
    private boolean isAdminMode;
    private boolean isModePing;
    private final Condition messageNotification;
    private final byte[] pairingId;
    protected PermissionsManager permissionsManager;
    protected Thread scanTimeoutThread;
    protected BLEScanner scanner;
    private final ReentrantLock connectionLock = new ReentrantLock();
    private final ReentrantLock deviceRegistrationLock = new ReentrantLock();
    private boolean bluetoothAvailable = true;
    private byte[] patternId = null;
    final Map<String, D> knownBLEDevices = new HashMap();
    final Map<String, D> connectedDevices = new ConcurrentHashMap();
    private int connectionPoolSize = 10;
    private final Map<DeviceId, byte[]> remainder = new HashMap();
    int consumingRate = 20;
    int overclockConsumingRateRequests = 0;
    final Object overclockConsumingRateLock = new Object();

    public BLEDevicesManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) throws ScannerException {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.consumerLock = reentrantLock;
        this.messageNotification = reentrantLock.newCondition();
        this.inactivityStreak = 0;
        this.isAdminMode = false;
        this.isModePing = false;
        this.bleDeviceUpdateOngoing = new AtomicBoolean(false);
        this.context = context;
        this.permissionsManager = permissionsManager;
        defineScanFilterPattern();
        this.scanner = new MBLEScanner(permissionsManager, this.patternId);
        permissionsManager.f35967a.registerConnectionForBluetoothAvailabilityChange(this);
        Properties.SMARTPHONE_ID = Settings.Secure.getString(context.getContentResolver(), "android_id");
        context.getSharedPreferences("LUCIE_PREFS", 0);
        CRC32 crc32 = new CRC32();
        crc32.update(Properties.SMARTPHONE_ID.getBytes(), 0, Properties.SMARTPHONE_ID.length());
        int value = (int) crc32.getValue();
        byte[] bArr = {(byte) ((value >> 8) & 255), (byte) (value & 255)};
        if (Arrays.equals(bArr, Properties.d) || Arrays.equals(bArr, Properties.f36028e) || Arrays.equals(bArr, Properties.f36029f) || Arrays.equals(bArr, Properties.g)) {
            this.pairingId = Properties.f36027c;
        } else {
            this.pairingId = bArr;
        }
        internetTimeReader.setInternetTimeReaderListener(this);
        startDataTransfer();
    }

    private void bindBLE(D d, DeviceRegistrationListener deviceRegistrationListener) {
        registrationFlowLock("bind");
        D d2 = this.knownBLEDevices.get(d.getMac());
        d2.bind(deviceRegistrationListener);
        try {
            d2.setBluetoothGatt(d2.getBluetoothDevice().connectGatt(getPermissionsManager(), false, this, 2));
        } catch (Exception unused) {
        } finally {
            registrationFlowUnlock("bind");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionFlowLock(String str) {
        this.connectionLock.lock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionFlowUnlock(String str) {
        this.connectionLock.unlock();
    }

    private static byte[] fillPacket(byte[] bArr, byte[] bArr2, int i2) {
        int length = bArr.length - i2;
        int length2 = bArr2.length;
        if (length2 > length) {
            System.arraycopy(bArr2, 0, bArr, i2, length);
            return getRemainder(bArr2, length);
        }
        System.arraycopy(bArr2, 0, bArr, i2, length2);
        return null;
    }

    private byte[] getMessage(BLEDevice bLEDevice) {
        DeviceMessage deviceMessagePollMessage;
        if (bLEDevice == null || (deviceMessagePollMessage = bLEDevice.pollMessage()) == null) {
            return null;
        }
        if (bLEDevice.isRegistered() || MessageInfo.e(deviceMessagePollMessage.data)) {
            return DeviceMessage.getProcessedData(deviceMessagePollMessage);
        }
        return null;
    }

    private static byte[] getRemainder(byte[] bArr, int i2) {
        int length = bArr.length - i2;
        if (length <= 0) {
            return null;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i2, bArr2, 0, length);
        return bArr2;
    }

    private int handleNextChunk(byte[] bArr, int i2, byte[] bArr2, DeviceId deviceId) {
        int length = bArr.length;
        byte[] bArrFillPacket = fillPacket(bArr2, bArr, i2);
        int length2 = bArrFillPacket != null ? (length - bArrFillPacket.length) + i2 : length + i2;
        this.remainder.put(deviceId, bArrFillPacket);
        return length2;
    }

    private void registrationFlowLock(String str) {
        this.deviceRegistrationLock.lock();
    }

    private void registrationFlowUnlock(String str) {
        this.deviceRegistrationLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[PHI: r3 r7
      0x0043: PHI (r3v6 int) = (r3v5 int), (r3v8 int) binds: [B:13:0x0039, B:15:0x0040] A[DONT_GENERATE, DONT_INLINE]
      0x0043: PHI (r7v3 boolean) = (r7v2 boolean), (r7v5 boolean) binds: [B:13:0x0039, B:15:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean sendMessage(BLEDevice bLEDevice) {
        byte[] message;
        int iHandleNextChunk;
        boolean z;
        DeviceId deviceId = bLEDevice.getDeviceId();
        byte[] bArr = new byte[19];
        byte[] bArr2 = this.remainder.get(deviceId);
        if (bArr2 != null) {
            bArr[0] = -1;
            iHandleNextChunk = handleNextChunk(bArr2, 1, bArr, deviceId);
            if (iHandleNextChunk == 19) {
                return sendMessage(bLEDevice, bArr);
            }
            message = getMessage(bLEDevice);
            if (message != null) {
                bArr[0] = (byte) (ByteUtils.d(iHandleNextChunk)[3] - 129);
            }
            z = false;
        } else {
            message = null;
            iHandleNextChunk = 0;
            z = true;
        }
        do {
            if (message != null) {
                iHandleNextChunk = handleNextChunk(message, iHandleNextChunk, bArr, deviceId);
                z = false;
                if (iHandleNextChunk == 19) {
                    break;
                }
                message = getMessage(bLEDevice);
            } else {
                message = getMessage(bLEDevice);
            }
        } while (message != null);
        return !z && sendMessage(bLEDevice, Arrays.copyOf(bArr, iHandleNextChunk));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDataTransfer() {
        Thread thread = new Thread() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                boolean z;
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (!Thread.currentThread().isInterrupted()) {
                    BLEDevicesManager bLEDevicesManager = BLEDevicesManager.this;
                    jCurrentTimeMillis += (long) bLEDevicesManager.consumingRate;
                    bLEDevicesManager.consumerLock.lock();
                    synchronized (BLEDevicesManager.this.knownBLEDevices) {
                        try {
                            z = false;
                            for (D d : BLEDevicesManager.this.knownBLEDevices.values()) {
                                if (d.hasConnected() && BLEDevicesManager.this.sendMessage(d)) {
                                    z = true;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (!z) {
                        BLEDevicesManager bLEDevicesManager2 = BLEDevicesManager.this;
                        int i2 = bLEDevicesManager2.inactivityStreak;
                        bLEDevicesManager2.inactivityStreak = i2 + 1;
                        if (i2 >= 2) {
                            try {
                                try {
                                    BLEDevicesManager.this.messageNotification.await();
                                    BLEDevicesManager.this.consumerLock.unlock();
                                    jCurrentTimeMillis = System.currentTimeMillis();
                                } catch (InterruptedException unused) {
                                    Thread.currentThread().interrupt();
                                    BLEDevicesManager.this.consumerLock.unlock();
                                    return;
                                }
                            } catch (Throwable th2) {
                                BLEDevicesManager.this.consumerLock.unlock();
                                throw th2;
                            }
                        }
                    }
                    BLEDevicesManager.this.consumerLock.unlock();
                    if (z) {
                        BLEDevicesManager.this.inactivityStreak = 0;
                    }
                    long jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis();
                    if (jCurrentTimeMillis2 > 0) {
                        try {
                            Thread.sleep(jCurrentTimeMillis2);
                        } catch (InterruptedException unused2) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
        };
        this.consumer = thread;
        thread.start();
    }

    public boolean additionalCheckOnDiscoveredDevice(byte[] bArr) {
        return true;
    }

    public abstract boolean canCreateBLEDevice(DeviceId deviceId, String str, String str2, byte[] bArr);

    public boolean cancelDiscovery() {
        boolean zB;
        BLEScanner bLEScanner = this.scanner;
        synchronized (bLEScanner) {
            zB = bLEScanner.b(true);
        }
        return zB;
    }

    public void clearConnections() {
        synchronized (this.connectedDevices) {
            try {
                Iterator<D> it = this.connectedDevices.values().iterator();
                while (it.hasNext()) {
                    it.next().unbind();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void connectDevice(D d) {
        bindBLE(d, this);
    }

    public void connectionHardReset(final BLEDevice bLEDevice, boolean z) {
        bLEDevice.connectionHardReset(z);
        new Timer().schedule(new TimerTask() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.7
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                BLEDevicesManager.this.connectionFlowLock("connectionHardReset prior to connecting");
                if (bLEDevice.getState() != DeviceState.HARD_RESET_AWAITING_RECONNECTION && bLEDevice.getState() != DeviceState.REGISTERING) {
                    bLEDevice.getState();
                    BLEDevicesManager.this.connectionFlowUnlock("connectionHardReset error (2)");
                    return;
                }
                if (BLEDevicesManager.this.bluetoothAvailable) {
                    try {
                        bLEDevice.setBluetoothDevice(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(bLEDevice.getMac()));
                        bLEDevice.setBluetoothGatt(bLEDevice.getBluetoothDevice().connectGatt(BLEDevicesManager.this.getPermissionsManager(), false, BLEDevicesManager.this, 2));
                    } catch (Exception unused) {
                        String str = BLEDevicesManager.TAG;
                        bLEDevice.getShortId();
                    }
                }
                BLEDevicesManager.this.connectionFlowUnlock("connectionHardReset post connecting");
            }
        }, 300L);
    }

    public abstract D createBLEDevice(DeviceId deviceId, String str, String str2, byte[] bArr);

    public abstract void defineScanFilterPattern();

    public void destroy() {
        Thread thread = this.consumer;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.consumer.interrupt();
    }

    public void disconnect(D d) {
        if (d != null) {
            d.unbind();
            this.connectedDevices.remove(d.getMac());
        }
    }

    public void discover(int i2, DeviceDiscoveryListener<D> deviceDiscoveryListener) {
        boolean z;
        BLEScanner bLEScanner = this.scanner;
        synchronized (bLEScanner) {
            z = bLEScanner.f35971b;
        }
        if (z) {
            cancelDiscovery();
        }
        this.deviceDiscoveryListener = deviceDiscoveryListener;
        this.scanner.a(i2, this);
    }

    public D findKnownDeviceByDeviceId(DeviceId deviceId) {
        for (D d : this.knownBLEDevices.values()) {
            if (d.getDeviceId() == deviceId) {
                return d;
            }
        }
        return null;
    }

    public String getBoardVersion(D d) {
        return isConnected(d) ? "HW ".concat(String.format("%02x", Byte.valueOf(d.getDeviceId().getHardwareVersion()))) : "HW --";
    }

    public CallStatus getCallStatus(D d) {
        return isReady(d) ? CallStatus.INITIATED : CallStatus.NO_DEVICE_CONNECTED;
    }

    public abstract DeviceConnectionProcessListener<D> getDeviceConnectionProcessHandler(D d);

    public DeviceConnectionProcessListener getDeviceConnectionProcessListener() {
        return this.deviceConnectionProcessListener;
    }

    public abstract FirmwareManager getFirmwareManager(DeviceId deviceId);

    public String getFirmwareVersion(D d) {
        if (!isConnected(d)) {
            return "FW --";
        }
        try {
            DeviceId deviceId = d.getDeviceId();
            return "FW " + getFirmwareManager(deviceId).c(deviceId).f36039a;
        } catch (UnsupportedDeviceException unused) {
            return "FW --";
        }
    }

    public boolean getIsAdminMode() {
        return this.isAdminMode;
    }

    public boolean getIsModePing() {
        return this.isModePing;
    }

    public byte[] getPairingId() {
        return this.pairingId;
    }

    public PermissionsManager getPermissionsManager() {
        return this.permissionsManager;
    }

    public String getSerialNumber(D d) {
        if (!isConnected(d)) {
            return "SN --";
        }
        return "SN " + d.getSerialNumber();
    }

    public void handleDeviceDiscovery(DeviceId deviceId, String str, String str2, byte[] bArr) {
        synchronized (this.knownBLEDevices) {
            try {
                if (this.knownBLEDevices.get(str2) == null) {
                    BLEDevice bLEDeviceCreateBLEDevice = createBLEDevice(deviceId, str, str2, bArr);
                    this.knownBLEDevices.put(str2, (D) bLEDeviceCreateBLEDevice);
                    this.deviceDiscoveryListener.onDiscoveredDevice(bLEDeviceCreateBLEDevice);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isConnected(D d) {
        if (d != null) {
            return d.getState() == DeviceState.REGISTERED || d.getState() == DeviceState.REGISTERED_REQUIRES_UPDATE;
        }
        return false;
    }

    public boolean isConnectionPoolFull(D d) {
        if (this.connectedDevices.size() >= this.connectionPoolSize) {
            return true;
        }
        this.connectedDevices.put(d.getMac(), d);
        return false;
    }

    public boolean isOpenPairing(byte[] bArr) {
        return Arrays.equals(bArr, getPairingId()) || Arrays.equals(bArr, Properties.d);
    }

    public boolean isReady(D d) {
        return d != null && d.getState() == DeviceState.REGISTERED;
    }

    public boolean isScanRunning() {
        boolean z;
        BLEScanner bLEScanner = this.scanner;
        synchronized (bLEScanner) {
            z = bLEScanner.f35971b;
        }
        return z;
    }

    public synchronized void killScanTimeout() {
        Thread thread = this.scanTimeoutThread;
        if (thread != null && !thread.isInterrupted()) {
            this.scanTimeoutThread.interrupt();
        }
    }

    public void launchPingFeature(final D d, final PingDeviceListener pingDeviceListener) {
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_PING;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        new AckableFeature((BLEDevice) d, new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.2
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError deviceError) {
                String str = BLEDevicesManager.TAG;
                deviceError.toString();
                pingDeviceListener.onDeviceError(DeviceConnectionError.CONNECTION_LOST);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
                String str = BLEDevicesManager.TAG;
                BLEDevicesManager.this.killScanTimeout();
                BLEDevicesManager.this.cancelDiscovery();
                BLEDevicesManager.this.disconnect(d);
                BLEDevicesManager.this.isModePing = false;
                pingDeviceListener.onDone();
            }
        }, false).execute();
    }

    public void notifyConsumer() {
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.6
            @Override // java.lang.Runnable
            public void run() {
                if (BLEDevicesManager.this.consumer == null || !BLEDevicesManager.this.consumer.isAlive()) {
                    BLEDevicesManager.this.startDataTransfer();
                }
                BLEDevicesManager.this.consumerLock.lock();
                BLEDevicesManager.this.messageNotification.signal();
                BLEDevicesManager.this.consumerLock.unlock();
            }
        }).start();
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        D d = this.knownBLEDevices.get(bluetoothGatt.getDevice().getAddress());
        if (d == null) {
            d = this.connectedDevices.get(bluetoothGatt.getDevice().getAddress());
        }
        if (d == null) {
            bluetoothGatt.close();
        } else {
            d.setBluetoothGatt(bluetoothGatt);
            d.handleDeviceCharacteristicChanged(bluetoothGattCharacteristic.getValue(), Scheduling.a());
        }
    }

    public abstract void onConnected(D d, DeviceId deviceId, boolean z);

    @Override // android.bluetooth.BluetoothGattCallback
    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i2, int i3) {
        D d = this.knownBLEDevices.get(bluetoothGatt.getDevice().getAddress());
        if (d == null) {
            bluetoothGatt.getDevice().getAddress();
            this.connectedDevices.remove(bluetoothGatt.getDevice().getAddress());
            bluetoothGatt.close();
            return;
        }
        connectionFlowLock("onConnectionStateChange");
        if (i3 == 2) {
            d.killHardResetRetryThread();
            if (i2 == 133) {
                connectionHardReset(d, true);
                connectionFlowUnlock("onConnectionStateChange status == 133");
                return;
            }
            DeviceState state = d.getState();
            DeviceState deviceState = DeviceState.CONNECTED;
            if (state != deviceState) {
                d.setState(deviceState);
                bluetoothGatt.discoverServices();
            } else {
                d.getShortId();
                Objects.toString(d.getState());
            }
            connectionFlowUnlock(d.getShortId() + " onConnectionStateChange status != 133");
            return;
        }
        if (i3 != 0) {
            connectionFlowUnlock("onConnectionStateChange");
            return;
        }
        if (i2 == 257) {
            bluetoothGatt.close();
            d.setState(DeviceState.DISCONNECTED);
        }
        if (d.getState() == DeviceState.DISCONNECTING) {
            d.close();
            connectionFlowUnlock("onConnectionStateChange state == State.DISCONNECTED");
            onExpectedlyDisconnect(d);
            return;
        }
        DeviceState state2 = d.getState();
        DeviceState deviceState2 = DeviceState.DISCONNECTED_BROKEN;
        if (state2 == deviceState2) {
            connectionFlowUnlock(d.getShortId() + " onConnectionStateChange state == State.DISCONNECTED_BROKEN");
            return;
        }
        if (d.getState() == DeviceState.HARD_RESET_AWAITING_RECONNECTION) {
            bluetoothGatt.close();
            connectionHardReset(d, false);
            connectionFlowUnlock(d.getShortId() + " onConnectionStateChange state == State.HARD_RESET_AWAITING_RECONNECTION");
            return;
        }
        d.close();
        d.setState(deviceState2);
        connectionHardReset(d, false);
        connectionFlowUnlock(d.getShortId() + " onConnectionStateChange prior to onUnexpectedlyDisconnected");
        d.unexpectedDisconnection();
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i2) {
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i2);
        D d = this.knownBLEDevices.get(bluetoothGatt.getDevice().getAddress());
        if (d == null) {
            bluetoothGatt.close();
        } else {
            d.setBluetoothGatt(bluetoothGatt);
            d.handleDescriptorWrite(bluetoothGattDescriptor, i2);
        }
    }

    @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public boolean onDeviceInitiatedShutdown(final D d, InternalPowerOfReason internalPowerOfReason) {
        d.getShortId();
        Objects.toString(internalPowerOfReason);
        if (internalPowerOfReason != InternalPowerOfReason.UPDATING) {
            getDeviceConnectionProcessHandler(d).onDeviceShutDown(internalPowerOfReason.a());
            return true;
        }
        new Thread(new Runnable() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.3
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(1000L);
                    BLEDevicesManager.this.knownBLEDevices.put(d.getMac(), (D) d);
                    BLEDevicesManager.this.connectDevice(d);
                } catch (InterruptedException e2) {
                    String str = BLEDevicesManager.TAG;
                    e2.getMessage();
                    Thread.currentThread().interrupt();
                }
            }
        }).start();
        getDeviceConnectionProcessHandler(d).onReconnecting();
        return true;
    }

    @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public void onDeviceRegistered(D d, boolean z) {
        if (z) {
            d.setDeviceRegistrationHangingDuration(20000);
        }
        D d2 = this.knownBLEDevices.get(d.getMac());
        if (d2 != null) {
            if (isConnectionPoolFull(d2)) {
                d2.unbind();
            } else {
                onConnected(d2, d.getDeviceId(), !z);
                getDeviceConnectionProcessHandler(d).onConnected(d, !z);
            }
        }
        if (this.connectedDevices.size() >= this.connectionPoolSize) {
            cancelDiscovery();
        }
    }

    @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public void onDeviceRegistering(D d, boolean z) {
        if (z) {
            getDeviceConnectionProcessHandler(d).onConnecting();
        } else {
            this.connectedDevices.remove(d.getMac());
            getDeviceConnectionProcessHandler(d).onReconnecting();
        }
    }

    @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public boolean onDeviceRegistrationHanging(D d, boolean z) {
        this.connectedDevices.remove(d.getMac());
        onLostDevice(d);
        getDeviceConnectionProcessHandler(d).onLost();
        return true;
    }

    @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
    public void onDeviceRequiresUpdate(D d, boolean z) {
        D d2 = this.knownBLEDevices.get(d.getMac());
        if (d2 != null) {
            if (isConnectionPoolFull(d2)) {
                d2.unbind();
            } else {
                getDeviceConnectionProcessHandler(d2).onRequiresUpdate(d, z);
            }
        }
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.ScanListener
    public boolean onDiscoveredDevice(String str, String str2, byte[] bArr) {
        int i2;
        if (bArr.length == 62 && (i2 = Arrays.copyOfRange(bArr, 8, 9)[0] - 1) >= 0 && i2 < 4) {
            int i3 = Properties.f36032j[i2];
            int i4 = Properties.f36031i[i2];
            int i5 = Properties.f36033k[i2];
            int i6 = Properties.l[i2];
            int i7 = Properties.m[i2];
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i3, i3 + 2);
            byte[] bArr2 = {bArrCopyOfRange[0], bArrCopyOfRange[1], Arrays.copyOfRange(bArr, i4, i4 + 1)[0]};
            Arrays.copyOfRange(bArr, 5, 8);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i5, i5 + 2);
            byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr, i6, i6 + 8);
            byte[] bArrCopyOfRange4 = Arrays.copyOfRange(bArr, i7, i7 + 2);
            try {
                DeviceId deviceId = new DeviceId(bArrCopyOfRange3, bArr2, bArrCopyOfRange4, bArrCopyOfRange2);
                if (canCreateBLEDevice(deviceId, str, str2, bArr) && additionalCheckOnDiscoveredDevice(bArrCopyOfRange4)) {
                    FirmwareManager firmwareManager = getFirmwareManager(deviceId);
                    byte hardwareVersion = deviceId.getHardwareVersion();
                    HashMap map = firmwareManager.f36050c;
                    if (!map.containsKey(Byte.valueOf(hardwareVersion))) {
                        firmwareManager.a(hardwareVersion);
                    }
                    if (map.get(Byte.valueOf(hardwareVersion)) != null) {
                        if (!this.isAdminMode && !isOpenPairing(bArrCopyOfRange2)) {
                            return false;
                        }
                        handleDeviceDiscovery(deviceId, str, str2, bArr);
                        return true;
                    }
                    deviceId.toString();
                }
            } catch (DeviceId.WrongDeviceIdFormat unused) {
            }
        }
        return true;
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveryEnd(boolean z) {
        DeviceScanProcessListener<D> deviceScanProcessListener = this.deviceScanProcessListener;
        if (deviceScanProcessListener != null) {
            deviceScanProcessListener.onScanEnd(z);
        }
    }

    public abstract void onExpectedlyDisconnect(D d);

    @Override // com.lightup.sdk.device.utils.networktime.InternetTimeReaderListener
    public void onInternetTimeAvailable() {
    }

    public abstract void onLostDevice(D d);

    public void onNewBluetoothState(int i2) {
        if (i2 == 10) {
            this.bluetoothAvailable = false;
        } else if (i2 == 12) {
            this.bluetoothAvailable = true;
        }
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.ScanListener
    public void onScanEnd(boolean z) {
        this.deviceDiscoveryListener.onDiscoveryEnd(z);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i2) {
        D d = this.knownBLEDevices.get(bluetoothGatt.getDevice().getAddress());
        connectionFlowLock("onServicesDiscovered");
        if (d == null) {
            bluetoothGatt.close();
            return;
        }
        d.setBluetoothGatt(bluetoothGatt);
        if (d.getState() == DeviceState.DISCONNECTED || d.getState() == DeviceState.DISCONNECTED_BROKEN) {
            connectionFlowUnlock("onConnectionStateChange prior to connectionHardReset");
            return;
        }
        if (i2 == 0) {
            d.handleServicesDiscovery(bluetoothGatt);
        } else {
            d.getShortId();
            d.setState(DeviceState.ERROR);
            d.killHardResetRetryThread();
            connectionHardReset(d, false);
            d.startHardResetRetryThread();
        }
        connectionFlowUnlock("onConnectionStateChange prior to connectionHardReset");
    }

    public CallStatus pingDevice(D d, final PingDeviceListener pingDeviceListener) {
        this.isModePing = true;
        bindBLE(d, new DeviceRegistrationListener<D>() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.1
            @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
            public boolean onDeviceInitiatedShutdown(D d2, InternalPowerOfReason internalPowerOfReason) {
                pingDeviceListener.onDeviceError(DeviceConnectionError.CONNECTION_LOST);
                return false;
            }

            @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
            public void onDeviceRegistered(D d2, boolean z) {
                BLEDevicesManager.this.launchPingFeature(d2, pingDeviceListener);
            }

            @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
            public void onDeviceRegistering(D d2, boolean z) {
            }

            @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
            public boolean onDeviceRegistrationHanging(D d2, boolean z) {
                pingDeviceListener.onDeviceError(DeviceConnectionError.DEVICE_NOT_FOUND);
                return false;
            }

            @Override // com.lightup.sdk.device.model.device.DeviceRegistrationListener
            public void onDeviceRequiresUpdate(D d2, boolean z) {
                BLEDevicesManager.this.launchPingFeature(d2, pingDeviceListener);
            }
        });
        return CallStatus.INITIATED;
    }

    public void requestBleTransmissionRateDiminution() {
        synchronized (this.overclockConsumingRateLock) {
            try {
                int i2 = this.overclockConsumingRateRequests + 1;
                this.overclockConsumingRateRequests = i2;
                if (i2 == 1) {
                    this.consumingRate = 40;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void requestBleTransmissionRateOverclock() {
        synchronized (this.overclockConsumingRateLock) {
            try {
                int i2 = this.overclockConsumingRateRequests + 1;
                this.overclockConsumingRateRequests = i2;
                if (i2 == 1) {
                    this.consumingRate = Properties.f36025a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void requestBleTransmissionRateReinstatement() {
        synchronized (this.overclockConsumingRateLock) {
            try {
                int i2 = this.overclockConsumingRateRequests - 1;
                this.overclockConsumingRateRequests = i2;
                if (i2 <= 0) {
                    this.overclockConsumingRateRequests = 0;
                    this.consumingRate = 20;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reset() {
        clearConnections();
    }

    public void setConnectionPoolSize(int i2) {
        this.connectionPoolSize = i2;
    }

    public void setIsAdminMode(boolean z) {
        this.isAdminMode = z;
    }

    public void setIsModePing(boolean z) {
        this.isModePing = z;
    }

    public void setPatternId(byte[] bArr) {
        this.patternId = bArr;
    }

    public synchronized CallStatus startScanProcess(DeviceScanProcessListener<D> deviceScanProcessListener) {
        reset();
        this.knownBLEDevices.clear();
        this.deviceScanProcessListener = deviceScanProcessListener;
        return startScanProcess();
    }

    public synchronized void stopDeviceConnectionProcess() {
        killScanTimeout();
        cancelDiscovery();
        reset();
    }

    public CallStatus updateDevice(D d, final UpdateDeviceListener updateDeviceListener) {
        d.getShortId();
        if (isConnected(d)) {
            if (this.bleDeviceUpdateOngoing.getAndSet(true)) {
                return CallStatus.PROCESS_ALREADY_RUNNING;
            }
            try {
                if (!d.update(new FirmwareUpdateListener() { // from class: com.lightup.sdk.device.devicemanagement.BLEDevicesManager.4
                    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
                    public void onCompleted() {
                        BLEDevicesManager.this.bleDeviceUpdateOngoing.set(false);
                        updateDeviceListener.onDone();
                    }

                    @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
                    public void onError(FirmwareUpdateError firmwareUpdateError) {
                        BLEDevicesManager.this.bleDeviceUpdateOngoing.set(false);
                        FirmwareUpdateError firmwareUpdateError2 = FirmwareUpdateError.CONNECTION_LOST;
                        UpdateDeviceListener updateDeviceListener2 = updateDeviceListener;
                        if (firmwareUpdateError == firmwareUpdateError2) {
                            updateDeviceListener2.onDeviceError(DeviceConnectionError.CONNECTION_LOST);
                        } else {
                            updateDeviceListener2.onUpdateError(UpdateError.fromFirmwareUpdateError(firmwareUpdateError));
                        }
                    }

                    @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
                    public void onLinkBackUp() {
                    }

                    @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
                    public void onLinkBroken() {
                    }

                    @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
                    public void onProgress(FirmwareUpdateListener.Progress progress) {
                        updateDeviceListener.onProgress(progress.getCurrentStep(), progress.getNumberOfSteps(), progress.getStepProgress());
                    }
                })) {
                    this.bleDeviceUpdateOngoing.set(false);
                    return CallStatus.ERROR;
                }
            } catch (IllegalStateException unused) {
                this.bleDeviceUpdateOngoing.set(false);
                return CallStatus.ERROR;
            }
        }
        return CallStatus.INITIATED;
    }

    public synchronized CallStatus startScanProcess() {
        discover(NBSApplicationStateMonitor.ALTERNATEPERIOD, this);
        return CallStatus.INITIATED;
    }

    private boolean sendMessage(BLEDevice bLEDevice, byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        bLEDevice.sendPacket(bArr);
        return true;
    }

    @Override // com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveredDevice(D d) {
        DeviceScanProcessListener<D> deviceScanProcessListener = this.deviceScanProcessListener;
        if (deviceScanProcessListener != null) {
            deviceScanProcessListener.onDeviceFound(d);
        }
    }
}

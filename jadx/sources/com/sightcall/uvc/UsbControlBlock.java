package com.sightcall.uvc;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.sightcall.pratik.logs.Logger;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
final class UsbControlBlock {
    private static final boolean DEBUG = false;
    private final int mBusNum;
    private UsbDeviceConnection mConnection;
    private final int mDevNum;
    private final SparseArray<SparseArray<UsbInterface>> mInterfaces = new SparseArray<>();
    private final WeakReference<UsbDevice> mWeakDevice;
    private final WeakReference<UsbManager> mWeakManager;

    public UsbControlBlock(UsbDevice usbDevice, UsbManager usbManager) {
        int i2;
        int i3;
        this.mWeakManager = new WeakReference<>(usbManager);
        this.mWeakDevice = new WeakReference<>(usbDevice);
        this.mConnection = usbManager.openDevice(usbDevice);
        String deviceName = usbDevice.getDeviceName();
        String[] strArrSplit = !TextUtils.isEmpty(deviceName) ? deviceName.split("/") : null;
        if (strArrSplit != null) {
            i2 = Integer.parseInt(strArrSplit[strArrSplit.length - 2]);
            i3 = Integer.parseInt(strArrSplit[strArrSplit.length - 1]);
        } else {
            i2 = 0;
            i3 = 0;
        }
        this.mBusNum = i2;
        this.mDevNum = i3;
        if (this.mConnection != null) {
            return;
        }
        Logger.INSTANCE.e("could not connect to device " + deviceName, null);
    }

    private synchronized void checkConnection() throws IllegalStateException {
        if (this.mConnection == null) {
            throw new IllegalStateException("already closed");
        }
    }

    public synchronized void claimInterface(UsbInterface usbInterface, boolean z) {
        checkConnection();
        this.mConnection.claimInterface(usbInterface, z);
    }

    public synchronized void close() {
        SparseArray<SparseArray<UsbInterface>> sparseArray;
        try {
            if (this.mConnection != null) {
                int size = this.mInterfaces.size();
                int i2 = 0;
                while (true) {
                    sparseArray = this.mInterfaces;
                    if (i2 >= size) {
                        break;
                    }
                    SparseArray<UsbInterface> sparseArrayValueAt = sparseArray.valueAt(i2);
                    if (sparseArrayValueAt != null) {
                        int size2 = sparseArrayValueAt.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            this.mConnection.releaseInterface(sparseArrayValueAt.valueAt(i3));
                        }
                        sparseArrayValueAt.clear();
                    }
                    i2++;
                }
                sparseArray.clear();
                this.mConnection.close();
                this.mConnection = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int getBusNum() {
        return this.mBusNum;
    }

    public synchronized UsbDeviceConnection getConnection() {
        return this.mConnection;
    }

    public int getDevNum() {
        return this.mDevNum;
    }

    public UsbDevice getDevice() {
        return this.mWeakDevice.get();
    }

    public int getDeviceId() {
        UsbDevice usbDevice = this.mWeakDevice.get();
        if (usbDevice != null) {
            return usbDevice.getDeviceId();
        }
        return 0;
    }

    public String getDeviceName() {
        UsbDevice usbDevice = this.mWeakDevice.get();
        return usbDevice != null ? usbDevice.getDeviceName() : "";
    }

    public synchronized int getFileDescriptor() throws IllegalStateException {
        checkConnection();
        return this.mConnection.getFileDescriptor();
    }

    public synchronized UsbInterface getInterface(int i2, int i3) throws IllegalStateException {
        UsbInterface usbInterface;
        try {
            checkConnection();
            SparseArray<UsbInterface> sparseArray = this.mInterfaces.get(i2);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                this.mInterfaces.put(i2, sparseArray);
            }
            usbInterface = sparseArray.get(i3);
            if (usbInterface == null) {
                UsbDevice usbDevice = this.mWeakDevice.get();
                int interfaceCount = usbDevice.getInterfaceCount();
                for (int i4 = 0; i4 < interfaceCount; i4++) {
                    UsbInterface usbInterface2 = usbDevice.getInterface(i4);
                    if (usbInterface2.getId() == i2 && usbInterface2.getAlternateSetting() == i3) {
                        usbInterface = usbInterface2;
                        break;
                    }
                }
                if (usbInterface != null) {
                    sparseArray.append(i3, usbInterface);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return usbInterface;
    }

    public int getProductId() {
        UsbDevice usbDevice = this.mWeakDevice.get();
        if (usbDevice != null) {
            return usbDevice.getProductId();
        }
        return 0;
    }

    public synchronized byte[] getRawDescriptors() throws IllegalStateException {
        checkConnection();
        return this.mConnection.getRawDescriptors();
    }

    public int getVenderId() {
        UsbDevice usbDevice = this.mWeakDevice.get();
        if (usbDevice != null) {
            return usbDevice.getVendorId();
        }
        return 0;
    }

    public synchronized void releaseInterface(UsbInterface usbInterface) throws IllegalStateException {
        try {
            checkConnection();
            SparseArray<UsbInterface> sparseArray = this.mInterfaces.get(usbInterface.getId());
            if (sparseArray != null) {
                sparseArray.removeAt(sparseArray.indexOfValue(usbInterface));
                if (sparseArray.size() == 0) {
                    this.mInterfaces.remove(usbInterface.getId());
                }
            }
            this.mConnection.releaseInterface(usbInterface);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void claimInterface(UsbInterface usbInterface) {
        claimInterface(usbInterface, true);
    }

    public synchronized UsbInterface getInterface(int i2) throws IllegalStateException {
        return getInterface(i2, 0);
    }
}

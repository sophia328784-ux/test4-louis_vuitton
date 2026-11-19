package com.lp.ble.utils;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.ParcelUuid;
import android.text.TextUtils;
import com.lp.ble.BLEManager;
import com.lp.ble.config.BleScanConfig;
import com.lp.ble.config.DeviceFilter;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.manager.BLEConnectApResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BLEUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f36372a = {"JP", "CA", "FR", "MX", "GT", "SV", "BG", "FI", "KW", "MT", "PL", "SI", "UA", "PH", "VN", "KR", "GB", "ES", "BR", "PA", "NI", "HR", "GR", "LV", "MA", "PT", "ZA", "AE", "SG", "AU", "IN", "DE", "IT", "XZ", "PE", "BH", "CZ", "HU", "LI", "NL", "RO", "SE", "HK", "KR", "AT", "US", "CN", "RU", "PR", "AR", "BY", "DK", "IS", "LT", "NO", "SA", "CH", "ID", "TW", "NZ", "AU", "IE", "CO", "EC", "BE", "EE", "IL", "LU", "OM", "SK", "TN", "MY", "TH", "UM"};

    public static int a(byte[] bArr) {
        int i2 = 0;
        if (bArr == null) {
            return 0;
        }
        for (int length = bArr.length - 1; length >= 0; length--) {
            i2 = (i2 << 8) | (bArr[length] & 255);
        }
        return i2;
    }

    public static int b(byte[] bArr) {
        int i2 = 0;
        for (byte b2 : bArr) {
            i2 = (i2 << 8) | (b2 & 255);
        }
        return i2;
    }

    public static byte[] c(int i2, int i3, byte[] bArr) {
        byte[] bArr2 = new byte[i3];
        try {
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            return bArr2;
        } catch (Exception unused) {
            return null;
        }
    }

    public static BLEConnectApResult d(int i2) {
        BLEConnectApResult bLEConnectApResult = BLEConnectApResult.LP_CONNECT_AP_OTHER_ERROR;
        switch (i2) {
            case 1:
                return BLEConnectApResult.LP_CONNECT_AP_NO_SSID;
            case 2:
                return BLEConnectApResult.LP_CONNECT_AP_WIFI_TIMEOUT;
            case 3:
                return BLEConnectApResult.LP_CONNECT_AP_DHCP_TIMEOUT;
            case 4:
                return BLEConnectApResult.LP_CONNECT_AP_PASSWORD_ERROR;
            case 5:
                return BLEConnectApResult.LP_CONNECT_AP_NO_SUPPORT_SECRET;
            case 6:
                return BLEConnectApResult.LP_CONNECT_AP_PARAMETER_ERROR;
            case 7:
            default:
                return bLEConnectApResult;
            case 8:
                return BLEConnectApResult.LP_CONNECT_Type_Connect_Router_Success_App_Not_Found;
            case 9:
                return BLEConnectApResult.LP_CONNECT_Type_User_Close_Bluetooth;
            case 10:
                return BLEConnectApResult.LP_CONNECT_Type_Found_Device_But_Not_Online;
            case 11:
                return BLEConnectApResult.LP_CONNECT_AP_RETRY;
        }
    }

    public static String e() {
        Resources resources;
        Configuration configuration;
        try {
            Application application = BLEManager.f36330c.f36331a;
            Locale locale = (application == null || (resources = application.getResources()) == null || (configuration = resources.getConfiguration()) == null) ? null : configuration.locale;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            return f(locale != null ? locale.getCountry() : "");
        } catch (Throwable unused) {
            return f("");
        }
    }

    public static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return "XZ";
        }
        for (int i2 = 0; i2 < 74; i2++) {
            String str2 = f36372a[i2];
            if (str.toUpperCase().contains(str2.toUpperCase())) {
                return str2;
            }
        }
        return "XZ";
    }

    public static boolean g(ParcelUuid[] parcelUuidArr) {
        if (parcelUuidArr == null || parcelUuidArr.length == 0) {
            return true;
        }
        for (ParcelUuid parcelUuid : parcelUuidArr) {
            if ("0000A501-0000-1000-8000-00805F9B34FB".equalsIgnoreCase(parcelUuid.getUuid().toString())) {
                return true;
            }
        }
        return false;
    }

    public static LPBluetoothDevice h(String str, BleScanConfig bleScanConfig, DeviceFilter deviceFilter, BluetoothDevice bluetoothDevice, int i2, byte[] bArr) {
        byte[] bArrC;
        byte[] bArrC2;
        String str2;
        String string;
        int i3;
        int i4;
        int i5;
        if (bluetoothDevice != null) {
            if (bArr == null) {
                bArrC = null;
            } else {
                bArrC = null;
                int i6 = 0;
                while (i6 < bArr.length) {
                    try {
                        int i7 = i6 + 1;
                        int i8 = bArr[i6] & 255;
                        if (i8 == 0) {
                            break;
                        }
                        int i9 = i8 - 1;
                        int i10 = i6 + 2;
                        if ((bArr[i7] & 255) == 255) {
                            byte b2 = bArr[i6 + 3];
                            byte b3 = bArr[i10];
                            bArrC = c(i10, i9, bArr);
                        }
                        i6 = i10 + i9;
                    } catch (Exception unused) {
                        Arrays.toString(bArr);
                    }
                }
            }
            if (bArr == null) {
                bArrC2 = null;
            } else {
                bArrC2 = null;
                int i11 = 0;
                while (i11 < bArr.length) {
                    try {
                        int i12 = i11 + 1;
                        int i13 = bArr[i11] & 255;
                        if (i13 == 0) {
                            break;
                        }
                        int i14 = i13 - 1;
                        int i15 = i11 + 2;
                        if ((bArr[i12] & 255) == 3) {
                            bArrC2 = c(i15, i14, bArr);
                        }
                        i11 = i15 + i14;
                    } catch (Exception unused2) {
                        Arrays.toString(bArr);
                    }
                }
            }
            LPBluetoothDevice.Builder builder = new LPBluetoothDevice.Builder();
            builder.f36367a = bluetoothDevice;
            builder.f36368b = bluetoothDevice.getAddress();
            builder.f36369c = bArrC;
            LPBluetoothDevice lPBluetoothDeviceA = builder.a();
            String name = bluetoothDevice.getName();
            if (!g(bluetoothDevice.getUuids()) || TextUtils.isEmpty(name) || !name.equalsIgnoreCase("LP")) {
                if (bArrC2 != null && bArrC2.length > 0 && TextUtils.equals(HexUtil.a(bArrC2), "1218")) {
                    String name2 = bluetoothDevice.getName();
                    if ((TextUtils.isEmpty(name2) || !name2.contains("LP RC")) && (!g(bluetoothDevice.getUuids()) || TextUtils.isEmpty(name2) || !name2.equalsIgnoreCase("LP"))) {
                        if (bArrC != null && bArrC.length == 2 && Integer.parseInt(HexUtil.a(bArrC), 16) == 19536 && !TextUtils.isEmpty(name2) && name2.toUpperCase().contains("WiiM".toUpperCase())) {
                            if (BLELog.a(str, HexUtil.a(bArr))) {
                                bluetoothDevice.getName();
                            }
                        }
                        return lPBluetoothDeviceA;
                    }
                }
                if (deviceFilter == null || !lPBluetoothDeviceA.a()) {
                    if (deviceFilter == null || lPBluetoothDeviceA.d != 19537 || lPBluetoothDeviceA.f36361e <= 0) {
                        if (bArr != null && bArr.length > 0) {
                            int i16 = 0;
                            while (true) {
                                if (i16 < bArr.length) {
                                    int i17 = i16 + 1;
                                    byte b4 = bArr[i16];
                                    if (b4 != 0 && (i3 = bArr[i17] & 255) != 0 && (i4 = i16 + 2) <= (i5 = i17 + b4)) {
                                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, i5);
                                        if (i3 == 255) {
                                            str2 = new String(bArrCopyOfRange);
                                            break;
                                        }
                                        i16 = i5;
                                    }
                                }
                                str2 = "";
                                break;
                            }
                        }
                        str2 = "";
                        break;
                        if (!TextUtils.isEmpty(bluetoothDevice.getName()) && !TextUtils.isEmpty(str2) && (str2.contains("linkp") || str2.contains("e\u0006inkp"))) {
                            LPBluetoothDevice.Builder builder2 = new LPBluetoothDevice.Builder();
                            builder2.f36367a = bluetoothDevice;
                            builder2.f36368b = bluetoothDevice.getAddress();
                            LPBluetoothDevice lPBluetoothDeviceA2 = builder2.a();
                            if (BLELog.a(str, HexUtil.a(bArr))) {
                                bluetoothDevice.getName();
                                bluetoothDevice.getAddress();
                            }
                            return lPBluetoothDeviceA2;
                        }
                        StringBuilder sb = new StringBuilder("");
                        if (bArrC == null || bArrC.length <= 0) {
                            string = null;
                        } else {
                            for (byte b5 : bArrC) {
                                String hexString = Integer.toHexString(b5 & 255);
                                if (hexString.length() < 2) {
                                    sb.append(0);
                                }
                                sb.append(hexString);
                            }
                            string = sb.toString();
                        }
                        if (!TextUtils.isEmpty(string) && string.toUpperCase().startsWith("0f6da118".toUpperCase())) {
                            LPBluetoothDevice.Builder builder3 = new LPBluetoothDevice.Builder();
                            builder3.f36367a = bluetoothDevice;
                            builder3.f36368b = string;
                            LPBluetoothDevice lPBluetoothDeviceA3 = builder3.a();
                            if (BLELog.a(str, HexUtil.a(bArr))) {
                                bluetoothDevice.getName();
                            }
                            return lPBluetoothDeviceA3;
                        }
                        if (bArrC2 != null && bArrC2.length >= 2) {
                            TextUtils.equals(HexUtil.a(bArrC2), "A0FE");
                        }
                    } else if (BLELog.a(str, HexUtil.a(bArr))) {
                        bluetoothDevice.getName();
                    }
                } else if (BLELog.a(str, HexUtil.a(bArr))) {
                    bluetoothDevice.getName();
                }
                return lPBluetoothDeviceA;
            }
        }
        return null;
    }

    public static String i(byte[] bArr) throws Throwable {
        GZIPInputStream gZIPInputStream;
        Throwable th;
        IOException e2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                try {
                    byte[] bArr2 = new byte[256];
                    while (true) {
                        int i2 = gZIPInputStream.read(bArr2);
                        if (i2 < 0) {
                            String string = byteArrayOutputStream.toString();
                            try {
                                byteArrayOutputStream.close();
                                byteArrayInputStream.close();
                                gZIPInputStream.close();
                                return string;
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                return string;
                            }
                        }
                        byteArrayOutputStream.write(bArr2, 0, i2);
                        th = th;
                        try {
                            byteArrayOutputStream.close();
                            byteArrayInputStream.close();
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e2 = e5;
                    e2.printStackTrace();
                    e2.getLocalizedMessage();
                    HashMap map = BLELog.f36371a;
                    e2.printStackTrace();
                    try {
                        byteArrayOutputStream.close();
                        byteArrayInputStream.close();
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    return "";
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e7) {
            gZIPInputStream = null;
            e2 = e7;
        } catch (Throwable th3) {
            gZIPInputStream = null;
            th = th3;
        }
    }
}

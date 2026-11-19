package com.sightcall.universal.internal.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Parcelable;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.common.DataChannelAction;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.pratik.utils.Utils;
import com.sightcall.universal.api.Transient;
import com.sightcall.universal.model.Moshi;
import com.squareup.moshi.Json;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.tr;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceMonitoring {

    @Json(name = "battery")
    private Battery battery;

    @Transient
    private final Context context;

    @Transient
    private boolean isMonitoring;

    @Json(name = "sim")
    private Sim sim;

    @Json(name = "user")
    private final User user;

    @Json(name = MenuBarConstants.MEDIA_TYPE_WIFI)
    private Wifi wifi;

    @Transient
    private final BroadcastReceiver batteryReceiver = new BroadcastReceiver() { // from class: com.sightcall.universal.internal.model.DeviceMonitoring.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (Battery.update(DeviceMonitoring.this, Battery.extract(intent))) {
                DeviceMonitoring.this.trigger();
            }
        }
    };

    @Transient
    private final BroadcastReceiver wifiReceiver = new BroadcastReceiver() { // from class: com.sightcall.universal.internal.model.DeviceMonitoring.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            Parcelable parcelableExtra = intent.getParcelableExtra("networkInfo");
            boolean z = parcelableExtra instanceof NetworkInfo;
            if (!z || ((NetworkInfo) parcelableExtra).getType() == 1) {
                if (Wifi.update(DeviceMonitoring.this, Wifi.fetch(context, z ? (NetworkInfo) parcelableExtra : null))) {
                    DeviceMonitoring.this.trigger();
                }
            }
        }
    };

    @Transient
    private final PhoneStateListener simListener = new PhoneStateListener() { // from class: com.sightcall.universal.internal.model.DeviceMonitoring.3
        SignalStrength signalStrength;

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int i2, int i3) {
            super.onDataConnectionStateChanged(i2, i3);
            DeviceMonitoring deviceMonitoring = DeviceMonitoring.this;
            if (Sim.update(deviceMonitoring, Sim.fetch(deviceMonitoring.context, this.signalStrength))) {
                DeviceMonitoring.this.trigger();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            super.onServiceStateChanged(serviceState);
            DeviceMonitoring deviceMonitoring = DeviceMonitoring.this;
            if (Sim.update(deviceMonitoring, Sim.fetch(deviceMonitoring.context, this.signalStrength))) {
                DeviceMonitoring.this.trigger();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            this.signalStrength = signalStrength;
            DeviceMonitoring deviceMonitoring = DeviceMonitoring.this;
            if (Sim.update(deviceMonitoring, Sim.fetch(deviceMonitoring.context, signalStrength))) {
                DeviceMonitoring.this.trigger();
            }
        }
    };

    public static class Battery {
        private static final IntentFilter INTENT_FILTER = new IntentFilter("android.intent.action.BATTERY_CHANGED");

        @Json(name = "charging")
        final boolean charging;

        @Json(name = "level")
        final int level;

        @Json(name = "plugged")
        final Plugged plugged;

        public enum Plugged {
            AC,
            USB,
            WIRELESS
        }

        private Battery(int i2, boolean z, Plugged plugged) {
            this.level = i2;
            this.charging = z;
            this.plugged = plugged;
        }

        public static Battery extract(Intent intent) {
            Plugged plugged = null;
            if (intent == null) {
                return null;
            }
            int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
            int intExtra2 = intent.getIntExtra("status", -1);
            boolean z = intExtra2 == 2 || intExtra2 == 5;
            int intExtra3 = intent.getIntExtra("plugged", -1);
            if (intExtra3 == 2) {
                plugged = Plugged.USB;
            } else if (intExtra3 == 1) {
                plugged = Plugged.AC;
            } else if (intExtra3 == 4) {
                plugged = Plugged.WIRELESS;
            }
            return new Battery(intExtra, z, plugged);
        }

        public static Battery fetch(Context context) {
            return extract(context.registerReceiver(null, INTENT_FILTER));
        }

        public static boolean update(DeviceMonitoring deviceMonitoring, Battery battery) {
            if (deviceMonitoring.battery == null && battery == null) {
                return false;
            }
            if (deviceMonitoring.battery != null && deviceMonitoring.battery.equals(battery)) {
                return false;
            }
            deviceMonitoring.battery = battery;
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Battery battery = (Battery) obj;
                if (this.level == battery.level && this.charging == battery.charging && this.plugged == battery.plugged) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i2 = ((this.level * 31) + (this.charging ? 1 : 0)) * 31;
            Plugged plugged = this.plugged;
            return i2 + (plugged != null ? plugged.hashCode() : 0);
        }

        public String toString() {
            return "Battery{level=" + this.level + ", charging=" + this.charging + ", plugged=" + this.plugged + '}';
        }
    }

    public enum Type {
        _2G,
        _3G,
        _4G,
        _5G,
        WIFI,
        UNKNOWN
    }

    private DeviceMonitoring(Context context, net.rtccloud.sdk.User user) {
        this.context = context.getApplicationContext();
        int i2 = 0;
        if (user instanceof net.rtccloud.sdk.User.Internal) {
            User user2 = new User(i2);
            this.user = user2;
            user2.uid = user.extras().getString("uid");
        } else if (user instanceof net.rtccloud.sdk.User.External) {
            User user3 = new User(i2);
            this.user = user3;
            net.rtccloud.sdk.User.External external = (net.rtccloud.sdk.User.External) user;
            user3.suffix = external.suffix();
            user3.uid = external.uid();
        } else if (user instanceof net.rtccloud.sdk.User.SixDigits) {
            User user4 = new User(i2);
            this.user = user4;
            net.rtccloud.sdk.User.SixDigits sixDigits = (net.rtccloud.sdk.User.SixDigits) user;
            user4.suffix = sixDigits.suffix();
            user4.pin = sixDigits.pin();
        } else if (user != null) {
            User user5 = new User(i2);
            this.user = user5;
            user5.uid = user.extras().getString("uid");
        } else {
            this.user = null;
        }
        refresh();
    }

    public static DeviceMonitoring create(Context context, net.rtccloud.sdk.User user) {
        return new DeviceMonitoring(context, user);
    }

    private void refresh() {
        this.battery = Battery.fetch(this.context);
        this.sim = Sim.fetch(this.context);
        this.wifi = Wifi.fetch(this.context);
    }

    public static void start(DeviceMonitoring deviceMonitoring) {
        if (deviceMonitoring == null) {
            return;
        }
        deviceMonitoring.startMonitoring();
    }

    private void startMonitoring() {
        if (this.isMonitoring) {
            return;
        }
        Utils.Companion companion = Utils.INSTANCE;
        companion.registerReceiverCompat(this.context, this.batteryReceiver, Battery.INTENT_FILTER);
        companion.registerReceiverCompat(this.context, this.wifiReceiver, Wifi.INTENT_FILTER);
        ((TelephonyManager) this.context.getSystemService("phone")).listen(this.simListener, 321);
        this.isMonitoring = true;
        refresh();
        trigger();
    }

    public static void stop(DeviceMonitoring deviceMonitoring) {
        if (deviceMonitoring == null) {
            return;
        }
        deviceMonitoring.stopMonitoring();
    }

    private void stopMonitoring() {
        if (this.isMonitoring) {
            this.context.unregisterReceiver(this.batteryReceiver);
            this.context.unregisterReceiver(this.wifiReceiver);
            ((TelephonyManager) this.context.getSystemService("phone")).listen(this.simListener, 0);
            this.isMonitoring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trigger() {
        Rtcc rtccInstance = Rtcc.instance();
        Call call = rtccInstance.call().get();
        if (call != null && call.status() == Call.Status.ACTIVE && rtccInstance.status() == Rtcc.Status.CONNECTED) {
            DataChannelAction.DEVICE_STATUS.send(Moshi.toJson(DeviceMonitoring.class, this));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DeviceMonitoring{wifi=");
        sb.append(this.wifi);
        sb.append(", user=");
        sb.append(this.user);
        sb.append(", battery=");
        sb.append(this.battery);
        sb.append(", sim=");
        sb.append(this.sim);
        sb.append(", isMonitoring=");
        return d21.q(sb, this.isMonitoring, '}');
    }

    public static class User {

        @Json(name = "pin")
        String pin;

        @Json(name = "suffix")
        String suffix;

        @Json(name = "uid")
        String uid;

        public /* synthetic */ User(int i2) {
            this();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("User{uid='");
            sb.append(this.uid);
            sb.append("', suffix='");
            sb.append(this.suffix);
            sb.append("', pin='");
            return n00.r(this.pin, "'}", sb);
        }

        private User() {
        }
    }

    public static class Sim {
        private static final int DEFAULT_SIGNAL_STRENGTH_VALUE = 4;
        static final int LISTEN = 321;

        @Json(name = "carrier")
        final String carrier;

        @Json(name = "strength")
        final int strength;

        @Json(name = "type")
        final Type type;

        private Sim(Type type, String str, int i2) {
            this.carrier = str;
            this.type = type;
            this.strength = i2;
        }

        public static Sim fetch(Context context, SignalStrength signalStrength) {
            Type typeFindMobileType;
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || (typeFindMobileType = findMobileType(telephonyManager)) == null) {
                return null;
            }
            try {
                if (telephonyManager.getDataState() != 2) {
                    return null;
                }
                return new Sim(typeFindMobileType, telephonyManager.getNetworkOperatorName(), findSignalStrength(signalStrength));
            } catch (SecurityException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        private static Type findMobileType(TelephonyManager telephonyManager) {
            Context context = Rtcc.instance().context();
            if (InstantAppWrapper.isInstantApp(context) || (SdkUtilsKt.isAtLeastSdk30() && context.checkSelfPermission("android.permission.READ_PHONE_STATE") == -1)) {
                return Type.UNKNOWN;
            }
            switch (telephonyManager.getNetworkType()) {
                case 0:
                    return Type.UNKNOWN;
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return Type._2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return Type._3G;
                case 13:
                case 18:
                case 19:
                    return Type._4G;
                case 20:
                    return Type._5G;
                default:
                    return Type._3G;
            }
        }

        public static int findSignalStrength(SignalStrength signalStrength) {
            if (signalStrength != null) {
                try {
                    return signalStrength.getLevel();
                } catch (Exception unused) {
                }
            }
            return 4;
        }

        public static boolean update(DeviceMonitoring deviceMonitoring, Sim sim) {
            if (deviceMonitoring.sim == null && sim == null) {
                return false;
            }
            if (deviceMonitoring.sim != null && deviceMonitoring.sim.equals(sim)) {
                return false;
            }
            deviceMonitoring.sim = sim;
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Sim sim = (Sim) obj;
                if (this.strength != sim.strength) {
                    return false;
                }
                String str = this.carrier;
                String str2 = sim.carrier;
                if (str == null ? str2 != null : !str.equals(str2)) {
                    return false;
                }
                if (this.type == sim.type) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.carrier;
            return ((this.type.hashCode() + ((str != null ? str.hashCode() : 0) * 31)) * 31) + this.strength;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Sim{carrier='");
            sb.append(this.carrier);
            sb.append("', type=");
            sb.append(this.type);
            sb.append(", strength=");
            return tr.k(sb, this.strength, '}');
        }

        public static Sim fetch(Context context) {
            return fetch(context, null);
        }
    }

    public static void trigger(DeviceMonitoring deviceMonitoring) {
        if (deviceMonitoring == null) {
            return;
        }
        deviceMonitoring.trigger();
    }

    public static class Wifi {
        private static final IntentFilter INTENT_FILTER = new IntentFilter() { // from class: com.sightcall.universal.internal.model.DeviceMonitoring.Wifi.1
            {
                addAction("android.net.wifi.STATE_CHANGE");
                addAction("android.net.wifi.WIFI_STATE_CHANGED");
                addAction("android.net.wifi.RSSI_CHANGED");
                addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        };

        @Json(name = "speed")
        final String speed;

        @Json(name = "ssid")
        final String ssid;

        @Json(name = "strength")
        final int strength;

        private Wifi(String str, int i2, int i3) {
            String strReplaceAll;
            if (str == null) {
                strReplaceAll = null;
            } else {
                strReplaceAll = isUnknownSsid(str) ? "" : str.replaceAll("^\"(.*)\"$", "$1");
            }
            this.ssid = strReplaceAll;
            this.speed = i2 > 0 ? cj.d(i2, " Mbps") : null;
            this.strength = i3;
        }

        public static Wifi fetch(Context context, NetworkInfo networkInfo) {
            WifiInfo connectionInfo;
            if (InstantAppWrapper.isInstantApp(context)) {
                return null;
            }
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
            boolean zIsWifiEnabled = wifiManager.isWifiEnabled();
            int wifiState = wifiManager.getWifiState();
            if (!zIsWifiEnabled || wifiState != 3) {
                return null;
            }
            if ((networkInfo != null && !networkInfo.isConnectedOrConnecting()) || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
                return null;
            }
            String ssid = connectionInfo.getSSID();
            int linkSpeed = connectionInfo.getLinkSpeed();
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 5);
            if (isUnknownSsid(ssid) && linkSpeed == -1) {
                return null;
            }
            return new Wifi(ssid, linkSpeed, iCalculateSignalLevel);
        }

        private static boolean isUnknownSsid(String str) {
            return "<unknown ssid>".equals(str) || "0x".equals(str);
        }

        public static boolean update(DeviceMonitoring deviceMonitoring, Wifi wifi) {
            if (deviceMonitoring.wifi == null && wifi == null) {
                return false;
            }
            if (deviceMonitoring.wifi != null && deviceMonitoring.wifi.equals(wifi)) {
                return false;
            }
            deviceMonitoring.wifi = wifi;
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Wifi wifi = (Wifi) obj;
                if (this.strength != wifi.strength) {
                    return false;
                }
                String str = this.ssid;
                String str2 = wifi.ssid;
                if (str == null ? str2 != null : !str.equals(str2)) {
                    return false;
                }
                String str3 = this.speed;
                String str4 = wifi.speed;
                if (str3 != null) {
                    return str3.equals(str4);
                }
                if (str4 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.ssid;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.speed;
            return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.strength;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Wifi{ssid='");
            sb.append(this.ssid);
            sb.append("', speed='");
            sb.append(this.speed);
            sb.append("', strength=");
            return tr.k(sb, this.strength, '}');
        }

        public static Wifi fetch(Context context) {
            return fetch(context, null);
        }
    }
}

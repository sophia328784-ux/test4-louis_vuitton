package com.sightcall.universal.quality;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.squareup.moshi.Json;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class QualityOfService {

    @Json(name = "call_downlink_standard_deviation")
    public double callDownlink;

    @Json(name = "call_downlink_status")
    public Status callDownlinkStatus;

    @Json(name = "call_status")
    public Status callStatus;

    @Json(name = "call_uplink_standard_deviation")
    public double callUplink;

    @Json(name = "call_uplink_status")
    public Status callUplinkStatus;

    @Json(name = "camera_autofocus")
    public boolean cameraAutofocus;

    @Json(name = "camera_flashlight")
    public boolean cameraFlashlight;

    @Json(name = "camera_status")
    public Status cameraStatus;

    @Json(name = "camera_usb_host")
    public boolean cameraUsb;

    @Json(name = "camera_zoom")
    public double cameraZoom;

    @Json(name = "fps")
    public List<Fps> fps;

    @Json(name = "hardware_battery_value")
    public int hardwareBatteryLevel;

    @Json(name = "hardware_battery_status")
    public Status hardwareBatteryLevelStatus;

    @Json(name = "hardware_cpu_count_value")
    public int hardwareCpuCoreCount;

    @Json(name = "hardware_cpu_count_status")
    public Status hardwareCpuCoreCountStatus;

    @Json(name = "hardware_cpu_khz_value")
    public long hardwareCpuCoreSpeedKHz;

    @Json(name = "hardware_cpu_khz_status")
    public Status hardwareCpuCoreSpeedKHzStatus;

    @Json(name = "hardware_status")
    public Status hardwareStatus;

    @Json(name = "hardware_ram_value")
    public long hardwareTotalRam;

    @Json(name = "hardware_ram_status")
    public Status hardwareTotalRamStatus;

    @Json(name = "network_latency_value")
    public long networkLatency;

    @Json(name = "network_latency_status")
    public Status networkLatencyStatus;

    @Json(name = "network_platform")
    public String networkPlatform;

    @Json(name = "network_status")
    public Status networkStatus;

    @Json(name = "network_type_value")
    public NetworkType networkType;

    @Json(name = "network_type_status")
    public Status networkTypeStatus;

    @Json(name = "nqi")
    public List<Nqi> nqi;

    @Json(name = "status")
    public Status status;

    @Json(name = "device_os")
    public String deviceOs = ReferenceApiV3ConstKt.OS_NAME;

    @Json(name = "device_name")
    public String deviceName = Build.MODEL;

    @Json(name = "device_version")
    public String deviceVersion = Build.VERSION.RELEASE;

    public static class Fps {

        @Json(name = "g")
        public final int gfps;

        @Json(name = "r")
        public final int rfps;

        @Json(name = NBSSpanMetricUnit.Second)
        public final int sfps;

        @Json(name = "t")
        public final int timestamp;

        public Fps(Call.StatsHistory.Fps fps) {
            this.timestamp = fps.timestamp;
            this.gfps = fps.gfps;
            this.sfps = fps.sfps;
            this.rfps = fps.rfps;
        }
    }

    public enum NetworkType {
        UNKNOWN,
        MOBILE_2G,
        MOBILE_3G,
        MOBILE_4G,
        MOBILE_5G,
        WIFI;

        public static NetworkType find(Context context) {
            if (context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                return UNKNOWN;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return null;
            }
            int type = activeNetworkInfo.getType();
            if (type != 0) {
                return (type == 1 || type == 6 || type == 9) ? WIFI : UNKNOWN;
            }
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return MOBILE_2G;
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
                    return MOBILE_3G;
                case 13:
                case 18:
                case 19:
                    return MOBILE_4G;
                case 20:
                    return MOBILE_5G;
                default:
                    return UNKNOWN;
            }
        }
    }

    public static class Nqi {

        @Json(name = "la")
        public final int localAudio;

        @Json(name = "lv")
        public final int localVideo;

        @Json(name = "ra")
        public final int remoteAudio;

        @Json(name = "rv")
        public final int remoteVideo;

        @Json(name = "t")
        public final int timestamp;

        public Nqi(Call.StatsHistory.Nqi nqi) {
            this.timestamp = nqi.timestamp;
            this.localAudio = nqi.localAudio;
            this.localVideo = nqi.localVideo;
            this.remoteAudio = nqi.remoteAudio;
            this.remoteVideo = nqi.remoteVideo;
        }
    }

    public static class Request {

        @Json(name = "serviceQuality")
        public final QualityOfService qos;

        public Request(QualityOfService qualityOfService) {
            this.qos = qualityOfService;
        }
    }

    public static class Response {

        @Json(name = "serviceQuality")
        public final Data data;

        public static class Data {

            @Json(name = ConfigurationName.DOWNLOAD_PLUGIN_URL)
            public final String url;

            public Data(String str) {
                this.url = str;
            }
        }

        public Response(Data data) {
            this.data = data;
        }

        public String url() {
            return this.data.url;
        }
    }

    public enum Status {
        SUCCESS,
        WARNING,
        FAILURE
    }
}

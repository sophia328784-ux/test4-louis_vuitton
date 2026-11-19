package com.linkplay.ota2.presenter;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.log.LinkplayLog;
import com.linkplay.medialib.ContentTree;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.ota2.model.LPOTAConfiguration;
import com.linkplay.ota2.model.OTAStatus;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.LPRequestUrl;
import com.linkplay.request.RequestItem;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.n00;
import defpackage.pq0;
import java.io.UnsupportedEncodingException;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceOTA {
    private static final int MAX_FAILED_COUNT = 4;
    private static final String TAG = "LPDeviceOTA";
    private LPDevice deviceItem;
    private long lBeginTimer;
    private LPOTAListener otaListener;
    private long MAX_REQUEST_TIMEOUT = 120000;
    private int failedCount = 0;
    private String version = "1.0.0";
    private OTAStatus lastStatus = new OTAStatus(8, 0);
    private long maxTimeout = 2147483647L;
    private long startTime = System.currentTimeMillis();
    private boolean isNotNeedRetry = false;
    private String targetFWVersion = "";
    private String targetMCUVersion = "";
    private String targetDSP = "";
    private long startDownloadTime = System.currentTimeMillis();
    private final int REQUEST_TIME_INTERVAL = 5000;
    private long MAX_DOWNLOAD_TIME = 120000;
    private long MAX_WRITE_TIME = 0;
    private long MAX_REBOOT_TIME = 0;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public LPDeviceOTA(LPDevice lPDevice) {
        this.deviceItem = lPDevice;
    }

    private void firmwareUpdateFailed(OTAStatus oTAStatus) {
        this.isNotNeedRetry = true;
        LPOTAListener lPOTAListener = this.otaListener;
        if (lPOTAListener != null) {
            lPOTAListener.otaFailed(oTAStatus);
        }
    }

    private void firmwareUpdateFinish(final OTAStatus oTAStatus) {
        this.isNotNeedRetry = true;
        LPDevice lPDevice = this.deviceItem;
        if (lPDevice == null || lPDevice.getDeviceStatus() == null || TextUtils.isEmpty(this.deviceItem.getDeviceStatus().getMAC())) {
            return;
        }
        final LPDevice lPDeviceDeviceForMac = LPDeviceManager.getInstance().deviceForMac(this.deviceItem.getDeviceStatus().getMAC());
        if (lPDeviceDeviceForMac == null) {
            LinkplayLog.i(TAG, "otaFailed 000");
            LPOTAListener lPOTAListener = this.otaListener;
            if (lPOTAListener != null) {
                lPOTAListener.otaFailed(oTAStatus);
                return;
            }
            return;
        }
        if (oTAStatus.getStatus() == 8) {
            LPRequestAction.getInstance().getStatusEx(n00.l(lPDeviceDeviceForMac, n00.k(lPDeviceDeviceForMac, new RequestItem.Builder())), new LPRequestAction.IRequestListener() { // from class: com.linkplay.ota2.presenter.LPDeviceOTA.3
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LinkplayLog.i(LPDeviceOTA.TAG, "getStatusEx onFailed:" + th.getLocalizedMessage());
                    LPOTAListener lPOTAListener2 = LPDeviceOTA.this.otaListener;
                    if (lPOTAListener2 != null) {
                        lPOTAListener2.otaFailed(oTAStatus);
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str) {
                    lPDeviceDeviceForMac.getDeviceStatus().setDeviceStatus(str);
                    if (TextUtils.isEmpty(str)) {
                        LinkplayLog.i(LPDeviceOTA.TAG, "otaFailed 2222");
                        LPOTAListener lPOTAListener2 = LPDeviceOTA.this.otaListener;
                        if (lPOTAListener2 != null) {
                            lPOTAListener2.otaFailed(oTAStatus);
                            return;
                        }
                        return;
                    }
                    LPDeviceStatus deviceStatus = lPDeviceDeviceForMac.getDeviceStatus();
                    LinkplayLog.i(LPDeviceOTA.TAG, "firmwareUpdateFinish targetFWVersion: " + LPDeviceOTA.this.targetFWVersion + " fimrware: " + deviceStatus.getFirmware() + "  targetMCUVersion: " + LPDeviceOTA.this.targetMCUVersion + "  mcu_ver: " + deviceStatus.getMCUVer());
                    if (!TextUtils.isEmpty(LPDeviceOTA.this.targetFWVersion) && !LPDeviceOTA.this.targetFWVersion.equals(deviceStatus.getFirmware())) {
                        LinkplayLog.i(LPDeviceOTA.TAG, "otaFailed 3333");
                        LPOTAListener lPOTAListener3 = LPDeviceOTA.this.otaListener;
                        if (lPOTAListener3 != null) {
                            lPOTAListener3.otaFailed(oTAStatus);
                            return;
                        }
                        return;
                    }
                    if (!TextUtils.isEmpty(LPDeviceOTA.this.targetMCUVersion) && !LPDeviceOTA.this.targetMCUVersion.equals(deviceStatus.getMCUVer())) {
                        LinkplayLog.i(LPDeviceOTA.TAG, "otaFailed 4444");
                        LPOTAListener lPOTAListener4 = LPDeviceOTA.this.otaListener;
                        if (lPOTAListener4 != null) {
                            lPOTAListener4.otaFailed(oTAStatus);
                            return;
                        }
                        return;
                    }
                    oTAStatus.setDownloadPercent(100);
                    oTAStatus.setUpdatePercent(100);
                    oTAStatus.setRebootPercent(100);
                    oTAStatus.setRemainTime(0L);
                    LPOTAListener lPOTAListener5 = LPDeviceOTA.this.otaListener;
                    if (lPOTAListener5 != null) {
                        lPOTAListener5.otaStatusUpdated(oTAStatus);
                        LPDeviceOTA.this.otaListener.otaSuccess(lPDeviceDeviceForMac);
                    }
                }
            });
            return;
        }
        LinkplayLog.i(TAG, "otaFailed 1111");
        LPOTAListener lPOTAListener2 = this.otaListener;
        if (lPOTAListener2 != null) {
            lPOTAListener2.otaFailed(oTAStatus);
        }
    }

    private void firmwareUpdateTimeoutWithStatus(OTAStatus oTAStatus) {
        if (oTAStatus == null) {
            return;
        }
        if (System.currentTimeMillis() - this.startTime > this.maxTimeout) {
            firmwareUpdateFinish(oTAStatus);
            return;
        }
        if (oTAStatus.getStatus() == 0) {
            return;
        }
        if (oTAStatus.getStatus() == 1) {
            this.maxTimeout = this.MAX_DOWNLOAD_TIME;
            if (oTAStatus.getProgress() != this.lastStatus.getProgress()) {
                this.startTime = System.currentTimeMillis();
            }
            if (oTAStatus.getProgress() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.startDownloadTime;
                float progress = (100.0f / oTAStatus.getProgress()) * jCurrentTimeMillis;
                long j2 = (long) (this.MAX_WRITE_TIME + progress + this.MAX_REBOOT_TIME);
                long j3 = j2 - jCurrentTimeMillis;
                StringBuilder sbQ = pq0.q(jCurrentTimeMillis, "past", "  has downloaded ");
                sbQ.append(oTAStatus.getProgress());
                sbQ.append("  download time ");
                sbQ.append(progress);
                sbQ.append("  total time ");
                sbQ.append(j2);
                sbQ.append("   remain time ");
                sbQ.append(j3);
                LinkplayLog.i(TAG, sbQ.toString());
                oTAStatus.setRemainTime(j3);
                return;
            }
            return;
        }
        if (oTAStatus.getStatus() == 3) {
            this.maxTimeout = this.MAX_WRITE_TIME + this.MAX_REBOOT_TIME;
            long jCurrentTimeMillis2 = System.currentTimeMillis() - this.startTime;
            long j4 = this.MAX_WRITE_TIME + this.MAX_REBOOT_TIME;
            long j5 = j4 - jCurrentTimeMillis2;
            oTAStatus.setRemainTime(j5);
            LinkplayLog.i(TAG, "past " + jCurrentTimeMillis2 + "  total time " + j4 + "   remain time " + j5);
            return;
        }
        if (oTAStatus.getStatus() != 6) {
            if (oTAStatus.getStatus() == 2 || oTAStatus.getStatus() == 5) {
                LinkplayLog.i(TAG, "otaFailed MV_UP_STATUS_DOWNLOAD_FAILED | MV_UP_STATUS_WRITE_FAILED");
                firmwareUpdateFailed(oTAStatus);
                return;
            } else {
                if (oTAStatus.getStatus() == 8) {
                    if (LPDeviceManager.getInstance().deviceForMac(this.deviceItem.getDeviceStatus().getMAC()) == null) {
                        LinkplayLog.i(TAG, "getDeviceItemByMac device = null");
                        return;
                    } else {
                        firmwareUpdateFinish(oTAStatus);
                        return;
                    }
                }
                return;
            }
        }
        this.maxTimeout = this.MAX_REBOOT_TIME;
        if (this.lastStatus.getStatus() == 3) {
            this.startTime = System.currentTimeMillis();
        }
        long jCurrentTimeMillis3 = System.currentTimeMillis() - this.startTime;
        long j6 = this.MAX_REBOOT_TIME;
        long j7 = j6 - jCurrentTimeMillis3;
        oTAStatus.setRemainTime(j7);
        LinkplayLog.i(TAG, "past" + jCurrentTimeMillis3 + "  total time" + j6 + "   remain time" + j7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getDeviceUpdateStatus() {
        try {
            Thread.sleep(1000L);
        } catch (Exception unused) {
        }
        LPDevice lPDevice = this.deviceItem;
        LPDevice lPDeviceDeviceForMac = LPDeviceManager.getInstance().deviceForMac(this.deviceItem.getDeviceStatus().getMAC());
        if (lPDeviceDeviceForMac != null) {
            lPDevice = lPDeviceDeviceForMac;
        }
        RequestItem requestItemL = n00.l(lPDevice, n00.k(lPDevice, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(LPRequestUrl.getMvRomDownloadV2StatusUrl(requestItemL), new IOkHttpRequestCallback() { // from class: com.linkplay.ota2.presenter.LPDeviceOTA.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LinkplayLog.i(LPDeviceOTA.TAG, "getMvRomDownloadV2Status onFailure " + exc.getLocalizedMessage());
                LPDeviceOTA lPDeviceOTA = LPDeviceOTA.this;
                lPDeviceOTA.updateFirmwareStatus(lPDeviceOTA.lastStatus);
                LPDeviceOTA.this.mHandler.postDelayed(new Runnable() { // from class: com.linkplay.ota2.presenter.LPDeviceOTA.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LPDeviceOTA lPDeviceOTA2 = LPDeviceOTA.this;
                        if (lPDeviceOTA2.isNotNeedRetry) {
                            return;
                        }
                        lPDeviceOTA2.getDeviceUpdateStatus();
                    }
                }, LiveTranslationEntity.DefaultSentenceTimeOut);
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                String str;
                LPDeviceOTA.this.failedCount = 0;
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("getMvRomDownloadStatus response null"));
                    return;
                }
                try {
                    str = new String(okHttpResponseItem.bytes, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    str = "";
                }
                LinkplayLog.i(LPDeviceOTA.TAG, "getMvRomDownloadV2Status onSuccess ".concat(str));
                OTAStatus oTAStatusConvert = OTAStatus.convert(str);
                if (oTAStatusConvert == null || oTAStatusConvert.getStatus() != 0) {
                    LPDeviceOTA.this.lBeginTimer = System.currentTimeMillis();
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    LPDeviceOTA lPDeviceOTA = LPDeviceOTA.this;
                    if (jCurrentTimeMillis - lPDeviceOTA.lBeginTimer >= lPDeviceOTA.MAX_REQUEST_TIMEOUT) {
                        lPDeviceOTA.startTime = System.currentTimeMillis();
                        LPDeviceOTA lPDeviceOTA2 = LPDeviceOTA.this;
                        LPOTAListener lPOTAListener = lPDeviceOTA2.otaListener;
                        if (lPOTAListener != null) {
                            lPOTAListener.otaFailed(lPDeviceOTA2.lastStatus);
                            return;
                        }
                        return;
                    }
                }
                LPDeviceOTA.this.updateFirmwareStatus(oTAStatusConvert);
                LPDeviceOTA.this.mHandler.postDelayed(new Runnable() { // from class: com.linkplay.ota2.presenter.LPDeviceOTA.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LPDeviceOTA lPDeviceOTA3 = LPDeviceOTA.this;
                        if (lPDeviceOTA3.isNotNeedRetry) {
                            return;
                        }
                        lPDeviceOTA3.getDeviceUpdateStatus();
                    }
                }, LiveTranslationEntity.DefaultSentenceTimeOut);
                if (oTAStatusConvert == null || oTAStatusConvert.getStatus() == LPDeviceOTA.this.lastStatus.getStatus()) {
                    return;
                }
                LPDeviceOTA lPDeviceOTA3 = LPDeviceOTA.this;
                lPDeviceOTA3.lastStatus = oTAStatusConvert;
                lPDeviceOTA3.startTime = System.currentTimeMillis();
            }
        });
    }

    private void initOTAConfig(LPOTAConfiguration lPOTAConfiguration) {
        long j2;
        long j3;
        if (this.deviceItem.getDeviceStatus() == null) {
            return;
        }
        if (lPOTAConfiguration == null) {
            lPOTAConfiguration = new LPOTAConfiguration();
        }
        String newVer = this.deviceItem.getDeviceStatus().getNewVer();
        String str = "";
        if (TextUtils.isEmpty(newVer) || ContentTree.ROOT_ID.equals(newVer)) {
            newVer = "";
        }
        this.targetFWVersion = newVer;
        String mCUNewVer = this.deviceItem.getDeviceStatus().getMCUNewVer();
        if (!TextUtils.isEmpty(mCUNewVer) && !ContentTree.ROOT_ID.equals(mCUNewVer)) {
            str = mCUNewVer;
        }
        this.targetMCUVersion = str;
        if (TextUtils.isEmpty(this.targetFWVersion)) {
            j2 = 0;
            j3 = 0;
        } else {
            j2 = lPOTAConfiguration.firmWareWriteTime;
            j3 = lPOTAConfiguration.firmWareRebootTime;
        }
        if (!TextUtils.isEmpty(this.targetMCUVersion)) {
            j2 += lPOTAConfiguration.mcuWriteTime;
            j3 += lPOTAConfiguration.mcueRebootTime;
        }
        if (j2 > 0) {
            this.MAX_WRITE_TIME = j2;
        } else {
            this.MAX_WRITE_TIME = 120000L;
        }
        if (j3 > 0) {
            this.MAX_REBOOT_TIME = j3;
        } else {
            this.MAX_REBOOT_TIME = 120000L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFirmwareStatus(OTAStatus oTAStatus) {
        if (oTAStatus == null) {
            return;
        }
        firmwareUpdateTimeoutWithStatus(oTAStatus);
        updateUI(oTAStatus);
    }

    private void updateUI(OTAStatus oTAStatus) {
        if (oTAStatus == null) {
            return;
        }
        int iCurrentTimeMillis = (int) ((((System.currentTimeMillis() - this.startTime) + Call.Parameters.DEFAULT_CAMERA_ZOOM) / this.maxTimeout) * 100.0f);
        if (iCurrentTimeMillis > 100) {
            iCurrentTimeMillis = 100;
        }
        if (oTAStatus.getStatus() == 0) {
            return;
        }
        if (oTAStatus.getStatus() == 1) {
            oTAStatus.setUpdatePercent(0);
            oTAStatus.setRebootPercent(0);
            if (this.lastStatus == null || oTAStatus.getProgress() < this.lastStatus.getProgress()) {
                return;
            }
            oTAStatus.setDownloadPercent(oTAStatus.getProgress());
            this.lastStatus.setProgress(oTAStatus.getProgress());
            LPOTAListener lPOTAListener = this.otaListener;
            if (lPOTAListener != null) {
                lPOTAListener.otaStatusUpdated(oTAStatus);
                return;
            }
            return;
        }
        if (oTAStatus.getStatus() == 3) {
            oTAStatus.setDownloadPercent(100);
            oTAStatus.setUpdatePercent(iCurrentTimeMillis);
            oTAStatus.setRebootPercent(0);
            LPOTAListener lPOTAListener2 = this.otaListener;
            if (lPOTAListener2 != null) {
                lPOTAListener2.otaStatusUpdated(oTAStatus);
                return;
            }
            return;
        }
        if (oTAStatus.getStatus() == 6) {
            oTAStatus.setDownloadPercent(100);
            oTAStatus.setUpdatePercent(100);
            oTAStatus.setRebootPercent(iCurrentTimeMillis);
            LPOTAListener lPOTAListener3 = this.otaListener;
            if (lPOTAListener3 != null) {
                lPOTAListener3.otaStatusUpdated(oTAStatus);
            }
        }
    }

    public boolean checkUpdate() {
        LPDevice lPDevice = this.deviceItem;
        if (lPDevice == null) {
            return false;
        }
        return lPDevice.getDeviceStatus().hasUpdate() || this.deviceItem.getDeviceStatus().isBuildBackup();
    }

    public void firmwareStartUpdate(LPOTAConfiguration lPOTAConfiguration, final LPOTAListener lPOTAListener) {
        if (this.deviceItem == null) {
            return;
        }
        initOTAConfig(lPOTAConfiguration);
        this.otaListener = lPOTAListener;
        this.lBeginTimer = System.currentTimeMillis();
        LinkplayLog.i(TAG, "firmwareStartUpdate targetFWVersion: " + this.targetFWVersion + "  targetMCUVersion: " + this.targetMCUVersion);
        RequestItem requestItemL = n00.l(this.deviceItem, n00.k(this.deviceItem, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(LPRequestUrl.getMvRemoteUpdateStartUrl(requestItemL), new IOkHttpRequestCallback() { // from class: com.linkplay.ota2.presenter.LPDeviceOTA.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LinkplayLog.i(LPDeviceOTA.TAG, "getMvRemoteUpdateStart onFailure " + exc.getLocalizedMessage());
                LPDeviceOTA.this.startTime = System.currentTimeMillis();
                LPDeviceOTA.this.startDownloadTime = System.currentTimeMillis();
                LPOTAListener lPOTAListener2 = lPOTAListener;
                if (lPOTAListener2 != null) {
                    lPOTAListener2.otaFailed(LPDeviceOTA.this.lastStatus);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                String str;
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("getMvRemoteUpdateStart response null"));
                    return;
                }
                try {
                    str = new String(okHttpResponseItem.bytes, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    str = "";
                }
                LinkplayLog.i(LPDeviceOTA.TAG, "getMvRemoteUpdateStart onSuccess ".concat(str));
                LPDeviceOTA.this.startTime = System.currentTimeMillis();
                LPDeviceOTA.this.startDownloadTime = System.currentTimeMillis();
                LPDeviceOTA.this.getDeviceUpdateStatus();
            }
        });
    }

    public String getVersion() {
        return this.version;
    }
}

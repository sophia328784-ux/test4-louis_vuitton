package com.networkbench.agent.impl.harvest;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.NBSLogger;
import com.networkbench.agent.impl.b.m;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.crash.g;
import com.networkbench.agent.impl.crash.oom.d;
import com.networkbench.agent.impl.data.a.i;
import com.networkbench.agent.impl.data.a.k;
import com.networkbench.agent.impl.h.b;
import com.networkbench.agent.impl.harvest.b.a;
import com.networkbench.agent.impl.harvest.d.c;
import com.networkbench.agent.impl.harvest.type.Harvestable;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.instrumentation.NetworkLibInit;
import com.networkbench.agent.impl.plugin.f.h;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.session.screen.NBSSessionConfig;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.l;
import com.networkbench.agent.impl.util.q;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.s;
import com.networkbench.agent.impl.util.v;
import com.networkbench.agent.impl.util.y;
import com.networkbench.agent.impl.util.z;
import com.networkbench.com.google.gson.JsonArray;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.ct0;
import defpackage.n00;
import defpackage.r81;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class Harvester implements NBSUploadDataInterface {
    private static final int FAILECOUNT = 100;
    private static final String TAG = "Harvester";
    private static boolean isSendLocalOOM = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f37222a;
    private HarvestConnection harvestConnection;
    private HarvestData harvestData;
    private final e log = f.a();
    private final AtomicBoolean isSendState = new AtomicBoolean(false);
    private State state = State.UNINITIALIZED;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected long f37223b = 60;
    private HarvestConfiguration configuration = HarvestConfiguration.getDefaultHarvestConfiguration();
    private final Collection<HarvestLifecycleAware> harvestListeners = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    AtomicInteger f37224c = new AtomicInteger(0);
    AtomicInteger d = new AtomicInteger(0);
    private boolean isSendSaveDataIng = false;
    private long countTime = System.currentTimeMillis();

    /* JADX INFO: renamed from: com.networkbench.agent.impl.harvest.Harvester$6, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass6 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37231a;

        static {
            int[] iArr = new int[State.values().length];
            f37231a = iArr;
            try {
                iArr[State.UNINITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37231a[State.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37231a[State.REDIRECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37231a[State.CONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37231a[State.DISABLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum State {
        UNINITIALIZED,
        DISCONNECTED,
        REDIRECTED,
        CONNECTED,
        DISABLED
    }

    private void changeState(State state) {
        State state2 = State.CONNECTED;
        if (state == state2) {
            this.log.c("connect success");
            a.a().c();
            if (ak.b(r.u().J()) && r.u().aB()) {
                g.a().b();
                m.a().b();
                sendPluginTask();
                sendLocalOOMJsonFiles();
            }
        }
        if (this.state == state2) {
            if (state == State.REDIRECTED) {
                fireOnHarvestDisconnected();
            } else if (state == State.DISABLED) {
                fireOnHarvestDisabled();
            }
        }
        this.state = state;
        this.f37222a = true;
    }

    private void checkCountTime(long j2) {
        int iAJ = r.u().aJ();
        if (iAJ == -1 || j2 < iAJ) {
            return;
        }
        com.networkbench.agent.impl.socket.r.f38217a.clear();
        com.networkbench.agent.impl.socket.r.f38219c.clear();
        this.countTime = System.currentTimeMillis();
    }

    private void configureHarvester(HarvestConfiguration harvestConfiguration) {
        try {
            this.configuration.reconfigure(harvestConfiguration);
            NBSSessionConfig nbsSessionConfig = this.configuration.getNbsSessionConfig();
            this.log.a("configureHarvester NBSSessionConfig : " + nbsSessionConfig.toString());
            r.u().d(this.configuration.getFeature());
            Harvest.setHarvestConfiguration(this.configuration);
        } catch (Throwable th) {
            this.log.a("configureHarvester has error : " + th.getMessage());
        }
    }

    private String convertHarvestableArrayToString(Harvestable... harvestableArr) {
        if (harvestableArr == null) {
            ct0.c();
            return null;
        }
        JsonArray jsonArray = new JsonArray();
        for (Harvestable harvestable : harvestableArr) {
            jsonArray.add(harvestable.asJson());
        }
        return jsonArray.toString();
    }

    private void expireBlockAttachNetwork() {
        Logger.debug(TAG, "expireBlockAttachNetwork begin block size:" + this.harvestData.blockInfos.size());
        if (this.harvestData.blockInfos.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < this.harvestData.blockInfos.size(); i2++) {
            this.harvestData.blockInfos.get(i2).e();
        }
    }

    private void extracted(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(com.networkbench.agent.impl.floatbtnmanager.e.a(r.u().J()));
        try {
            File file = new File(n00.r(File.separator, "ReplayData", sb));
            if (!file.exists()) {
                file.mkdirs();
            }
            long jA = ak.a(file);
            if (((long) bArr.length) + jA > NBSBitmapBeansControl.getInstance().getSessionConfig().replayCacheSize * 1048576) {
                if (jA > NBSBitmapBeansControl.getInstance().getSessionConfig().replayCacheSize * 1048576) {
                    while (ak.a(file) + ((long) bArr.length) > NBSBitmapBeansControl.getInstance().getSessionConfig().replayCacheSize * 1048576) {
                        File[] fileArrListFiles = file.listFiles();
                        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.networkbench.agent.impl.harvest.Harvester.3
                            @Override // java.util.Comparator
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public int compare(File file2, File file3) {
                                return file2.lastModified() - file3.lastModified() >= 0 ? 1 : -1;
                            }
                        });
                        File file2 = fileArrListFiles[0];
                        if (file2 == null) {
                            return;
                        } else {
                            file2.delete();
                        }
                    }
                } else {
                    long length = 0;
                    while (length < bArr.length) {
                        File[] fileArrListFiles2 = file.listFiles();
                        Arrays.sort(fileArrListFiles2, new Comparator<File>() { // from class: com.networkbench.agent.impl.harvest.Harvester.4
                            @Override // java.util.Comparator
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public int compare(File file3, File file4) {
                                return file3.lastModified() - file4.lastModified() >= 0 ? 1 : -1;
                            }
                        });
                        File file3 = fileArrListFiles2[0];
                        if (file3 == null) {
                            return;
                        }
                        length += file3.length();
                        this.log.a("sendReplayData save error  oldSize :" + length);
                        this.log.a("sendReplayData save error , space is full  !!!! , delete file :" + file3.getPath());
                        file3.delete();
                    }
                }
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File file4 = new File(file, NBSBitmapBeansControl.getInstance().getSessionId() + System.currentTimeMillis());
            this.log.a("sendReplayData save  path   :" + file4.getPath());
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file4);
                try {
                    fileOutputStream2.write(bArr);
                    fileOutputStream2.flush();
                    ak.b(fileOutputStream2);
                } catch (Throwable unused) {
                    fileOutputStream = fileOutputStream2;
                    ak.b(fileOutputStream);
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void extractedPlugin(com.networkbench.agent.impl.data.c.a aVar) {
        if (aVar != null) {
            try {
                h.a(aVar);
            } catch (Throwable th) {
                this.log.a("startSchele has an error : ", th);
                return;
            }
        }
        registerOnTaskConfig();
    }

    private void fireOnHarvest() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvest();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestBefore() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestBefore();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestComplete() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestComplete();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestConnected() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestConnected();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestDeviceIdError() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestDeviceIdError();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestDisabled() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestDisabled();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestDisconnected() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestDisconnected();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestError() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestError();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestFilter() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestFilter();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestFinalize() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestFinalize();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestSendFailed() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestSendFailed();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestStart() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestStart();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void fireOnHarvestStop() {
        try {
            Iterator<HarvestLifecycleAware> it = getHarvestListeners().iterator();
            while (it.hasNext()) {
                it.next().onHarvestStop();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private String formatSecret(String str) {
        return str.startsWith("04") ? str.substring(2) : str;
    }

    private String getBatchDataString() {
        try {
            String info = this.harvestData.getBatchDataCommonData().formatInfo();
            String strProcessingBatchData = HarvestDataProcessing.processingBatchData(this.harvestData);
            if (ak.r(strProcessingBatchData)) {
                return "";
            }
            return info + strProcessingBatchData;
        } catch (Throwable th) {
            this.log.a("getBatchDataString has error :" + th);
            return "";
        }
    }

    private String getBatchOldDataString() {
        try {
            String historyData = getHistoryData(this.harvestData.getBatchDataCommonData().formatInfo());
            return historyData + getOldData(historyData.length());
        } catch (Throwable unused) {
            return "";
        }
    }

    private Collection<HarvestLifecycleAware> getHarvestListeners() {
        return new ArrayList(this.harvestListeners);
    }

    private String getHistoryData(String str) {
        try {
            String strProcessingOldBatchData = HarvestDataProcessing.processingOldBatchData(ConfigurationName.PLUGIN_DATA_STORE_PATH, str.length(), true);
            String str2 = strProcessingOldBatchData + HarvestDataProcessing.processingOldBatchData(ConfigurationName.ACTION_DATA_STORE_PATH, strProcessingOldBatchData.length(), true);
            String str3 = str2 + HarvestDataProcessing.processingOldBatchData(ConfigurationName.PAGE_DATA_STORE_PATH, str2.length(), true);
            String str4 = str3 + HarvestDataProcessing.processingOldBatchData(ConfigurationName.TRANSACTIONSPAN_DATA_PATH, str3.length(), true);
            String str5 = str4 + HarvestDataProcessing.processingOldBatchData(ConfigurationName.APPHOTSTART_DATA_STORE_PATH, str4.length(), true);
            String str6 = str5 + HarvestDataProcessing.sendSaveCustomData(str5.length(), 102400L);
            return ak.r(str6) ? "" : str.concat(str6);
        } catch (Throwable th) {
            this.log.a("getHistoryData has error :" + th);
            return "";
        }
    }

    private String getOldData(int i2) {
        try {
            String strProcessingOldBatchData = HarvestDataProcessing.processingOldBatchData(ConfigurationName.BATCH_DATA_PATH, i2, false);
            return ak.r(strProcessingOldBatchData) ? "" : strProcessingOldBatchData;
        } catch (Throwable th) {
            this.log.a("getOldData has error :" + th);
            return "";
        }
    }

    private boolean isInitMobileAgentInvoke() {
        HarvestConnection harvestConnection = this.harvestConnection;
        return (harvestConnection == null || TextUtils.isEmpty(harvestConnection.getApplicationToken())) ? false : true;
    }

    private boolean isInitNetwork() {
        r.u().W();
        return false;
    }

    private boolean isRespSuccess(c cVar) {
        if (cVar != null && !cVar.g()) {
            if (cVar.d()) {
                return true;
            }
            processError(cVar);
        }
        return false;
    }

    private boolean isSessionCertRight(X509Certificate x509Certificate) {
        try {
            return b.a().b(x509Certificate) && b.a().a(x509Certificate);
        } catch (Throwable th) {
            this.log.a("isSessionCertRight error", th);
            return false;
        }
    }

    private void offerAndFilterData() {
        com.networkbench.agent.impl.data.a.h.d();
        k.a();
        fireOnHarvestFilter();
    }

    private void processInitError(c cVar) {
        this.log.e("initMobileAgent errorCode is:" + cVar.j().s);
        int i2 = cVar.j().s;
        if (i2 == -1) {
            this.log.e("errorCode:-1,init error so redirect. HarvestConnection.isRedirectSuccess: " + HarvestConnection.isRedirectSuccess);
            if (HarvestConnection.isRedirectSuccess) {
                return;
            }
            transition(State.DISCONNECTED);
            return;
        }
        switch (i2) {
            case 460:
                this.log.c("errorCode:460, Invalid key(" + r.u().z() + ")");
                fireOnHarvestDisabled();
                transition(State.DISABLED);
                break;
            case 461:
                if (HarvestConnection.isRedirectSuccess) {
                    transition(State.REDIRECTED);
                } else {
                    transition(State.DISCONNECTED);
                }
                com.networkbench.agent.impl.data.type.b.a().h();
                this.harvestConnection.setApplicationToken("");
                break;
            case 462:
                this.log.e("invalid data 462");
                break;
            case 463:
                this.log.c("errorCode:463, Invalid device id(did).");
                if (HarvestConnection.isRedirectSuccess) {
                    transition(State.REDIRECTED);
                } else {
                    transition(State.DISCONNECTED);
                }
                this.harvestConnection.setApplicationToken("");
                com.networkbench.agent.impl.data.type.b.a().h();
                break;
            case 464:
                fireOnHarvestDisabled();
                transition(State.DISABLED);
                break;
            case 465:
                this.log.e("decrypt data failed 465");
                transition(State.REDIRECTED);
                this.harvestConnection.setApplicationToken("");
                break;
            default:
                switch (i2) {
                    case 470:
                        this.log.c("errorCode:470,Configuration has been overdue.");
                        if (HarvestConnection.isRedirectSuccess) {
                            transition(State.REDIRECTED);
                        } else {
                            transition(State.DISCONNECTED);
                        }
                        this.harvestConnection.setApplicationToken("");
                        com.networkbench.agent.impl.data.type.b.a().h();
                        break;
                    case 471:
                        this.log.c("errorCode:471.");
                        break;
                    case 472:
                        this.log.c("errorCode:472.");
                        break;
                    default:
                        this.log.a("An unknown error occurred when sent data to the Collector. errorcode is " + cVar.j().s);
                        break;
                }
                break;
        }
    }

    private void registerOnTaskConfig() {
        com.networkbench.agent.impl.c.g.e("registerOnTaskConfig  ");
        if (h.g) {
            com.networkbench.agent.impl.c.g.e("registerOnTaskConfig  run");
            com.networkbench.agent.impl.plugin.f.g gVar = new com.networkbench.agent.impl.plugin.f.g(com.networkbench.agent.impl.plugin.e.on_task);
            h.a(gVar);
            gVar.d();
        }
    }

    private boolean responseDispose(c cVar) {
        if (cVar == null || cVar.g()) {
            fireOnHarvestSendFailed();
            return true;
        }
        if (cVar.f()) {
            processError(cVar);
            if (cVar.j().s != 460 && cVar.j().s != 462 && cVar.j().s != 464 && cVar.j().s != -1) {
                return true;
            }
        }
        return false;
    }

    private void sendBatchOldData() {
        String batchOldDataString = getBatchOldDataString();
        boolean zSendBatchData = sendBatchData(batchOldDataString);
        int length = batchOldDataString.length();
        if (zSendBatchData) {
            for (int i2 = 0; length > 102400 && i2 < 10; i2++) {
                String batchOldDataString2 = getBatchOldDataString();
                sendBatchData(batchOldDataString2);
                length = batchOldDataString2.length();
            }
        }
    }

    private void sendBlockDatas() {
        if (this.harvestData.blockInfos.size() <= 0) {
            this.log.a("sendBlockDatas : 内存中没有卡顿数据...停止发送..");
            return;
        }
        if (!isEnableUpload()) {
            this.log.a("sendBlockDatas  : skipping upload  EnableUpload = false");
            return;
        }
        com.networkbench.agent.impl.c.g.p("sendBlockDatas : " + this.harvestData.blockInfos.size());
        for (int i2 = 0; i2 < this.harvestData.blockInfos.size(); i2++) {
            com.networkbench.agent.impl.b.k kVar = this.harvestData.blockInfos.get(i2);
            m.a().b(kVar, false);
            this.harvestData.blockInfos.remove(kVar);
        }
    }

    private void sendData() {
        if (this.isSendState.get()) {
            return;
        }
        try {
            this.isSendState.set(true);
            r.u().ax();
            fireOnHarvestBefore();
            fireOnHarvest();
            fireOnHarvestFinalize();
            ai.b();
            d();
            sendSaveData();
        } catch (Throwable th) {
            try {
                Logger.error(TAG, "Harvester sendData has an error", th);
            } finally {
                this.isSendState.set(false);
            }
        }
    }

    private void sendLocalOOMJsonFiles() {
        if (isEnableUpload()) {
            com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.harvest.Harvester.1
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    if (Harvester.isSendLocalOOM) {
                        return;
                    }
                    Logger.debug(Harvester.TAG, "sendLocalOOMJsonFiles");
                    new d(new com.networkbench.agent.impl.util.c(r.u().J())).a((File) null);
                    boolean unused = Harvester.isSendLocalOOM = true;
                }
            });
        } else {
            this.log.a("sendLocalOOMJsonFiles  : skipping upload  EnableUpload = false");
        }
    }

    private void sendPluginTask() {
        if (isEnableUpload()) {
            com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.harvest.Harvester.2
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    try {
                        Harvester.this.sendBatchDataNoCommonData(HarvestData.getPluginData().a());
                        HarvestData.getPluginData().b();
                    } catch (com.networkbench.agent.impl.util.d e2) {
                        j.a("sendPluginTask " + e2.getMessage());
                    } catch (Throwable th) {
                        j.e("sendPluginTask has an error :" + th.getMessage());
                    }
                }
            });
        } else {
            this.log.a("sendPluginTask skipping upload EnableUpload is false");
        }
    }

    private void sendSaveData() {
        if (this.isSendSaveDataIng) {
            com.networkbench.agent.impl.c.g.v("正在上传缓存的数据, 此次不上传.... ");
            return;
        }
        if (this.harvestConnection == null) {
            com.networkbench.agent.impl.c.g.v("harvestConnection == null ");
            return;
        }
        this.isSendSaveDataIng = true;
        try {
            sendSaveReplayData();
        } finally {
            this.isSendSaveDataIng = false;
        }
    }

    private String setSM4key() {
        return com.networkbench.agent.impl.h.d.a();
    }

    private boolean stateIn(State state, State... stateArr) {
        for (State state2 : stateArr) {
            if (state == state2) {
                return true;
            }
        }
        return false;
    }

    private void transition(State state) {
        if (this.f37222a) {
            this.log.f("Ignoring multiple transition: " + state);
            return;
        }
        State state2 = this.state;
        if (state2 == state) {
            return;
        }
        int i2 = AnonymousClass6.f37231a[state2.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        r81.b();
                        return;
                    } else if (!stateIn(state, State.DISCONNECTED, State.REDIRECTED, State.DISABLED)) {
                        r81.b();
                        return;
                    }
                } else if (!stateIn(state, State.UNINITIALIZED, State.DISCONNECTED, State.CONNECTED, State.DISABLED)) {
                    r81.b();
                    return;
                }
            } else if (!stateIn(state, State.UNINITIALIZED, State.REDIRECTED, State.CONNECTED, State.DISABLED)) {
                r81.b();
                return;
            }
        } else if (!stateIn(state, State.DISCONNECTED, State.REDIRECTED, state, State.CONNECTED, State.DISABLED)) {
            r81.b();
            return;
        }
        changeState(state);
    }

    public void a() {
        this.harvestConnection.setConnectInformation(new ConnectInformation());
        this.harvestConnection.setApplicationToken(r.u().K());
        this.harvestConnection.useSsl(r.u().Q());
        transition(State.DISCONNECTED);
        f();
    }

    public void addHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            this.log.e("Can't add null harvest listener");
            new Exception().printStackTrace();
            return;
        }
        synchronized (this.harvestListeners) {
            try {
                if (this.harvestListeners.contains(harvestLifecycleAware)) {
                    return;
                }
                this.harvestListeners.add(harvestLifecycleAware);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        if (isInitMobileAgentInvoke()) {
            this.log.d("Skipping connect call, saved state is available: " + this.harvestConnection.getApplicationToken());
            fireOnHarvestConnected();
            transition(State.CONNECTED);
            f();
            return;
        }
        if (this.d.get() >= 100) {
            this.log.c("Three consecutive failures in redirect, stopping polling...");
            return;
        }
        c redirectHost = this.harvestConnection.getRedirectHost();
        if (redirectHost == null) {
            this.log.e("Unable to connect to the Redirect.");
            AtomicInteger atomicInteger = this.d;
            atomicInteger.set(atomicInteger.get() + 1);
            return;
        }
        if (redirectHost.e()) {
            transition(State.DISABLED);
            NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, redirectHost.a());
            return;
        }
        if (!redirectHost.h()) {
            AtomicInteger atomicInteger2 = this.d;
            atomicInteger2.set(atomicInteger2.get() + 1);
            return;
        }
        String strK = redirectHost.k();
        s.f38398a = strK;
        this.harvestConnection.setCollectorHost(strK);
        this.harvestConnection.setSoDisable(redirectHost.o());
        q.a(com.networkbench.agent.impl.harvest.a.m.a().f37270b);
        q.b(com.networkbench.agent.impl.harvest.a.m.a().f37269a);
        if (r.u().B) {
            try {
                com.networkbench.agent.impl.util.a.a.e.a();
                if (TextUtils.isEmpty(com.networkbench.agent.impl.harvest.a.m.a().f37272e) || com.networkbench.agent.impl.harvest.a.m.a().f37272e.equalsIgnoreCase("null")) {
                    throw new l("certificate download config is error");
                }
                this.log.a("sessionCertificate:" + com.networkbench.agent.impl.harvest.a.m.a().f37272e);
                X509Certificate x509CertificateB = b.a().b(com.networkbench.agent.impl.harvest.a.m.a().f37272e);
                if (x509CertificateB == null || !isSessionCertRight(x509CertificateB)) {
                    throw new l("certificate verify error");
                }
                String sM4key = setSM4key();
                r.u().s(sM4key);
                r.u().a(x509CertificateB);
                com.networkbench.agent.impl.harvest.a.e.f37259c = sM4key;
                z.a().a(sM4key);
                com.networkbench.agent.impl.harvest.a.e.f37258b = b.a().a(x509CertificateB, com.networkbench.agent.impl.harvest.a.e.f37259c);
                this.log.a("sm4 raw value:" + com.networkbench.agent.impl.harvest.a.e.f37259c + ", secret value:" + com.networkbench.agent.impl.harvest.a.e.f37258b);
                if (NBSLogger.getLogTraceWrapper() != null) {
                    Logger.debug(TAG, "sm2 encrypt log aes key");
                    NBSLogger.getLogTraceWrapper().a(formatSecret(b.a().a(x509CertificateB, NBSLogger.getLogTraceWrapper().a())));
                } else {
                    Logger.warning(TAG, "logger is not init ,please check");
                }
            } catch (NoClassDefFoundError unused) {
                throw new com.networkbench.agent.impl.util.m("not find bcprov jar");
            }
        }
        transition(State.REDIRECTED);
        f();
    }

    public void c() {
        if (isInitMobileAgentInvoke()) {
            this.log.d("Skipping connect call, saved state is available: " + this.harvestConnection.getApplicationToken());
            fireOnHarvestConnected();
            transition(State.CONNECTED);
            f();
            return;
        }
        if (this.f37224c.get() >= 100) {
            this.log.c("Three consecutive failures in initMobileAgent, stopping polling...");
            return;
        }
        c cVarSendConnect = this.harvestConnection.sendConnect();
        if (cVarSendConnect == null) {
            this.log.e("Unable to connect to the Collector.");
            AtomicInteger atomicInteger = this.f37224c;
            atomicInteger.set(atomicInteger.get() + 1);
            return;
        }
        HarvestConfiguration harvestConfigurationQ = cVarSendConnect.q();
        if (cVarSendConnect.e()) {
            this.log.c("NBSAgent isNeedDisabled disabled");
            transition(State.DISABLED);
            NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, cVarSendConnect.a());
            return;
        }
        if (harvestConfigurationQ == null) {
            processInitError(cVarSendConnect);
            fireOnHarvestDeviceIdError();
            AtomicInteger atomicInteger2 = this.f37224c;
            atomicInteger2.set(atomicInteger2.get() + 1);
            return;
        }
        this.harvestConnection.setApplicationToken(harvestConfigurationQ.getToken());
        if (harvestConfigurationQ.getEnabled() != 1) {
            this.log.c("NBSAgent disabled");
            configureHarvester(harvestConfigurationQ);
            fireOnHarvestConnected();
            transition(State.DISABLED);
            r.u().d(false);
            fireOnHarvestDeviceIdError();
            return;
        }
        configureHarvester(harvestConfigurationQ);
        r.u().c(System.currentTimeMillis() / 1000);
        this.log.a(" setLastConnectedTime : " + (System.currentTimeMillis() / 1000));
        r.u().h(harvestConfigurationQ.getToken());
        r.u().f(harvestConfigurationQ.getCrashTrails());
        Harvest.getInstance().initCrashActions();
        fireOnHarvestConnected();
        r.p = 1 ^ (ak.b(r.u().J()) ? 1 : 0);
        if (isInitNetwork()) {
            r.u().e(NetworkLibInit.installNetworkMonitor());
            r.A.a("--->init network in : initMobileAgent connect end...");
        }
        if (r.u().ae()) {
            try {
                startSchele(cVarSendConnect.r());
            } catch (Throwable th) {
                this.log.a("extensionGetTaskDefs has error : ", th);
            }
        }
        DeviceData.oldUserId = r.u().t();
        transition(State.CONNECTED);
        f();
    }

    public void d() {
        try {
            if (r.u().W()) {
                ai.a();
            }
            refreshSendState(true);
            offerAndFilterData();
            if (sendBatchData(getBatchDataString())) {
                sendBatchOldData();
            }
            refreshSendState(false);
            com.networkbench.agent.impl.j.e.a();
            sendBlockDatas();
            if (r.p == 0 && r.u().l()) {
                sendReplayData();
            }
        } catch (Exception unused) {
        } finally {
            h.b();
        }
    }

    public void doDisabledTimeout(long j2) {
        transition(State.DISABLED);
        NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, j2);
    }

    public void e() {
        Harvest.stop();
        fireOnHarvestDisabled();
    }

    public void expireHarvestData() {
        checkCountTime(System.currentTimeMillis() - this.countTime);
        expireHttpErrors();
        expireHttpTransactions();
        expireOverLapData();
        expireBlockAttachNetwork();
    }

    public void expireHttpErrors() {
        try {
            com.networkbench.agent.impl.data.g httpErrors = this.harvestData.getHttpErrors();
            synchronized (httpErrors) {
                try {
                    ArrayList<com.networkbench.agent.impl.data.f> arrayList = new ArrayList();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long jConvert = TimeUnit.MILLISECONDS.convert(this.configuration.getActionAge(), TimeUnit.SECONDS);
                    for (com.networkbench.agent.impl.data.f fVar : httpErrors.b()) {
                        Long lQ = fVar.q();
                        if (lQ != null && lQ.longValue() < jCurrentTimeMillis - jConvert) {
                            arrayList.add(fVar);
                        }
                    }
                    for (com.networkbench.agent.impl.data.f fVar2 : arrayList) {
                        if (fVar2.b() != 1 && fVar2.b() != 2 && fVar2.b() != 3) {
                            this.harvestData.getHttpErrors().b(fVar2);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
        }
    }

    public void expireHttpTransactions() {
        ActionDatas actionDatas = this.harvestData.getActionDatas();
        synchronized (actionDatas) {
            try {
                ArrayList<ActionData> arrayList = new ArrayList();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jConvert = TimeUnit.MILLISECONDS.convert(this.configuration.getActionAge(), TimeUnit.SECONDS);
                for (ActionData actionData : actionDatas.getActionDatas()) {
                    Long timestamp = actionData.getTimestamp();
                    if (timestamp != null && timestamp.longValue() < jCurrentTimeMillis - jConvert) {
                        arrayList.add(actionData);
                    }
                }
                for (ActionData actionData2 : arrayList) {
                    if (actionData2.getAppPhase() != 1 && actionData2.getAppPhase() != 2 && actionData2.getAppPhase() != 3) {
                        actionDatas.remove(actionData2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void expireOverLapData() {
        Logger.debug(TAG, "expireOverLapData pageData size is:" + Harvest.getInstance().getHarvestData().getPageDatas().c().size());
        HarvestData.successPageDatas.reset();
        for (HarvestableArray harvestableArray : Harvest.getInstance().getHarvestData().getPageDatas().c()) {
            if (harvestableArray instanceof com.networkbench.agent.impl.data.d.h) {
                com.networkbench.agent.impl.data.d.h hVar = (com.networkbench.agent.impl.data.d.h) harvestableArray;
                if (System.currentTimeMillis() - hVar.m() >= 10000) {
                    hVar.r();
                    if (!hVar.q()) {
                        HarvestData.successPageDatas.a(harvestableArray);
                        try {
                            if (r.u().aC()) {
                                NBSAppAgent.debugLog(harvestableArray.toJsonString(), "TingyunSDK_page");
                            }
                        } catch (Throwable th) {
                            com.networkbench.agent.impl.c.g.j("NBSPageData addAll() has an error : " + th);
                        }
                        com.networkbench.agent.impl.c.g.v("expireOverLapData  successPageDatas : " + HarvestData.successPageDatas.e());
                    }
                }
            }
        }
        try {
            List<HarvestableArray> listC = com.networkbench.agent.impl.data.d.j.c();
            if (listC.size() > 0) {
                Harvest.getInstance().getHarvestData().getPageDatas().a(listC);
                HarvestData.successPageDatas.a(listC);
                try {
                    for (HarvestableArray harvestableArray2 : listC) {
                        if (r.u().aC()) {
                            NBSAppAgent.debugLog(harvestableArray2.toJsonString(), "TingyunSDK_page");
                        }
                    }
                } catch (Throwable th2) {
                    com.networkbench.agent.impl.c.g.j("NBSPageData addAll() has an error : " + th2);
                }
            }
        } catch (Throwable th3) {
            this.log.a("error overlaps:", th3);
        }
    }

    public void f() {
        this.f37222a = false;
        try {
            expireHarvestData();
            int i2 = AnonymousClass6.f37231a[this.state.ordinal()];
            if (i2 == 1) {
                a();
                return;
            }
            if (i2 == 2) {
                b();
                return;
            }
            if (i2 == 3) {
                fireOnHarvestBefore();
                c();
            } else if (i2 == 4) {
                sendData();
            } else {
                if (i2 != 5) {
                    throw new IllegalStateException();
                }
                e();
            }
        } catch (l e2) {
            this.log.c("certificate is wrong, please check");
            e2.printStackTrace();
        } catch (com.networkbench.agent.impl.util.m e3) {
            this.log.c("please check if bcprov jar is implementation in build.gradle");
            e3.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public AtomicBoolean getIsSendState() {
        return this.isSendState;
    }

    public void immediatelyInitMobileAgent() {
        transition(State.REDIRECTED);
        this.harvestConnection.setApplicationToken("");
    }

    public boolean isConnect() {
        return State.CONNECTED == this.state;
    }

    public boolean isDisabled() {
        return State.DISABLED == this.state;
    }

    @Override // com.networkbench.agent.impl.harvest.NBSUploadDataInterface
    public boolean isEnableUpload() {
        return r.u().aB();
    }

    public void processError(c cVar) {
        this.log.e("errorCode is:" + cVar.j().s);
        switch (cVar.j().s) {
            case 460:
                this.log.c("errorCode:460, Invalid key(" + r.u().z() + ")");
                fireOnHarvestDisabled();
                transition(State.DISABLED);
                break;
            case 461:
                transition(State.REDIRECTED);
                com.networkbench.agent.impl.data.type.b.a().h();
                this.harvestConnection.setApplicationToken("");
                break;
            case 462:
                this.log.e("invalid data 462");
                break;
            case 463:
                this.log.c("errorCode:463, Invalid device id(did).");
                transition(State.REDIRECTED);
                this.harvestConnection.setApplicationToken("");
                com.networkbench.agent.impl.data.type.b.a().h();
                break;
            case 464:
                this.log.c("errorCode:464,");
                fireOnHarvestDisabled();
                transition(State.DISABLED);
                break;
            case 465:
                this.log.e("decrypt data failed 465");
                transition(State.REDIRECTED);
                this.harvestConnection.setApplicationToken("");
                break;
            case 466:
            case 467:
            case 468:
            case 469:
            default:
                this.log.a("An unknown error occurred when sent data to the Collector. errorcode is " + cVar.j().s);
                break;
            case 470:
                this.log.c("errorCode:470,Configuration has been overdue.");
                transition(State.REDIRECTED);
                this.harvestConnection.setApplicationToken("");
                com.networkbench.agent.impl.data.type.b.a().h();
                break;
            case 471:
                this.log.c("errorCode:471.");
                break;
            case 472:
                this.log.c("errorCode:472.");
                break;
        }
    }

    public void refreshSendState(boolean z) {
        this.harvestData.getActionDatas().isSendState.set(z);
        this.harvestData.getHttpErrors().f36903a.set(z);
        com.networkbench.agent.impl.crash.a.a.c().f36594b.set(z);
        if (z) {
            return;
        }
        this.harvestData.getActionDatas().recoverData();
        this.harvestData.getHttpErrors().d();
        com.networkbench.agent.impl.crash.a.a.c().f();
    }

    public void removeHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        synchronized (this.harvestListeners) {
            try {
                if (this.harvestListeners.contains(harvestLifecycleAware)) {
                    this.harvestListeners.remove(harvestLifecycleAware);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void saveHttpData() {
        try {
            expireOverLapData();
            offerAndFilterData();
            refreshSendState(true);
            com.networkbench.agent.impl.m.b.a(this.harvestData.getBatchDataCommonData().formatInfo() + HarvestDataProcessing.processingBatchData(this.harvestData), System.currentTimeMillis(), ConfigurationName.BATCH_DATA_PATH);
            refreshSendState(false);
        } catch (Throwable unused) {
            refreshSendState(false);
        }
    }

    public void saveReplayData() {
        if (r.p == 0 && r.u().l()) {
            extracted(NBSBitmapBeansControl.getInstance().getBitmapBeans().getSendData(false));
        }
    }

    public boolean sendBatchData(String str) {
        if (r.u().k() && r.u().ap()) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            e eVar = this.log;
            if (zIsEmpty) {
                eVar.a("skip sendBatchData, sendBatchData is empty");
            } else {
                eVar.a("begin send sendBatchData");
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.state != State.CONNECTED) {
                    com.networkbench.agent.impl.m.b.a(str, jCurrentTimeMillis, ConfigurationName.BATCH_DATA_PATH);
                    return false;
                }
                if (!isEnableUpload()) {
                    com.networkbench.agent.impl.m.b.a(str, jCurrentTimeMillis, ConfigurationName.BATCH_DATA_PATH);
                    this.log.a("skip sendBatchData, isEnableUpload  =  false");
                    return false;
                }
                com.networkbench.agent.impl.harvest.d.a aVar = (com.networkbench.agent.impl.harvest.d.a) this.harvestConnection.sendData(str);
                if (aVar.e()) {
                    transition(State.DISABLED);
                    NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, aVar.a());
                }
                if (!responseDispose(aVar)) {
                    if (r.u().ae()) {
                        try {
                            if (r.p == 0) {
                                extractedPlugin(aVar.r());
                            }
                        } catch (Throwable th) {
                            this.log.a("extensionGetTaskDefs has error : ", th);
                        }
                    }
                    this.log.a("send sendBatchData success");
                    return true;
                }
                com.networkbench.agent.impl.m.b.a(str, jCurrentTimeMillis, ConfigurationName.BATCH_DATA_PATH);
            }
        }
        return false;
    }

    public void sendBatchDataNoCommonData(String str) {
        sendBatchData(this.harvestData.getBatchDataCommonData().formatInfo() + str);
    }

    public void sendForgeUserActionItemHttp(String str, com.networkbench.agent.impl.k.b bVar) {
        if (Harvest.isUI_enabled()) {
            if (!com.networkbench.agent.impl.crash.d.f36646b) {
                com.networkbench.agent.impl.data.a.g gVar = new com.networkbench.agent.impl.data.a.g(0L, str, bVar.f37424e, bVar);
                gVar.a(com.networkbench.agent.impl.data.a.g.a.appCrash.a());
                gVar.b(0L);
                this.harvestData.getNbsEventActions().a(gVar);
                return;
            }
            com.networkbench.agent.impl.data.a.g gVar2 = new com.networkbench.agent.impl.data.a.g(0L, str, com.networkbench.agent.impl.data.a.h.b(), bVar);
            gVar2.a(com.networkbench.agent.impl.data.a.g.a.appCrash.a());
            gVar2.b(0L);
            i iVar = new i();
            iVar.a(gVar2);
            sendBatchDataNoCommonData(iVar.formatInfo());
        }
    }

    public void sendForgeUserActionItemPb(String str) {
        if (Harvest.isUI_enabled()) {
            com.networkbench.agent.impl.data.a.g gVar = new com.networkbench.agent.impl.data.a.g(0L, str, com.networkbench.agent.impl.data.a.h.b(), (com.networkbench.agent.impl.k.b) null);
            gVar.a(com.networkbench.agent.impl.data.a.g.a.appCrash.a());
            gVar.b(0L);
            this.harvestData.getNbsEventActions().reset();
            this.harvestData.getNbsEventActions().a(gVar);
            sendPbData(this.harvestData.getNbsEventActions());
        }
    }

    public void sendPbData(com.networkbench.agent.impl.data.b.a aVar) {
        if (aVar.b() <= 0) {
            com.networkbench.agent.impl.c.g.j("sendPbData, data  size:" + aVar.b());
        } else {
            if (responseDispose(this.harvestConnection.sendDataPb(convertHarvestableArrayToString(aVar), com.networkbench.agent.impl.j.d.UPLOAD_MOBILE_DATA.a(), this.harvestConnection.getApplicationToken(), "token="))) {
                return;
            }
            aVar.reset();
        }
    }

    public void sendReplayData() {
        byte[] sendData = NBSBitmapBeansControl.getInstance().getBitmapBeans().getSendData(false);
        if (!isEnableUpload()) {
            extracted(sendData);
            return;
        }
        if (NBSBitmapBeansControl.getInstance().getSessionConfig().replayUploadType == 0 && !v.b(r.u().J())) {
            extracted(sendData);
            this.log.a("sendReplayData  replayUploadType==0  , isWifiNetworkAvailable = false  ,  return!  ");
            return;
        }
        c cVarSendData = this.harvestConnection.sendData(sendData);
        if (cVarSendData != null && cVarSendData.e()) {
            transition(State.DISABLED);
            NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, cVarSendData.a());
        }
        if (isRespSuccess(cVarSendData)) {
            return;
        }
        extracted(sendData);
    }

    public void sendSaveReplayData() {
        BufferedOutputStream bufferedOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        IOException e2;
        BufferedInputStream bufferedInputStream;
        if (r.p == 0 && r.u().l() && isEnableUpload()) {
            if (NBSBitmapBeansControl.getInstance().getSessionConfig().replayUploadType == 0 && !v.b(r.u().J())) {
                this.log.a("sendSaveReplayData  replayUploadType==0  , isWifiNetworkAvailable = false  ,  return!  ");
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(com.networkbench.agent.impl.floatbtnmanager.e.a(r.u().J()));
            File file = new File(n00.r(File.separator, "ReplayData", sb));
            if (file.exists()) {
                try {
                    for (File file2 : file.listFiles()) {
                        this.log.a("sendSaveReplayData  childFile path:" + file2.getPath());
                        if (file2.getName().startsWith(FileUtils.HIDDEN_PREFIX)) {
                            this.log.a("sendSaveReplayData  childFile name:" + file2.getName() + ",  continue !");
                        } else {
                            BufferedInputStream bufferedInputStream2 = null;
                            try {
                                bufferedInputStream = new BufferedInputStream(new FileInputStream(file2));
                                try {
                                    try {
                                        byteArrayOutputStream = new ByteArrayOutputStream();
                                        try {
                                            bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
                                            try {
                                                try {
                                                    byte[] bArr = new byte[1024];
                                                    while (true) {
                                                        int i2 = bufferedInputStream.read(bArr);
                                                        if (i2 == -1) {
                                                            break;
                                                        } else {
                                                            bufferedOutputStream.write(bArr, 0, i2);
                                                        }
                                                    }
                                                    ak.b(bufferedInputStream, bufferedOutputStream);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    bufferedInputStream2 = bufferedInputStream;
                                                    ak.b(bufferedInputStream2, bufferedOutputStream);
                                                    throw th;
                                                }
                                            } catch (IOException e3) {
                                                e2 = e3;
                                                com.networkbench.agent.impl.c.g.b(" sendSaveReplayData error : ", e2);
                                                ak.b(bufferedInputStream, bufferedOutputStream);
                                            }
                                        } catch (IOException e4) {
                                            bufferedOutputStream = null;
                                            e2 = e4;
                                        }
                                    } catch (IOException e5) {
                                        bufferedOutputStream = null;
                                        e2 = e5;
                                        byteArrayOutputStream = null;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedOutputStream = null;
                                }
                            } catch (IOException e6) {
                                byteArrayOutputStream = null;
                                bufferedOutputStream = null;
                                e2 = e6;
                                bufferedInputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedOutputStream = null;
                            }
                            if (byteArrayOutputStream == null) {
                                return;
                            }
                            if (!isRespSuccess(this.harvestConnection.sendData(byteArrayOutputStream.toByteArray()))) {
                                com.networkbench.agent.impl.c.g.j("sendReplayData  has an error ,  stop to  send data!!");
                                return;
                            }
                            file2.delete();
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public void setConfiguration(HarvestConfiguration harvestConfiguration) {
        this.configuration = harvestConfiguration;
    }

    public void setHarvestConnection(HarvestConnection harvestConnection) {
        this.harvestConnection = harvestConnection;
    }

    public void setHarvestData(HarvestData harvestData) {
        this.harvestData = harvestData;
    }

    public void start() {
        fireOnHarvestStart();
    }

    public void startSchele(final com.networkbench.agent.impl.data.c.a aVar) {
        com.networkbench.agent.impl.c.g.e("extensionGetTaskDefs");
        h.a();
        com.networkbench.agent.impl.util.c.c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.harvest.Harvester.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Harvester.this.extractedPlugin(aVar);
                } catch (Throwable th) {
                    Harvester.this.log.a("startSchele isRunNingOfIdentification  has an error : ", th);
                }
            }
        });
    }

    public void stop() {
        fireOnHarvestStop();
    }
}

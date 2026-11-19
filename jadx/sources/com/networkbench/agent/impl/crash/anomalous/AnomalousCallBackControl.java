package com.networkbench.agent.impl.crash.anomalous;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.data.AnomalousData;
import com.networkbench.agent.impl.instrumentation.TingyunAnomalousDataFeedBack;
import com.networkbench.agent.impl.instrumentation.TingyunErrorIdGenerateBlock;
import com.networkbench.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes2.dex */
public class AnomalousCallBackControl {
    public static final int ANR = 2;
    public static final int CRASH = 1;
    public static final int HTTPERROR = 4;
    public static final int PAGEKARTUN = 8;
    private TingyunAnomalousDataFeedBack customEventFeedBack;
    private TingyunErrorIdGenerateBlock errorIdGenerateBlock;
    private int type;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final AnomalousCallBackControl f36620a = new AnomalousCallBackControl();

        private a() {
        }
    }

    private boolean checkEvenCallBack(int i2) {
        return (this.type & i2) != 0;
    }

    public static AnomalousCallBackControl getInstance() {
        return a.f36620a;
    }

    public void answerAnomalousCallBack(int i2, JsonArray jsonArray, JsonArray jsonArray2, String str) {
        AnomalousData anomalousData = new AnomalousData();
        anomalousData.setType(i2);
        anomalousData.setThrowable(str);
        anomalousData.setStacktrace(jsonArray);
        anomalousData.setAllStacktrace(jsonArray2);
        anomalousData.setThreadId(Thread.currentThread().getId());
        anomalousData.setThreadName(Thread.currentThread().getName());
        anomalousData.setBuildId(NBSAgent.getBuildId());
        customEventFeedBack(anomalousData, i2);
    }

    public void customEventFeedBack(AnomalousData anomalousData, int i2) {
        if (checkEvenCallBack(i2)) {
            this.customEventFeedBack.dataTypeFeedBack(anomalousData);
        }
    }

    public TingyunErrorIdGenerateBlock getErrorIdGenerateBlock() {
        return this.errorIdGenerateBlock;
    }

    public String getUuidCallBack() {
        return this.errorIdGenerateBlock.setErrorIdGenerateBlock();
    }

    public void setAnomalousDataFeedBack(int i2, TingyunAnomalousDataFeedBack tingyunAnomalousDataFeedBack) {
        this.customEventFeedBack = tingyunAnomalousDataFeedBack;
        this.type = i2;
    }

    public void setErrorIdGenerateBlock(TingyunErrorIdGenerateBlock tingyunErrorIdGenerateBlock) {
        this.errorIdGenerateBlock = tingyunErrorIdGenerateBlock;
    }

    public void answerAnomalousCallBack(int i2, String str, JsonArray jsonArray, JsonArray jsonArray2) {
        AnomalousData anomalousData = new AnomalousData();
        anomalousData.setType(i2);
        anomalousData.setThrowable(str);
        anomalousData.setAllStacktrace(jsonArray);
        anomalousData.setThreadId(Thread.currentThread().getId());
        anomalousData.setThreadName(Thread.currentThread().getName());
        anomalousData.setBuildId(NBSAgent.getBuildId());
        anomalousData.setImageUuid(jsonArray2);
        customEventFeedBack(anomalousData, i2);
    }
}

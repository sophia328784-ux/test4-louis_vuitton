package com.networkbench.agent.impl.harvest;

/* JADX INFO: loaded from: classes2.dex */
public interface HarvestLifecycleAware {
    void onHarvest();

    void onHarvestBefore();

    void onHarvestComplete();

    void onHarvestConnected();

    void onHarvestDeviceIdError();

    void onHarvestDisabled();

    void onHarvestDisconnected();

    void onHarvestError();

    void onHarvestFilter();

    void onHarvestFinalize();

    void onHarvestSendFailed();

    void onHarvestStart();

    void onHarvestStop();
}

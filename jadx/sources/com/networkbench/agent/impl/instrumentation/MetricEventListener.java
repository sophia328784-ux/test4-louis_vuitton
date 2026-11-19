package com.networkbench.agent.impl.instrumentation;

/* JADX INFO: loaded from: classes2.dex */
public interface MetricEventListener {
    void addNetworkToTraces(NBSTransactionState nBSTransactionState, NBSUnit nBSUnit);

    void enterMethod(NBSUnit nBSUnit);

    void exitMethod(NBSUnit nBSUnit);

    void exitMethodCustom(String str, NBSUnit nBSUnit);

    long getStartTime();
}

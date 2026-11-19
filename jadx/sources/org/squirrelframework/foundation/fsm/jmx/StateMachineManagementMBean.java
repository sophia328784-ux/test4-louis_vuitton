package org.squirrelframework.foundation.fsm.jmx;

/* JADX INFO: loaded from: classes5.dex */
public interface StateMachineManagementMBean {
    void fireEvent(String str, String str2);

    float getAverageTranstionConsumedTime();

    String getCurrentState();

    String getIdentifier();

    String getLastErrorMessage();

    String getPerfStatDetails();

    long getTotalTransitionDeclinedTimes();

    long getTotalTransitionFailedTimes();

    long getTotalTransitionInvokedTimes();

    String toggleLogging();

    String togglePerfMon();
}

package org.squirrelframework.foundation.fsm.jmx;

import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.ConverterProvider;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineLogger;
import org.squirrelframework.foundation.fsm.StateMachinePerformanceModel;
import org.squirrelframework.foundation.fsm.StateMachinePerformanceMonitor;
import org.squirrelframework.foundation.fsm.impl.AbstractStateMachine;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineManagement implements StateMachineManagementMBean {
    private StateMachineLogger fsmLogger;
    private StateMachinePerformanceMonitor performanceMonitor;
    private StateMachine<?, ?, ?, ?> stateMachine;
    private long totalTransitionInvokedTimes = 0;
    private long totalTransitionFailedTimes = 0;
    private long totalTransitionDeclinedTimes = 0;
    private float averageTranstionConsumedTime = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private String perfStatDetails = "[Empty]";

    public StateMachineManagement(StateMachine<?, ?, ?, ?> stateMachine) {
        stateMachine.getClass();
        this.stateMachine = stateMachine;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public void fireEvent(String str, String str2) {
        ConverterProvider converterProvider = ConverterProvider.INSTANCE;
        ((AbstractStateMachine) this.stateMachine).untypedFire(converterProvider.getConverter(this.stateMachine.typeOfEvent()).convertFromString(str), (str2 == null || str2.isEmpty()) ? null : converterProvider.getConverter(this.stateMachine.typeOfContext()).convertFromString(str2));
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public float getAverageTranstionConsumedTime() {
        return this.averageTranstionConsumedTime;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String getCurrentState() {
        return this.stateMachine.getCurrentState() != null ? this.stateMachine.getCurrentState().toString() : "[NULL]";
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String getIdentifier() {
        return this.stateMachine.getIdentifier();
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String getLastErrorMessage() {
        return this.stateMachine.getLastException() != null ? this.stateMachine.getLastException().getMessage() : "[NoException]";
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String getPerfStatDetails() {
        return this.perfStatDetails;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public long getTotalTransitionDeclinedTimes() {
        return this.totalTransitionDeclinedTimes;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public long getTotalTransitionFailedTimes() {
        return this.totalTransitionFailedTimes;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public long getTotalTransitionInvokedTimes() {
        return this.totalTransitionInvokedTimes;
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String toggleLogging() {
        StateMachineLogger stateMachineLogger = this.fsmLogger;
        if (stateMachineLogger != null) {
            stateMachineLogger.stopLogging();
            this.fsmLogger = null;
            return "Logging Ended";
        }
        StateMachineLogger stateMachineLogger2 = new StateMachineLogger(this.stateMachine);
        this.fsmLogger = stateMachineLogger2;
        stateMachineLogger2.startLogging();
        return "Logging Started";
    }

    @Override // org.squirrelframework.foundation.fsm.jmx.StateMachineManagementMBean
    public String togglePerfMon() {
        StateMachinePerformanceMonitor stateMachinePerformanceMonitor = this.performanceMonitor;
        if (stateMachinePerformanceMonitor != null) {
            StateMachinePerformanceModel perfModel = stateMachinePerformanceMonitor.getPerfModel();
            this.totalTransitionInvokedTimes = perfModel.getTotalTransitionInvokedTimes();
            this.totalTransitionDeclinedTimes = perfModel.getTotalTransitionDeclinedTimes();
            this.totalTransitionFailedTimes = perfModel.getTotalTransitionFailedTimes();
            this.averageTranstionConsumedTime = perfModel.getAverageTranstionConsumedTime();
            this.perfStatDetails = perfModel.toString();
            this.stateMachine.removeDeclarativeListener(this.performanceMonitor);
            this.performanceMonitor = null;
            return "Performance Monitor End";
        }
        this.perfStatDetails = "[Empty]";
        StateMachinePerformanceMonitor stateMachinePerformanceMonitor2 = new StateMachinePerformanceMonitor("Performance-of-" + this.stateMachine.getIdentifier());
        this.performanceMonitor = stateMachinePerformanceMonitor2;
        this.stateMachine.addDeclarativeListener(stateMachinePerformanceMonitor2);
        if (!this.stateMachine.isStarted()) {
            return "Performance Monitor Start";
        }
        this.performanceMonitor.onStateMachineStart(this.stateMachine);
        return "Performance Monitor Start";
    }
}

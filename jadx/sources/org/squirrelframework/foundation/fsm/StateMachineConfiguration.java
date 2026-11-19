package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.component.IdProvider;
import org.squirrelframework.foundation.component.SquirrelSingleton;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineConfiguration implements SquirrelSingleton {
    private static StateMachineConfiguration instance = create();
    private boolean isAutoStartEnabled = true;
    private boolean isAutoTerminateEnabled = true;
    private boolean isDataIsolateEnabled = false;
    private boolean isDebugModeEnabled = false;
    private boolean isDelegatorModeEnabled = false;
    private boolean isRemoteMonitorEnabled = false;
    private IdProvider idProvider = IdProvider.Default.getInstance();

    private StateMachineConfiguration() {
    }

    public static StateMachineConfiguration create() {
        return new StateMachineConfiguration();
    }

    public static StateMachineConfiguration getInstance() {
        return instance;
    }

    public static void setInstance(StateMachineConfiguration stateMachineConfiguration) {
        instance = stateMachineConfiguration;
    }

    public StateMachineConfiguration enableAutoStart(boolean z) {
        this.isAutoStartEnabled = z;
        return this;
    }

    public StateMachineConfiguration enableAutoTerminate(boolean z) {
        this.isAutoTerminateEnabled = z;
        return this;
    }

    public StateMachineConfiguration enableDataIsolate(boolean z) {
        this.isDataIsolateEnabled = z;
        return this;
    }

    public StateMachineConfiguration enableDebugMode(boolean z) {
        this.isDebugModeEnabled = z;
        return this;
    }

    public StateMachineConfiguration enableDelegatorMode(boolean z) {
        this.isDelegatorModeEnabled = z;
        return this;
    }

    public StateMachineConfiguration enableRemoteMonitor(boolean z) {
        this.isRemoteMonitorEnabled = z;
        return this;
    }

    public IdProvider getIdProvider() {
        return this.idProvider;
    }

    public boolean isAutoStartEnabled() {
        return this.isAutoStartEnabled;
    }

    public boolean isAutoTerminateEnabled() {
        return this.isAutoTerminateEnabled;
    }

    public boolean isDataIsolateEnabled() {
        return this.isDataIsolateEnabled;
    }

    public boolean isDebugModeEnabled() {
        return this.isDebugModeEnabled;
    }

    public boolean isDelegatorModeEnabled() {
        return this.isDelegatorModeEnabled;
    }

    public boolean isRemoteMonitorEnabled() {
        return this.isRemoteMonitorEnabled;
    }

    public StateMachineConfiguration setIdProvider(IdProvider idProvider) {
        this.idProvider = idProvider;
        return this;
    }
}

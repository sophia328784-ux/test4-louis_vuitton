package org.squirrelframework.foundation.fsm;

import defpackage.n00;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.rtccloud.sdk.Call;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachinePerformanceModel {
    private String name;
    private long totalTransitionInvokedTimes = 0;
    private long totalTransitionFailedTimes = 0;
    private long totalTransitionDeclinedTimes = 0;
    private float averageTranstionConsumedTime = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private final Map<String, Long> transitionInvokeTimes = new HashMap();
    private final Map<String, Float> averTransitionConsumedTime = new HashMap();
    private final Map<String, Long> maxTransitionConsumedTime = new HashMap();
    private final Map<String, Long> minTransitionConsumedTime = new HashMap();
    private long totalActionInvokedTimes = 0;
    private long totalActionFailedTimes = 0;
    private float averageActionConsumedTime = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private final Map<String, Long> actionInvokeTimes = new HashMap();
    private final Map<String, Float> averActionConsumedTime = new HashMap();
    private final Map<String, Long> maxActionConsumedTime = new HashMap();
    private final Map<String, Long> minActionConsumedTime = new HashMap();

    public void addActionInvokeTime(String str, Long l) {
        this.actionInvokeTimes.put(str, l);
    }

    public void addAverActionConsumedTime(String str, float f2) {
        this.averActionConsumedTime.put(str, Float.valueOf(f2));
    }

    public void addAverTransitionConsumedTime(String str, float f2) {
        this.averTransitionConsumedTime.put(str, Float.valueOf(f2));
    }

    public void addMaxActionConsumedTime(String str, Long l) {
        this.maxActionConsumedTime.put(str, l);
    }

    public void addMaxTransitionConsumedTime(String str, Long l) {
        this.maxTransitionConsumedTime.put(str, l);
    }

    public void addMinActionConsumedTime(String str, Long l) {
        this.minActionConsumedTime.put(str, l);
    }

    public void addMinTransitionConsumedTime(String str, Long l) {
        this.minTransitionConsumedTime.put(str, l);
    }

    public void addTransitionInvokeTime(String str, Long l) {
        this.transitionInvokeTimes.put(str, l);
    }

    public Map<String, Long> getActionInvokeTimes() {
        return Collections.unmodifiableMap(this.actionInvokeTimes);
    }

    public Map<String, Float> getAverActionConsumedTime() {
        return Collections.unmodifiableMap(this.averActionConsumedTime);
    }

    public Map<String, Float> getAverTransitionConsumedTime() {
        return Collections.unmodifiableMap(this.averTransitionConsumedTime);
    }

    public float getAverageActionConsumedTime() {
        return this.averageActionConsumedTime;
    }

    public float getAverageTranstionConsumedTime() {
        return this.averageTranstionConsumedTime;
    }

    public Map<String, Long> getMaxActionConsumedTime() {
        return Collections.unmodifiableMap(this.maxActionConsumedTime);
    }

    public Map<String, Long> getMaxTransitionConsumedTime() {
        return Collections.unmodifiableMap(this.maxTransitionConsumedTime);
    }

    public Map<String, Long> getMinActionConsumedTime() {
        return Collections.unmodifiableMap(this.minActionConsumedTime);
    }

    public Map<String, Long> getMinTransitionConsumedTime() {
        return Collections.unmodifiableMap(this.minTransitionConsumedTime);
    }

    public String getName() {
        return this.name;
    }

    public long getTotalActionFailedTimes() {
        return this.totalActionFailedTimes;
    }

    public long getTotalActionInvokedTimes() {
        return this.totalActionInvokedTimes;
    }

    public long getTotalTransitionDeclinedTimes() {
        return this.totalTransitionDeclinedTimes;
    }

    public long getTotalTransitionFailedTimes() {
        return this.totalTransitionFailedTimes;
    }

    public long getTotalTransitionInvokedTimes() {
        return this.totalTransitionInvokedTimes;
    }

    public Map<String, Long> getTransitionInvokeTimes() {
        return Collections.unmodifiableMap(this.transitionInvokeTimes);
    }

    public void setAverageActionConsumedTime(float f2) {
        this.averageActionConsumedTime = f2;
    }

    public void setAverageTranstionConsumedTime(float f2) {
        this.averageTranstionConsumedTime = f2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTotalActionFailedTimes(long j2) {
        this.totalActionFailedTimes = j2;
    }

    public void setTotalActionInvokedTimes(long j2) {
        this.totalActionInvokedTimes = j2;
    }

    public void setTotalTransitionDeclinedTimes(long j2) {
        this.totalTransitionDeclinedTimes = j2;
    }

    public void setTotalTransitionFailedTimes(long j2) {
        this.totalTransitionFailedTimes = j2;
    }

    public void setTotalTransitionInvokedTimes(long j2) {
        this.totalTransitionInvokedTimes = j2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("========================== ");
        sb.append(this.name);
        sb.append(" ==========================\nTotal Transition Invoked: ");
        sb.append(this.totalTransitionInvokedTimes);
        sb.append("\nTotal Transition Failed: ");
        sb.append(this.totalTransitionFailedTimes);
        sb.append("\nTotal Transition Declained: ");
        sb.append(this.totalTransitionDeclinedTimes);
        sb.append("\nAverage Transition Comsumed: ");
        sb.append(String.format("%.4fms", Float.valueOf(this.averageTranstionConsumedTime)));
        sb.append("\n\tTransition Key\t\tInvoked Times\tAverage Time\t\tMax Time\tMin Time\n");
        for (String str : this.transitionInvokeTimes.keySet()) {
            sb.append("\t");
            sb.append(StringUtils.a(str));
            sb.append("\t\t");
            sb.append(this.transitionInvokeTimes.get(str));
            sb.append("\t\t");
            sb.append(String.format("%.4fms", this.averTransitionConsumedTime.get(str)));
            sb.append("\t\t");
            sb.append(this.maxTransitionConsumedTime.get(str));
            sb.append("ms\t\t");
            sb.append(this.minTransitionConsumedTime.get(str));
            sb.append("ms\t\t\n");
        }
        sb.append("\nTotal Action Invoked: ");
        sb.append(this.totalActionInvokedTimes);
        sb.append("\nTotal Action Failed: ");
        sb.append(this.totalActionFailedTimes);
        sb.append("\nAverage Action Execution Comsumed: ");
        sb.append(String.format("%.4fms", Float.valueOf(this.averageActionConsumedTime)));
        sb.append("\n\tAction Key\t\tInvoked Times\tAverage Time\t\tMax Time\tMin Time\n");
        for (String str2 : this.actionInvokeTimes.keySet()) {
            sb.append("\t");
            sb.append(StringUtils.a(str2));
            sb.append("\t\t");
            sb.append(this.actionInvokeTimes.get(str2));
            sb.append("\t\t");
            sb.append(String.format("%.4fms", this.averActionConsumedTime.get(str2)));
            sb.append("\t\t");
            sb.append(this.maxActionConsumedTime.get(str2));
            sb.append("ms\t\t");
            sb.append(this.minActionConsumedTime.get(str2));
            sb.append("ms\t\t\n");
        }
        sb.append("========================== ");
        return n00.r(this.name, " ==========================\n", sb);
    }
}

package org.squirrelframework.foundation.fsm;

import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import org.squirrelframework.foundation.fsm.annotation.OnActionExecException;
import org.squirrelframework.foundation.fsm.annotation.OnAfterActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnBeforeActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineStart;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineTerminate;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionBegin;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionDecline;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionEnd;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionException;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachinePerformanceMonitor {
    private final String name;
    private final ConcurrentMap<String, Stopwatch> transitionWatches = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> transitionInvokeTimes = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> transitionFailedTimes = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> transitionDeclinedTimes = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> transitionElapsedMillis = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> maxTransitionConsumedTime = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> minTransitionConsumedTime = new ConcurrentHashMap();
    private final ConcurrentMap<String, Stopwatch> actionWatches = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> actionInvokeTimes = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> actionFailedTimes = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> actionElapsedMillis = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> maxActionConsumedTime = new ConcurrentHashMap();
    private final ConcurrentMap<String, AtomicLong> minActionConsumedTime = new ConcurrentHashMap();
    private final Object waitLock = new Object();
    private volatile boolean isBusyStat = false;

    public StateMachinePerformanceMonitor(String str) {
        this.name = str;
    }

    private void clearCache() {
        this.transitionInvokeTimes.clear();
        this.transitionFailedTimes.clear();
        this.transitionDeclinedTimes.clear();
        this.transitionElapsedMillis.clear();
        this.maxTransitionConsumedTime.clear();
        this.minTransitionConsumedTime.clear();
        this.actionInvokeTimes.clear();
        this.actionFailedTimes.clear();
        this.actionElapsedMillis.clear();
        this.maxActionConsumedTime.clear();
        this.minActionConsumedTime.clear();
    }

    private long getTotal(ConcurrentMap<String, AtomicLong> concurrentMap) {
        Iterator<AtomicLong> it = concurrentMap.values().iterator();
        long j2 = 0;
        while (it.hasNext()) {
            j2 += it.next().get();
        }
        return j2;
    }

    private String getTransitionKey(Object obj, Object obj2, Object obj3, Object obj4) {
        return obj + "--{" + obj3 + ", " + obj4 + "}->" + obj2;
    }

    private void notifyAllAfterBusyStat() {
        synchronized (this.waitLock) {
            this.isBusyStat = false;
            this.waitLock.notifyAll();
        }
    }

    private void waitIfBusyStat() {
        if (this.isBusyStat) {
            synchronized (this.waitLock) {
                while (this.isBusyStat) {
                    try {
                        this.waitLock.wait();
                    } catch (InterruptedException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
        }
    }

    public synchronized StateMachinePerformanceModel getPerfModel() {
        StateMachinePerformanceModel stateMachinePerformanceModel;
        try {
            this.isBusyStat = true;
            stateMachinePerformanceModel = new StateMachinePerformanceModel();
            stateMachinePerformanceModel.setName(this.name);
            long total = getTotal(this.transitionInvokeTimes);
            stateMachinePerformanceModel.setTotalTransitionInvokedTimes(total);
            stateMachinePerformanceModel.setTotalTransitionFailedTimes(getTotal(this.transitionFailedTimes));
            stateMachinePerformanceModel.setTotalTransitionDeclinedTimes(getTotal(this.transitionDeclinedTimes));
            stateMachinePerformanceModel.setAverageTranstionConsumedTime(getTotal(this.transitionElapsedMillis) / (total + Float.MIN_VALUE));
            long total2 = getTotal(this.actionInvokeTimes);
            stateMachinePerformanceModel.setTotalActionInvokedTimes(total2);
            stateMachinePerformanceModel.setTotalActionFailedTimes(getTotal(this.actionFailedTimes));
            stateMachinePerformanceModel.setAverageActionConsumedTime(getTotal(this.actionElapsedMillis) / (total2 + Float.MIN_VALUE));
            for (String str : this.transitionInvokeTimes.keySet()) {
                stateMachinePerformanceModel.addAverTransitionConsumedTime(str, this.transitionElapsedMillis.get(str).get() / (this.transitionInvokeTimes.get(str).get() + Float.MIN_VALUE));
                stateMachinePerformanceModel.addTransitionInvokeTime(str, Long.valueOf(this.transitionInvokeTimes.get(str).get()));
                stateMachinePerformanceModel.addMaxTransitionConsumedTime(str, Long.valueOf(this.maxTransitionConsumedTime.get(str).get()));
                stateMachinePerformanceModel.addMinTransitionConsumedTime(str, Long.valueOf(this.minTransitionConsumedTime.get(str).get()));
            }
            for (String str2 : this.actionInvokeTimes.keySet()) {
                stateMachinePerformanceModel.addAverActionConsumedTime(str2, this.actionElapsedMillis.get(str2).get() / (this.actionInvokeTimes.get(str2).get() + Float.MIN_VALUE));
                stateMachinePerformanceModel.addActionInvokeTime(str2, Long.valueOf(this.actionInvokeTimes.get(str2).get()));
                stateMachinePerformanceModel.addMaxActionConsumedTime(str2, Long.valueOf(this.maxActionConsumedTime.get(str2).get()));
                stateMachinePerformanceModel.addMinActionConsumedTime(str2, Long.valueOf(this.minActionConsumedTime.get(str2).get()));
            }
            clearCache();
            notifyAllAfterBusyStat();
        } catch (Throwable th) {
            throw th;
        }
        return stateMachinePerformanceModel;
    }

    @OnActionExecException
    public void onActionExecException(Action<?, ?, ?, ?> action) {
        waitIfBusyStat();
        String string = action.toString();
        this.actionFailedTimes.putIfAbsent(string, new AtomicLong(0L));
        this.actionFailedTimes.get(string).incrementAndGet();
    }

    @OnAfterActionExecuted
    public void onAfterActionExecuted(StateMachine<?, ?, ?, ?> stateMachine, Action<?, ?, ?, ?> action) {
        waitIfBusyStat();
        String string = action.toString();
        Stopwatch stopwatch = this.actionWatches.get(stateMachine.getIdentifier());
        long jA = stopwatch.f33497a.a();
        Preconditions.p("This stopwatch is already stopped.", stopwatch.f33498b);
        stopwatch.f33498b = false;
        long j2 = (jA - stopwatch.d) + stopwatch.f33499c;
        stopwatch.f33499c = j2;
        long j3 = j2 / 1000000;
        this.actionElapsedMillis.putIfAbsent(string, new AtomicLong(0L));
        this.actionElapsedMillis.get(string).addAndGet(j3);
        this.actionInvokeTimes.putIfAbsent(string, new AtomicLong(0L));
        this.actionInvokeTimes.get(string).incrementAndGet();
        synchronized (this) {
            try {
                if (this.maxActionConsumedTime.get(string) == null || j3 > this.maxActionConsumedTime.get(string).get()) {
                    this.maxActionConsumedTime.put(string, new AtomicLong(j3));
                }
                if (this.minActionConsumedTime.get(string) == null || j3 < this.minActionConsumedTime.get(string).get()) {
                    this.minActionConsumedTime.put(string, new AtomicLong(j3));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnBeforeActionExecuted
    public void onBeforeActionExecuted(StateMachine<?, ?, ?, ?> stateMachine, Action<?, ?, ?, ?> action) {
        waitIfBusyStat();
        Stopwatch stopwatch = this.actionWatches.get(stateMachine.getIdentifier());
        stopwatch.f33499c = 0L;
        stopwatch.f33498b = false;
        stopwatch.a();
    }

    @OnStateMachineStart
    public void onStateMachineStart(StateMachine<?, ?, ?, ?> stateMachine) {
        this.transitionWatches.put(stateMachine.getIdentifier(), new Stopwatch());
        this.actionWatches.put(stateMachine.getIdentifier(), new Stopwatch());
    }

    @OnStateMachineTerminate
    public void onStateMachineTerminate(StateMachine<?, ?, ?, ?> stateMachine) {
        this.transitionWatches.remove(stateMachine.getIdentifier());
        this.actionWatches.remove(stateMachine.getIdentifier());
    }

    @OnTransitionBegin
    public void onTransitionBegin(StateMachine<?, ?, ?, ?> stateMachine) {
        waitIfBusyStat();
        Stopwatch stopwatch = this.transitionWatches.get(stateMachine.getIdentifier());
        stopwatch.f33499c = 0L;
        stopwatch.f33498b = false;
        stopwatch.a();
    }

    @OnTransitionDecline
    public void onTransitionDeclined(Object obj, Object obj2, Object obj3) {
        waitIfBusyStat();
        String transitionKey = getTransitionKey(obj, null, obj2, obj3);
        this.transitionDeclinedTimes.putIfAbsent(transitionKey, new AtomicLong(0L));
        this.transitionDeclinedTimes.get(transitionKey).incrementAndGet();
    }

    @OnTransitionEnd
    public void onTransitionEnd(Object obj, Object obj2, Object obj3, Object obj4, StateMachine<?, ?, ?, ?> stateMachine) {
        waitIfBusyStat();
        String transitionKey = getTransitionKey(obj, obj2, obj3, obj4);
        Stopwatch stopwatch = this.transitionWatches.get(stateMachine.getIdentifier());
        long jA = stopwatch.f33497a.a();
        Preconditions.p("This stopwatch is already stopped.", stopwatch.f33498b);
        stopwatch.f33498b = false;
        long j2 = (jA - stopwatch.d) + stopwatch.f33499c;
        stopwatch.f33499c = j2;
        long j3 = j2 / 1000000;
        this.transitionElapsedMillis.putIfAbsent(transitionKey, new AtomicLong(0L));
        this.transitionElapsedMillis.get(transitionKey).addAndGet(j3);
        this.transitionInvokeTimes.putIfAbsent(transitionKey, new AtomicLong(0L));
        this.transitionInvokeTimes.get(transitionKey).incrementAndGet();
        synchronized (this) {
            try {
                if (this.maxTransitionConsumedTime.get(transitionKey) == null || j3 > this.maxTransitionConsumedTime.get(transitionKey).get()) {
                    this.maxTransitionConsumedTime.put(transitionKey, new AtomicLong(j3));
                }
                if (this.minTransitionConsumedTime.get(transitionKey) == null || j3 < this.minTransitionConsumedTime.get(transitionKey).get()) {
                    this.minTransitionConsumedTime.put(transitionKey, new AtomicLong(j3));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnTransitionException
    public void onTransitionException(Object obj, Object obj2, Object obj3, Object obj4) {
        waitIfBusyStat();
        String transitionKey = getTransitionKey(obj, obj2, obj3, obj4);
        this.transitionFailedTimes.putIfAbsent(transitionKey, new AtomicLong(0L));
        this.transitionFailedTimes.get(transitionKey).incrementAndGet();
    }
}

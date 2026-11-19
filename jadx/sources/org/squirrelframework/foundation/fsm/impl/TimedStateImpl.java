package org.squirrelframework.foundation.fsm.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.squirrelframework.foundation.component.SquirrelConfiguration;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.AnonymousAction;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.ImmutableTimedState;
import org.squirrelframework.foundation.fsm.ImmutableTransition;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTimedState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.StateCompositeType;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.Visitor;

/* JADX INFO: loaded from: classes5.dex */
public class TimedStateImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends StateImpl<T, S, E, C> implements ImmutableTimedState<T, S, E, C>, MutableTimedState<T, S, E, C> {
    private C autoFireContext;
    private E autoFireEvent;
    private Action<T, S, E, C> firstExitAction;
    private final transient Map<String, Future<?>> futures;
    private long initialDelay;
    private Action<T, S, E, C> lastEntryAction;
    private final ScheduledExecutorService scheduler;
    private long timeInterval;

    public TimedStateImpl(S s) {
        super(s);
        this.scheduler = SquirrelConfiguration.getScheduler();
        this.futures = new ConcurrentHashMap();
        this.lastEntryAction = new AnonymousAction<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.TimedStateImpl.1
            @Override // org.squirrelframework.foundation.fsm.Action
            public void execute(S s2, S s3, E e2, C c2, final T t) {
                Runnable runnable = new Runnable() { // from class: org.squirrelframework.foundation.fsm.impl.TimedStateImpl.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        t.fire(TimedStateImpl.this.autoFireEvent, TimedStateImpl.this.autoFireContext);
                    }
                };
                long j2 = TimedStateImpl.this.timeInterval;
                TimedStateImpl timedStateImpl = TimedStateImpl.this;
                TimedStateImpl.this.futures.put(TimedStateImpl.this.getKey(t), j2 <= 0 ? timedStateImpl.scheduler.schedule(runnable, TimedStateImpl.this.initialDelay, TimeUnit.MILLISECONDS) : timedStateImpl.scheduler.scheduleAtFixedRate(runnable, TimedStateImpl.this.initialDelay, TimedStateImpl.this.timeInterval, TimeUnit.MILLISECONDS));
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public String name() {
                return "__TIMED_STATE_ENTRY_ACTION";
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public int weight() {
                return -2147483647;
            }
        };
        this.firstExitAction = new AnonymousAction<T, S, E, C>() { // from class: org.squirrelframework.foundation.fsm.impl.TimedStateImpl.2
            @Override // org.squirrelframework.foundation.fsm.Action
            public void execute(S s2, S s3, E e2, C c2, T t) {
                Future future = (Future) TimedStateImpl.this.futures.remove(TimedStateImpl.this.getKey(t));
                if (future != null) {
                    future.cancel(false);
                }
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public String name() {
                return "__TIMED_STATE_EXIT_ACTION";
            }

            @Override // org.squirrelframework.foundation.fsm.AnonymousAction, org.squirrelframework.foundation.fsm.Action
            public int weight() {
                return Action.MAX_WEIGHT;
            }
        };
        this.entryActions.add(this.lastEntryAction);
        this.exitActions.add(this.firstExitAction);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.Visitable
    public /* bridge */ /* synthetic */ void accept(Visitor visitor) {
        super.accept(visitor);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void addChildState(MutableState mutableState) {
        super.addChildState(mutableState);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void addEntryAction(Action action) {
        super.addEntryAction(action);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void addEntryActions(List list) {
        super.addEntryActions(list);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void addExitAction(Action action) {
        super.addExitAction(action);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void addExitActions(List list) {
        super.addExitActions(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ MutableTransition addTransitionOn(Object obj) {
        return super.addTransitionOn(obj);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl
    public /* bridge */ /* synthetic */ ImmutableTransition checkConflictTransitions(ImmutableTransition immutableTransition, List list) {
        return super.checkConflictTransitions(immutableTransition, list);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState enterByHistory(StateContext stateContext) {
        return super.enterByHistory(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState enterDeep(StateContext stateContext) {
        return super.enterDeep(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState enterShallow(StateContext stateContext) {
        return super.enterShallow(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ void entry(StateContext stateContext) {
        super.entry(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ void exit(StateContext stateContext) {
        super.exit(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ Set getAcceptableEvents() {
        return super.getAcceptableEvents();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ List getAllTransitions() {
        return super.getAllTransitions();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTimedState
    public C getAutoFireContext() {
        return this.autoFireContext;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTimedState
    public E getAutoFireEvent() {
        return this.autoFireEvent;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ List getChildStates() {
        return super.getChildStates();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ StateCompositeType getCompositeType() {
        return super.getCompositeType();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ List getEntryActions() {
        return super.getEntryActions();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ List getExitActions() {
        return super.getExitActions();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ HistoryType getHistoryType() {
        return super.getHistoryType();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTimedState
    public long getInitialDelay() {
        return this.initialDelay;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState getInitialState() {
        return super.getInitialState();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ int getLevel() {
        return super.getLevel();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState getParentState() {
        return super.getParentState();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ Object getStateId() {
        return super.getStateId();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ ImmutableState getThis() {
        return super.getThis();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableTimedState
    public long getTimeInterval() {
        return this.timeInterval;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ List getTransitions(Object obj) {
        return super.getTransitions(obj);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean hasChildStates() {
        return super.hasChildStates();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ void internalFire(StateContext stateContext) {
        super.internalFire(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean isChildStateOf(ImmutableState immutableState) {
        return super.isChildStateOf(immutableState);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean isFinalState() {
        return super.isFinalState();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean isParallelState() {
        return super.isParallelState();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean isRegion() {
        return super.isRegion();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ boolean isRootState() {
        return super.isRootState();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void prioritizeTransitions() {
        super.prioritizeTransitions();
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTimedState
    public void setAutoFireContext(C c2) {
        this.autoFireContext = c2;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTimedState
    public void setAutoFireEvent(E e2) {
        this.autoFireEvent = e2;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setCompositeType(StateCompositeType stateCompositeType) {
        super.setCompositeType(stateCompositeType);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setFinal(boolean z) {
        super.setFinal(z);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setHistoryType(HistoryType historyType) {
        super.setHistoryType(historyType);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTimedState
    public void setInitialDelay(long j2) {
        this.initialDelay = j2;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setInitialState(MutableState mutableState) {
        super.setInitialState(mutableState);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setLevel(int i2) {
        super.setLevel(i2);
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.MutableState
    public /* bridge */ /* synthetic */ void setParentState(MutableState mutableState) {
        super.setParentState(mutableState);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableTimedState
    public void setTimeInterval(long j2) {
        this.timeInterval = j2;
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // org.squirrelframework.foundation.fsm.impl.StateImpl, org.squirrelframework.foundation.fsm.ImmutableState
    public /* bridge */ /* synthetic */ void verify() {
        super.verify();
    }
}

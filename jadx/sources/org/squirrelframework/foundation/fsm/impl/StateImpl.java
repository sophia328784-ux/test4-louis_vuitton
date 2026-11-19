package org.squirrelframework.foundation.fsm.impl;

import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.Lists;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.a;
import defpackage.az;
import defpackage.md;
import defpackage.mt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Actions;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.ImmutableTransition;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MutableTransition;
import org.squirrelframework.foundation.fsm.StateCompositeType;
import org.squirrelframework.foundation.fsm.StateContext;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineData;
import org.squirrelframework.foundation.fsm.TransitionResult;
import org.squirrelframework.foundation.fsm.Visitor;

/* JADX INFO: loaded from: classes5.dex */
class StateImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements MutableState<T, S, E, C> {
    private static final Logger logger = LoggerFactory.getLogger(StateImpl.class);
    private Set<E> acceptableEvents;
    private MutableState<T, S, E, C> childInitialState;
    private List<MutableState<T, S, E, C>> childStates;
    private MutableState<T, S, E, C> parentState;
    protected final S stateId;
    private LinkedListMultimap<E, ImmutableTransition<T, S, E, C>> transitions;
    protected final Actions<T, S, E, C> entryActions = FSM.newActions();
    protected final Actions<T, S, E, C> exitActions = FSM.newActions();
    private HistoryType historyType = HistoryType.NONE;
    private int level = 0;
    private boolean isFinalState = false;
    private StateCompositeType compositeType = StateCompositeType.SEQUENTIAL;

    /* JADX INFO: renamed from: org.squirrelframework.foundation.fsm.impl.StateImpl$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$squirrelframework$foundation$fsm$HistoryType;

        static {
            int[] iArr = new int[HistoryType.values().length];
            $SwitchMap$org$squirrelframework$foundation$fsm$HistoryType = iArr;
            try {
                iArr[HistoryType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$squirrelframework$foundation$fsm$HistoryType[HistoryType.SHALLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$squirrelframework$foundation$fsm$HistoryType[HistoryType.DEEP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public StateImpl(S s) {
        this.stateId = s;
    }

    private ImmutableState<T, S, E, C> enterHistoryDeep(StateContext<T, S, E, C> stateContext) {
        ImmutableState<T, S, E, C> lastActiveChildStateOf = getLastActiveChildStateOf(this, stateContext.getStateMachineData().read());
        return lastActiveChildStateOf != null ? lastActiveChildStateOf.enterDeep(stateContext) : this;
    }

    private ImmutableState<T, S, E, C> enterHistoryNone(StateContext<T, S, E, C> stateContext) {
        MutableState<T, S, E, C> mutableState = this.childInitialState;
        return mutableState != null ? mutableState.enterShallow(stateContext) : this;
    }

    private ImmutableState<T, S, E, C> enterHistoryShallow(StateContext<T, S, E, C> stateContext) {
        ImmutableState<T, S, E, C> lastActiveChildStateOf = getLastActiveChildStateOf(this, stateContext.getStateMachineData().read());
        return lastActiveChildStateOf != null ? lastActiveChildStateOf.enterShallow(stateContext) : this;
    }

    private ImmutableState<T, S, E, C> getLastActiveChildStateOf(ImmutableState<T, S, E, C> immutableState, StateMachineData.Reader<T, S, E, C> reader) {
        S sLastActiveChildStateOf = reader.lastActiveChildStateOf(immutableState.getStateId());
        return sLastActiveChildStateOf != null ? reader.rawStateFrom(sLastActiveChildStateOf) : immutableState.getInitialState();
    }

    private List<ImmutableState<T, S, E, C>> getSubStatesOn(ImmutableState<T, S, E, C> immutableState, StateMachineData.Reader<T, S, E, C> reader) {
        ArrayList arrayList = new ArrayList();
        Iterator<S> it = reader.subStatesOn(immutableState.getStateId()).iterator();
        while (it.hasNext()) {
            arrayList.add(reader.rawStateFrom(it.next()));
        }
        return arrayList;
    }

    private boolean isParentOf(ImmutableState<T, S, E, C> immutableState) {
        for (ImmutableState<T, S, E, C> parentState = immutableState.getParentState(); parentState != null; parentState = parentState.getParentState()) {
            if (parentState == this) {
                return true;
            }
        }
        return false;
    }

    @Override // org.squirrelframework.foundation.fsm.Visitable
    public void accept(Visitor visitor) {
        visitor.visitOnEntry(this);
        Iterator<ImmutableTransition<T, S, E, C>> it = getAllTransitions().iterator();
        while (it.hasNext()) {
            it.next().accept(visitor);
        }
        List<MutableState<T, S, E, C>> list = this.childStates;
        if (list != null) {
            Iterator<MutableState<T, S, E, C>> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().accept(visitor);
            }
        }
        visitor.visitOnExit(this);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void addChildState(MutableState<T, S, E, C> mutableState) {
        if (mutableState != null) {
            if (this.childStates == null) {
                this.childStates = new ArrayList();
            }
            if (this.childStates.contains(mutableState)) {
                return;
            }
            this.childStates.add(mutableState);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void addEntryAction(Action<T, S, E, C> action) {
        this.entryActions.add(action);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void addEntryActions(List<? extends Action<T, S, E, C>> list) {
        this.entryActions.addAll(list);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void addExitAction(Action<T, S, E, C> action) {
        this.exitActions.add(action);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void addExitActions(List<? extends Action<T, S, E, C>> list) {
        this.exitActions.addAll(list);
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public MutableTransition<T, S, E, C> addTransitionOn(E e2) {
        MutableTransition<T, S, E, C> mutableTransitionNewTransition = FSM.newTransition();
        mutableTransitionNewTransition.setSourceState(this);
        mutableTransitionNewTransition.setEvent(e2);
        getTransitions().put(e2, mutableTransitionNewTransition);
        return mutableTransitionNewTransition;
    }

    public ImmutableTransition<T, S, E, C> checkConflictTransitions(ImmutableTransition<T, S, E, C> immutableTransition, List<ImmutableTransition<T, S, E, C>> list) {
        for (ImmutableTransition<T, S, E, C> immutableTransition2 : list) {
            if (immutableTransition != immutableTransition2 && immutableTransition2.getCondition().getClass() != Conditions.Never.class && immutableTransition2.isMatch(immutableTransition.getSourceState().getStateId(), immutableTransition.getTargetState().getStateId(), immutableTransition.getEvent(), immutableTransition.getPriority()) && (immutableTransition2.getCondition().getClass() == Conditions.Always.class || immutableTransition.getCondition().getClass() == Conditions.Always.class || immutableTransition2.getCondition().name().equals(immutableTransition.getCondition().name()))) {
                return immutableTransition;
            }
        }
        return null;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> enterByHistory(StateContext<T, S, E, C> stateContext) {
        if (isFinalState() || isParallelState()) {
            return this;
        }
        int i2 = AnonymousClass2.$SwitchMap$org$squirrelframework$foundation$fsm$HistoryType[this.historyType.ordinal()];
        if (i2 == 1) {
            return enterHistoryNone(stateContext);
        }
        if (i2 == 2) {
            return enterHistoryShallow(stateContext);
        }
        if (i2 == 3) {
            return enterHistoryDeep(stateContext);
        }
        az.w(this.historyType, "Unknown HistoryType : ");
        return null;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> enterDeep(StateContext<T, S, E, C> stateContext) {
        entry(stateContext);
        ImmutableState<T, S, E, C> lastActiveChildStateOf = getLastActiveChildStateOf(this, stateContext.getStateMachineData().read());
        return lastActiveChildStateOf == null ? this : lastActiveChildStateOf.enterDeep(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> enterShallow(StateContext<T, S, E, C> stateContext) {
        entry(stateContext);
        MutableState<T, S, E, C> mutableState = this.childInitialState;
        return mutableState != null ? mutableState.enterShallow(stateContext) : this;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public void entry(StateContext<T, S, E, C> stateContext) {
        stateContext.getExecutor().begin("STATE_ENTRY__" + getStateId());
        Iterator<Action<T, S, E, C>> it = getEntryActions().iterator();
        while (it.hasNext()) {
            stateContext.getExecutor().defer(it.next(), null, getStateId(), stateContext.getEvent(), stateContext.getContext(), stateContext.getStateMachine().getThis());
        }
        if (isParallelState()) {
            for (ImmutableState<T, S, E, C> immutableState : getChildStates()) {
                immutableState.entry(stateContext);
                stateContext.getStateMachineData().write().subStateFor(getStateId(), immutableState.enterByHistory(stateContext).getStateId());
            }
        }
        logger.debug(a.n(new StringBuilder("State \""), getStateId(), "\" entry."));
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public void exit(StateContext<T, S, E, C> stateContext) {
        if (isParallelState()) {
            for (ImmutableState<T, S, E, C> immutableState : getSubStatesOn(this, stateContext.getStateMachineData().read())) {
                if (!immutableState.isFinalState()) {
                    immutableState.exit(stateContext);
                }
                if (immutableState.getParentState() != this) {
                    immutableState.getParentState().exit(stateContext);
                }
            }
            stateContext.getStateMachineData().write().removeSubStatesOn(getStateId());
        }
        if (isFinalState()) {
            return;
        }
        stateContext.getExecutor().begin("STATE_EXIT__" + getStateId());
        Iterator<Action<T, S, E, C>> it = getExitActions().iterator();
        while (it.hasNext()) {
            stateContext.getExecutor().defer(it.next(), getStateId(), null, stateContext.getEvent(), stateContext.getContext(), stateContext.getStateMachine().getThis());
        }
        if (getParentState() != null) {
            ImmutableState<T, S, E, C> parentState = getParentState();
            boolean z = true;
            boolean z2 = parentState.getHistoryType() != HistoryType.NONE;
            if (z2) {
                z = z2;
                break;
            }
            ImmutableState<T, S, E, C> parentState2 = parentState.getParentState();
            while (true) {
                if (parentState2 == null) {
                    z = z2;
                    break;
                } else if (parentState2.getHistoryType() == HistoryType.DEEP) {
                    break;
                } else {
                    parentState2 = parentState2.getParentState();
                }
            }
            if (z) {
                stateContext.getStateMachineData().write().lastActiveChildStateFor(getParentState().getStateId(), getStateId());
            }
            if (getParentState().isRegion()) {
                stateContext.getStateMachineData().write().removeSubState(getParentState().getParentState().getStateId(), getStateId());
            }
        }
        logger.debug(a.n(new StringBuilder("State \""), getStateId(), "\" exit."));
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public Set<E> getAcceptableEvents() {
        if (this.acceptableEvents == null) {
            HashSet hashSet = new HashSet();
            hashSet.addAll(getTransitions().keySet());
            this.acceptableEvents = Collections.unmodifiableSet(hashSet);
        }
        return this.acceptableEvents;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public List<ImmutableTransition<T, S, E, C>> getAllTransitions() {
        return this.transitions == null ? Collections.EMPTY_LIST : Lists.a(getTransitions().n());
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public List<ImmutableState<T, S, E, C>> getChildStates() {
        return Lists.a(this.childStates);
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public StateCompositeType getCompositeType() {
        return this.compositeType;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public List<Action<T, S, E, C>> getEntryActions() {
        return this.entryActions.getAll();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public List<Action<T, S, E, C>> getExitActions() {
        return this.exitActions.getAll();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public HistoryType getHistoryType() {
        return this.historyType;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> getInitialState() {
        return this.childInitialState;
    }

    public String getKey(T t) {
        return t.getIdentifier() + AnnotationParser.AnnotationInstruction + getPath();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public int getLevel() {
        return this.level;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> getParentState() {
        return this.parentState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public String getPath() {
        String string = this.stateId.toString();
        if (this.parentState == null) {
            return string;
        }
        return this.parentState.getPath() + "/" + string;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public S getStateId() {
        return this.stateId;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public ImmutableState<T, S, E, C> getThis() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public List<ImmutableTransition<T, S, E, C>> getTransitions(E e2) {
        return this.transitions == null ? Collections.EMPTY_LIST : Lists.a(getTransitions().get((Object) e2));
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean hasChildStates() {
        List<MutableState<T, S, E, C>> list = this.childStates;
        return list != null && list.size() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public void internalFire(StateContext<T, S, E, C> stateContext) {
        ImmutableState<T, S, E, C> parentState;
        TransitionResult<T, S, E, C> result = stateContext.getResult();
        if (isParallelState()) {
            for (ImmutableState<T, S, E, C> immutableState : getSubStatesOn(this, stateContext.getStateMachineData().read())) {
                if (!immutableState.isFinalState()) {
                    TransitionResult transitionResultNewResult = FSM.newResult(false, immutableState, result);
                    immutableState.internalFire(FSM.newStateContext(stateContext.getStateMachine(), stateContext.getStateMachineData(), immutableState, stateContext.getEvent(), stateContext.getContext(), transitionResultNewResult, stateContext.getExecutor()));
                    if (transitionResultNewResult.isDeclined()) {
                        continue;
                    } else {
                        if (!isParentOf(transitionResultNewResult.getTargetState())) {
                            result.setTargetState(transitionResultNewResult.getTargetState());
                            return;
                        }
                        stateContext.getStateMachineData().write().subStateFor(getStateId(), transitionResultNewResult.getTargetState().getStateId());
                        if (transitionResultNewResult.getTargetState().isFinalState() && (parentState = transitionResultNewResult.getTargetState().getParentState().getParentState()) != null && parentState.isParallelState()) {
                            Iterator<ImmutableState<T, S, E, C>> it = getSubStatesOn(parentState, stateContext.getStateMachineData().read()).iterator();
                            do {
                                if (!it.hasNext()) {
                                    StateMachine<T, S, E, C> stateMachine = stateContext.getStateMachine();
                                    stateMachine.fireImmediate(((AbstractStateMachine) stateMachine).getFinishEvent(), stateContext.getContext());
                                    return;
                                }
                            } while (it.next().isFinalState());
                        }
                    }
                }
            }
        }
        Iterator<ImmutableTransition<T, S, E, C>> it2 = getTransitions(stateContext.getEvent()).iterator();
        while (it2.hasNext()) {
            it2.next().internalFire(stateContext);
            if (result.isAccepted()) {
                ImmutableState<T, S, E, C> targetState = result.getTargetState();
                if (!targetState.isFinalState() || targetState.isRootState()) {
                    return;
                }
                ImmutableState<T, S, E, C> parentState2 = targetState.getParentState();
                parentState2.internalFire(FSM.newStateContext(stateContext.getStateMachine(), stateContext.getStateMachineData(), parentState2, ((AbstractStateMachine) stateContext.getStateMachine()).getFinishEvent(), stateContext.getContext(), result, stateContext.getExecutor()));
                return;
            }
        }
        if (!result.isDeclined() || getParentState() == null || getParentState().isRegion() || getParentState().isParallelState()) {
            return;
        }
        logger.debug("Internal notify the same event to parent state");
        getParentState().internalFire(stateContext);
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean isChildStateOf(ImmutableState<T, S, E, C> immutableState) {
        while (this.getLevel() > immutableState.getLevel()) {
            this = (StateImpl<T, S, E, C>) this.getParentState();
        }
        return this == immutableState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean isFinalState() {
        return this.isFinalState;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean isParallelState() {
        return this.compositeType == StateCompositeType.PARALLEL;
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean isRegion() {
        MutableState<T, S, E, C> mutableState = this.parentState;
        return mutableState != null && mutableState.isParallelState();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public boolean isRootState() {
        return this.parentState == null;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void prioritizeTransitions() {
        Iterator<E> it = getTransitions().keySet().iterator();
        while (it.hasNext()) {
            Collections.sort(this.transitions.get((Object) it.next()), new Comparator<ImmutableTransition<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.StateImpl.1
                @Override // java.util.Comparator
                public int compare(ImmutableTransition<T, S, E, C> immutableTransition, ImmutableTransition<T, S, E, C> immutableTransition2) {
                    return immutableTransition2.getPriority() - immutableTransition.getPriority();
                }
            });
        }
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setCompositeType(StateCompositeType stateCompositeType) {
        this.compositeType = stateCompositeType;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setFinal(boolean z) {
        this.isFinalState = z;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setHistoryType(HistoryType historyType) {
        this.historyType = historyType;
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setInitialState(MutableState<T, S, E, C> mutableState) {
        if (isParallelState()) {
            logger.warn("Ignoring attempt to set initial state of parallel state group.");
        } else if (this.childInitialState == null) {
            this.childInitialState = mutableState;
        } else {
            mt.i("Cannot change child initial state.");
        }
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setLevel(int i2) {
        this.level = i2;
        List<MutableState<T, S, E, C>> list = this.childStates;
        if (list != null) {
            Iterator<MutableState<T, S, E, C>> it = list.iterator();
            while (it.hasNext()) {
                it.next().setLevel(this.level + 1);
            }
        }
    }

    @Override // org.squirrelframework.foundation.fsm.MutableState
    public void setParentState(MutableState<T, S, E, C> mutableState) {
        if (this == mutableState) {
            md.n("parent state cannot be state itself.");
        } else if (this.parentState != null) {
            mt.i("Cannot change state parent.");
        } else {
            this.parentState = mutableState;
            setLevel(mutableState != null ? 1 + mutableState.getLevel() : 1);
        }
    }

    public String toString() {
        return getStateId().toString();
    }

    @Override // org.squirrelframework.foundation.fsm.ImmutableState
    public void verify() {
        if (isFinalState()) {
            if (isParallelState()) {
                md.k("Final state cannot be parallel state.");
                return;
            } else if (hasChildStates()) {
                md.k("Final state cannot have child states.");
                return;
            }
        }
        LinkedListMultimap<E, ImmutableTransition<T, S, E, C>> linkedListMultimap = this.transitions;
        if (linkedListMultimap != null) {
            List<ImmutableTransition<T, S, E, C>> listN = linkedListMultimap.n();
            for (ImmutableTransition<T, S, E, C> immutableTransition : listN) {
                immutableTransition.verify();
                ImmutableTransition<T, S, E, C> immutableTransitionCheckConflictTransitions = checkConflictTransitions(immutableTransition, listN);
                if (immutableTransitionCheckConflictTransitions != null) {
                    throw new RuntimeException(String.format("Transition '%s' is conflicted with '%s'.", immutableTransition, immutableTransitionCheckConflictTransitions));
                }
            }
        }
    }

    private LinkedListMultimap<E, ImmutableTransition<T, S, E, C>> getTransitions() {
        if (this.transitions == null) {
            this.transitions = new LinkedListMultimap<>();
        }
        return this.transitions;
    }
}

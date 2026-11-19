package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Preconditions;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ListMultimap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineData;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineDataImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements StateMachineData<T, S, E, C>, StateMachineData.Reader<T, S, E, C>, StateMachineData.Writer<T, S, E, C> {
    private static final Logger logger = LoggerFactory.getLogger(StateMachineDataImpl.class);
    private static final long serialVersionUID = 4102325896046410596L;
    private Class<C> contextType;
    private S currentState;
    private Class<E> eventType;
    private String identifier;
    private S initialState;
    private final Map<S, S> lastActiveChildStateStore;
    private S lastState;
    private Map<S, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C>> linkStateDataStore;
    private final ListMultimap<S, S> parallelStatesStore;
    private Object startContext;
    private Class<? extends T> stateMachineType;
    private Class<S> stateType;
    private final transient Map<S, ImmutableState<T, S, E, C>> states;

    public StateMachineDataImpl(Map<S, ImmutableState<T, S, E, C>> map) {
        this.lastActiveChildStateStore = new HashMap();
        this.parallelStatesStore = new ArrayListMultimap();
        this.states = Collections.unmodifiableMap(map);
    }

    private void clear() {
        this.currentState = null;
        this.lastState = null;
        this.initialState = null;
        this.stateMachineType = null;
        this.stateType = null;
        this.eventType = null;
        this.contextType = null;
        this.identifier = null;
        this.startContext = null;
        Map<S, S> map = this.lastActiveChildStateStore;
        if (map != null) {
            map.clear();
        }
        ListMultimap<S, S> listMultimap = this.parallelStatesStore;
        if (listMultimap != null) {
            listMultimap.clear();
        }
        Map<S, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C>> map2 = this.linkStateDataStore;
        if (map2 != null) {
            map2.clear();
        }
    }

    private Map<S, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C>> getLinkedStateData() {
        if (this.linkStateDataStore == null) {
            this.linkStateDataStore = new HashMap();
        }
        return this.linkStateDataStore;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Collection<S> activeParentStates() {
        return Collections.unmodifiableCollection(this.lastActiveChildStateStore.keySet());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public ImmutableState<T, S, E, C> currentRawState() {
        S s = this.currentState;
        if (s != null) {
            return rawStateFrom(s);
        }
        return null;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void currentState(S s) {
        this.currentState = s;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData
    public void dump(StateMachineData.Reader<T, S, E, C> reader) {
        clear();
        write().typeOfStateMachine(reader.typeOfStateMachine());
        write().typeOfState(reader.typeOfState());
        write().typeOfEvent(reader.typeOfEvent());
        write().typeOfContext(reader.typeOfContext());
        write().identifier(reader.identifier());
        write().currentState(reader.currentState());
        write().lastState(reader.lastState());
        write().initialState(reader.initialState());
        write().startContext(reader.startContext());
        for (S s : reader.activeParentStates()) {
            S sLastActiveChildStateOf = reader.lastActiveChildStateOf(s);
            if (sLastActiveChildStateOf != null) {
                write().lastActiveChildStateFor(s, sLastActiveChildStateOf);
            }
        }
        for (S s2 : reader.parallelStates()) {
            List<S> listSubStatesOn = reader.subStatesOn(s2);
            if (listSubStatesOn != null && !listSubStatesOn.isEmpty()) {
                Iterator<S> it = listSubStatesOn.iterator();
                while (it.hasNext()) {
                    this.parallelStatesStore.put(s2, it.next());
                }
            }
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void identifier(String str) {
        this.identifier = str;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public ImmutableState<T, S, E, C> initialRawState() {
        return rawStateFrom(initialState());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void initialState(S s) {
        this.initialState = s;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void lastActiveChildStateFor(S s, S s2) {
        this.lastActiveChildStateStore.put(s, s2);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public S lastActiveChildStateOf(S s) {
        return this.lastActiveChildStateStore.get(s);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public ImmutableState<T, S, E, C> lastRawState() {
        return rawStateFrom(this.lastState);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void lastState(S s) {
        this.lastState = s;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C> linkedStateDataOf(S s) {
        Map<S, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C>> map = this.linkStateDataStore;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return this.linkStateDataStore.get(s);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void linkedStateDataOn(S s, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C> reader) {
        getLinkedStateData().put(s, reader);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Collection<S> linkedStates() {
        Map<S, StateMachineData.Reader<? extends StateMachine<?, S, E, C>, S, E, C>> map = this.linkStateDataStore;
        return (map == null || map.isEmpty()) ? Collections.EMPTY_SET : Collections.unmodifiableCollection(this.linkStateDataStore.keySet());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Map<S, ImmutableState<T, S, E, C>> originalStates() {
        Map<S, ImmutableState<T, S, E, C>> map = this.states;
        return map == null ? Collections.EMPTY_MAP : map;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Collection<S> parallelStates() {
        return Collections.unmodifiableCollection(this.parallelStatesStore.keySet());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public ImmutableState<T, S, E, C> rawStateFrom(S s) {
        ImmutableState<T, S, E, C> immutableState;
        if (s == null || (immutableState = originalStates().get(s)) == null) {
            return null;
        }
        return immutableState.getThis();
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Collection<ImmutableState<T, S, E, C>> rawStates() {
        return Collections.unmodifiableCollection(originalStates().values());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData
    public StateMachineData.Reader<T, S, E, C> read() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void removeSubState(S s, S s2) {
        if (rawStateFrom(s) == null || !rawStateFrom(s).isParallelState()) {
            logger.warn("Cannot remove sub states on none parallel state {}.", s);
        } else {
            this.parallelStatesStore.remove(s, s2);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void removeSubStatesOn(S s) {
        if (rawStateFrom(s).isParallelState()) {
            this.parallelStatesStore.a((Object) s);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void startContext(C c2) {
        if (c2 == null || !(c2 instanceof Serializable)) {
            return;
        }
        this.startContext = c2;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Collection<S> states() {
        return Collections.unmodifiableCollection(originalStates().keySet());
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void subStateFor(S s, S s2) {
        if (rawStateFrom(s) == null || !rawStateFrom(s).isParallelState()) {
            logger.warn("Cannot set sub states on none parallel state {}.", s);
        } else {
            this.parallelStatesStore.put(s, s2);
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public List<S> subStatesOn(S s) {
        List list = this.parallelStatesStore.get((Object) s);
        return list != null ? Collections.unmodifiableList(list) : Collections.EMPTY_LIST;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void typeOfContext(Class<C> cls) {
        Preconditions.q(this.contextType == null);
        this.contextType = cls;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void typeOfEvent(Class<E> cls) {
        Preconditions.q(this.eventType == null);
        this.eventType = cls;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void typeOfState(Class<S> cls) {
        Preconditions.q(this.stateType == null);
        this.stateType = cls;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Writer
    public void typeOfStateMachine(Class<? extends T> cls) {
        Preconditions.q(this.stateMachineType == null);
        this.stateMachineType = cls;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData
    public StateMachineData.Writer<T, S, E, C> write() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public S currentState() {
        return this.currentState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public String identifier() {
        return this.identifier;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public S initialState() {
        return this.initialState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public S lastState() {
        return this.lastState;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public C startContext() {
        return (C) this.startContext;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Class<C> typeOfContext() {
        return this.contextType;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Class<E> typeOfEvent() {
        return this.eventType;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Class<S> typeOfState() {
        return this.stateType;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineData.Reader
    public Class<? extends T> typeOfStateMachine() {
        return this.stateMachineType;
    }

    public StateMachineDataImpl() {
        this.lastActiveChildStateStore = new HashMap();
        this.parallelStatesStore = new ArrayListMultimap();
        this.states = null;
    }
}

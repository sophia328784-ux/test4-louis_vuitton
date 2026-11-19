package org.squirrelframework.foundation.fsm.impl;

import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.TransitionResult;

/* JADX INFO: loaded from: classes5.dex */
class TransitionResultImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements TransitionResult<T, S, E, C> {
    private boolean accepted;
    private TransitionResult<T, S, E, C> parent;
    private List<TransitionResult<T, S, E, C>> subResults;
    private ImmutableState<T, S, E, C> targetState;

    private void addSubResult(TransitionResult<T, S, E, C> transitionResult) {
        if (this.subResults == null) {
            this.subResults = new ArrayList();
        }
        this.subResults.add(transitionResult);
    }

    private TransitionResult<T, S, E, C> getRootResult() {
        TransitionResult<T, S, E, C> transitionResult = this.parent;
        return transitionResult == null ? this : ((TransitionResultImpl) transitionResult).getRootResult();
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public List<TransitionResult<T, S, E, C>> getAcceptedResults() {
        ArrayList arrayList = new ArrayList();
        if (this.subResults != null) {
            Iterator<TransitionResult<T, S, E, C>> it = getSubResults().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().getAcceptedResults());
            }
        }
        if (this.accepted) {
            arrayList.add(this);
        }
        return arrayList;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public TransitionResult<T, S, E, C> getParentResut() {
        return this.parent;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public List<TransitionResult<T, S, E, C>> getSubResults() {
        List<TransitionResult<T, S, E, C>> list = this.subResults;
        return list != null ? Lists.a(list) : Collections.EMPTY_LIST;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public ImmutableState<T, S, E, C> getTargetState() {
        return this.targetState;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public boolean isAccepted() {
        if (this.accepted) {
            return true;
        }
        if (this.subResults == null) {
            return false;
        }
        Iterator<TransitionResult<T, S, E, C>> it = getSubResults().iterator();
        while (it.hasNext()) {
            if (it.next().isAccepted()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public boolean isDeclined() {
        return !isAccepted();
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public TransitionResult<T, S, E, C> setAccepted(boolean z) {
        this.accepted = z;
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public TransitionResult<T, S, E, C> setParent(TransitionResult<T, S, E, C> transitionResult) {
        this.parent = transitionResult;
        if (transitionResult != null && (transitionResult instanceof TransitionResultImpl)) {
            ((TransitionResultImpl) transitionResult).addSubResult(this);
        }
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.TransitionResult
    public TransitionResult<T, S, E, C> setTargetState(ImmutableState<T, S, E, C> immutableState) {
        this.targetState = immutableState;
        return this;
    }
}

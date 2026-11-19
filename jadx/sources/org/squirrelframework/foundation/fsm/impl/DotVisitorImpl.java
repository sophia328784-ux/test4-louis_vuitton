package org.squirrelframework.foundation.fsm.impl;

import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import java.util.LinkedList;
import org.squirrelframework.foundation.fsm.DotVisitor;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.ImmutableTransition;
import org.squirrelframework.foundation.fsm.StateMachine;

/* JADX INFO: loaded from: classes5.dex */
class DotVisitorImpl extends AbstractVisitor implements DotVisitor {
    protected final StringBuilder transBuf = new StringBuilder();

    @Override // org.squirrelframework.foundation.fsm.DotVisitor
    public void convertDotFile(String str) {
        saveFile(d21.j(str, ".dot"), this.buffer.toString());
    }

    public ImmutableState<?, ?, ?, ?> getSimpleChildOf(ImmutableState<?, ?, ?, ?> immutableState) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(immutableState);
        while (!linkedList.isEmpty()) {
            ImmutableState immutableState2 = (ImmutableState) linkedList.poll();
            int size = immutableState2.getChildStates().size();
            for (int i2 = 0; i2 < size; i2++) {
                ImmutableState<?, ?, ?, ?> immutableState3 = (ImmutableState) immutableState2.getChildStates().get(i2);
                if (!immutableState3.hasChildStates()) {
                    return immutableState3;
                }
                linkedList.add(immutableState3);
            }
        }
        return immutableState;
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(ImmutableTransition<?, ?, ?, ?> immutableTransition) {
        ImmutableState<?, ?, ?, ?> sourceState = immutableTransition.getSourceState();
        ImmutableState<?, ?, ?, ?> targetState = immutableTransition.getTargetState();
        String string = sourceState.getStateId().toString();
        String string2 = targetState.getStateId().toString();
        boolean zHasChildStates = sourceState.hasChildStates();
        boolean zHasChildStates2 = targetState.hasChildStates();
        String strG = zHasChildStates ? tr.g("cluster_", string) : null;
        String strG2 = zHasChildStates2 ? tr.g("cluster_", string2) : null;
        if (zHasChildStates) {
            string = getSimpleChildOf(sourceState).getStateId().toString();
        }
        if (zHasChildStates2) {
            string2 = getSimpleChildOf(targetState).getStateId().toString();
        }
        String string3 = immutableTransition.getEvent().toString();
        String strH = strG != null ? fc.h("ltail=\"", strG, "\"") : null;
        String strH2 = strG2 != null ? fc.h("lhead=\"", strG2, "\"") : null;
        StringBuilder sb = this.transBuf;
        StringBuilder sbS = fc.s("\n", string, " -> ", string2, " [");
        sbS.append(strH != null ? strH.concat(",") : "");
        sb.append(tr.l(sbS, strH2 != null ? strH2.concat(",") : "", " label=\"", string3, "\"];"));
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(StateMachine<?, ?, ?, ?> stateMachine) {
        this.buffer.append((CharSequence) this.transBuf);
        writeLine("}}");
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(ImmutableTransition<?, ?, ?, ?> immutableTransition) {
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(ImmutableState<?, ?, ?, ?> immutableState) {
        if (immutableState.hasChildStates()) {
            writeLine("}");
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(ImmutableState<?, ?, ?, ?> immutableState) {
        String string = immutableState.getStateId().toString();
        if (immutableState.hasChildStates()) {
            writeLine(d21.l("subgraph cluster_", string, " {\nlabel=\"", string, "\";"));
            if (immutableState.getHistoryType() == HistoryType.DEEP) {
                writeLine(d21.j(string, "History [label=\"\"];"));
                return;
            } else {
                if (immutableState.getHistoryType() == HistoryType.SHALLOW) {
                    writeLine(d21.j(string, "History [label=\"\"];"));
                    return;
                }
                return;
            }
        }
        writeLine(d21.k(string, " [label=\"", string, "\"];"));
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(StateMachine<?, ?, ?, ?> stateMachine) {
        writeLine("digraph {\ncompound=true;");
        writeLine("subgraph cluster_StateMachine {\nlabel=\"" + stateMachine.getClass().getName() + "\";");
    }
}

package org.squirrelframework.foundation.fsm.impl;

import defpackage.d21;
import defpackage.n00;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilderFactory;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.ImmutableState;
import org.squirrelframework.foundation.fsm.ImmutableTransition;
import org.squirrelframework.foundation.fsm.SCXMLVisitor;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.w3c.dom.Document;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
class SCXMLVisitorImpl extends AbstractVisitor implements SCXMLVisitor {
    private String beautify(String str) {
        try {
            Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(str)));
            DOMImplementationLS dOMImplementationLS = (DOMImplementationLS) DOMImplementationRegistry.newInstance().getDOMImplementation("LS");
            LSSerializer lSSerializerCreateLSSerializer = dOMImplementationLS.createLSSerializer();
            lSSerializerCreateLSSerializer.getDomConfig().setParameter("format-pretty-print", Boolean.TRUE);
            LSOutput lSOutputCreateLSOutput = dOMImplementationLS.createLSOutput();
            lSOutputCreateLSOutput.setEncoding("UTF-8");
            StringWriter stringWriter = new StringWriter();
            lSOutputCreateLSOutput.setCharacterStream(stringWriter);
            lSSerializerCreateLSSerializer.write(document, lSOutputCreateLSOutput);
            return stringWriter.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    private boolean isExternalAction(Action<?, ?, ?, ?> action) {
        return !action.name().startsWith("__");
    }

    private void writeAction(Action<?, ?, ?, ?> action) {
        if (isExternalAction(action)) {
            writeLine(n00.r(quoteName(action.toString()), "/>", new StringBuilder("<sqrl:action content=")));
        }
    }

    @Override // org.squirrelframework.foundation.fsm.SCXMLVisitor
    public void convertSCXMLFile(String str, boolean z) {
        saveFile(d21.j(str, ".scxml"), getScxml(z));
    }

    @Override // org.squirrelframework.foundation.fsm.SCXMLVisitor
    public String getScxml(boolean z) {
        StringBuilder sb = this.buffer;
        return z ? beautify(sb.toString()) : sb.toString();
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(ImmutableState<?, ?, ?, ?> immutableState) {
        if (immutableState.isParallelState()) {
            writeLine(n00.r(quoteName(immutableState.toString()), ">", new StringBuilder("<parallel id= ")));
        } else if (immutableState.isFinalState()) {
            writeLine(n00.r(quoteName(immutableState.toString()), ">", new StringBuilder("<final id= ")));
        } else {
            StringBuilder sb = new StringBuilder("<state id= ");
            sb.append(quoteName(immutableState.toString()));
            if (immutableState.getInitialState() != null) {
                sb.append(" initial= ");
                sb.append(quoteName(immutableState.getInitialState().toString()));
            }
            sb.append(">");
            writeLine(sb.toString());
        }
        if (!immutableState.getEntryActions().isEmpty()) {
            writeLine("<onentry>");
            Iterator it = immutableState.getEntryActions().iterator();
            while (it.hasNext()) {
                writeAction((Action) it.next());
            }
            writeLine("</onentry>");
        }
        if (immutableState.getHistoryType() != HistoryType.NONE) {
            writeLine(n00.r(quoteName(immutableState.getHistoryType().name().toLowerCase()), "/>", new StringBuilder("<history type= ")));
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(ImmutableState<?, ?, ?, ?> immutableState) {
        if (!immutableState.getExitActions().isEmpty()) {
            writeLine("<onexit>");
            Iterator it = immutableState.getExitActions().iterator();
            while (it.hasNext()) {
                writeAction((Action) it.next());
            }
            writeLine("</onexit>");
        }
        if (immutableState.isParallelState()) {
            writeLine("</parallel>");
        } else if (immutableState.isFinalState()) {
            writeLine("</final>");
        } else {
            writeLine("</state>");
        }
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(StateMachine<?, ?, ?, ?> stateMachine) {
        writeLine("</scxml>");
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnExit(ImmutableTransition<?, ?, ?, ?> immutableTransition) {
        writeLine("</transition>");
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(StateMachine<?, ?, ?, ?> stateMachine) {
        writeLine(n00.r(quoteName(stateMachine.getInitialState().toString()), " version=\"1.0\" xmlns=\"http://www.w3.org/2005/07/scxml\" xmlns:sqrl=\"http://squirrelframework.org/squirrel\">", new StringBuilder("<scxml initial=")));
        writeLine("<sqrl:fsm " + stateMachine.getDescription() + " />");
    }

    @Override // org.squirrelframework.foundation.fsm.Visitor
    public void visitOnEntry(ImmutableTransition<?, ?, ?, ?> immutableTransition) {
        StringBuilder sb = new StringBuilder("<transition event=");
        sb.append(quoteName(immutableTransition.getEvent().toString()));
        sb.append(" sqrl:priority=");
        sb.append(quoteName(Integer.toString(immutableTransition.getPriority())));
        sb.append(" sqrl:type=");
        sb.append(quoteName(immutableTransition.getType().toString()));
        sb.append(" target=");
        sb.append(quoteName(immutableTransition.getTargetState().toString()));
        sb.append(" cond=");
        writeLine(n00.r(quoteName(immutableTransition.getCondition().toString()), ">", sb));
        Iterator it = immutableTransition.getActions().iterator();
        while (it.hasNext()) {
            writeAction((Action) it.next());
        }
    }
}

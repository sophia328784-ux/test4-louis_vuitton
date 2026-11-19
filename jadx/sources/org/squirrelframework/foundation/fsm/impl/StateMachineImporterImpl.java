package org.squirrelframework.foundation.fsm.impl;

import com.batch.android.s.b;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ListMultimap;
import defpackage.r81;
import defpackage.tr;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.lang3.StringUtils;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.Converter;
import org.squirrelframework.foundation.fsm.ConverterProvider;
import org.squirrelframework.foundation.fsm.HistoryType;
import org.squirrelframework.foundation.fsm.MutableState;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.squirrelframework.foundation.fsm.StateCompositeType;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.StateMachineBuilder;
import org.squirrelframework.foundation.fsm.StateMachineBuilderFactory;
import org.squirrelframework.foundation.fsm.StateMachineImporter;
import org.squirrelframework.foundation.util.ReflectUtils;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineImporterImpl<T extends StateMachine<T, S, E, C>, S, E, C> extends DefaultHandler implements StateMachineImporter<T, S, E, C> {
    public static String SCXML_NAMESPACE = "http://www.w3.org/2005/07/scxml";
    public static String SQRL_NAMESPACE = "http://squirrelframework.org/squirrel";
    protected TransitionBuilderImpl<T, S, E, C> currentTranstionBuilder;
    protected Converter<E> eventConverter;
    protected Boolean isEntryAction;
    protected Converter<S> stateConverter;
    protected StateMachineBuilder<T, S, E, C> stateMachineBuilder;
    protected String value = "";
    protected String sqrlPrefix = "";
    protected final Stack<MutableState<T, S, E, C>> currentStates = new Stack<>();
    protected final ListMultimap<MutableState<T, S, E, C>, MutableState<T, S, E, C>> hierarchicalStateStore = new ArrayListMultimap();
    protected final Map<String, Object> reusableInstance = new HashMap();

    public StateMachineImporterImpl() {
        registerReusableInstance(Conditions.always());
        registerReusableInstance(Conditions.never());
    }

    private <M> M newInstance(String str) {
        M m = (M) this.reusableInstance.get(str);
        return m == null ? (M) ReflectUtils.newInstance(str) : m;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) {
        this.value = new String(cArr, i2, i3);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (str3.equals("onentry") || str3.equals("onexit")) {
            this.isEntryAction = null;
            return;
        }
        if (!str3.equals("state") && !str3.equals("final") && !str3.equals("parallel")) {
            if (str3.equals("transition")) {
                this.currentTranstionBuilder = null;
                return;
            }
            return;
        }
        MutableState<T, S, E, C> mutableStatePop = this.currentStates.pop();
        List<MutableState<T, S, E, C>> listA = this.hierarchicalStateStore.a((Object) mutableStatePop);
        if (listA.isEmpty()) {
            return;
        }
        for (MutableState<T, S, E, C> mutableState : listA) {
            mutableState.setParentState(mutableStatePop);
            mutableStatePop.addChildState(mutableState);
        }
    }

    public MutableState<T, S, E, C> getCurrentState() {
        return this.currentStates.peek();
    }

    public TransitionBuilderImpl<T, S, E, C> getCurrentTranstionBuilder() {
        return this.currentTranstionBuilder;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public StateMachineBuilder<T, S, E, C> importFromFile(File file) {
        try {
            return importFromInputStream(new FileInputStream(file));
        } catch (FileNotFoundException e2) {
            r81.j("Canont find file", e2);
            return null;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public StateMachineBuilder<T, S, E, C> importFromInputStream(InputStream inputStream) {
        SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
        sAXParserFactoryNewInstance.setNamespaceAware(true);
        try {
            sAXParserFactoryNewInstance.newSAXParser().parse(inputStream, this);
            return this.stateMachineBuilder;
        } catch (Exception e2) {
            r81.j("Incorrect content format.", e2);
            return null;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public StateMachineBuilder<T, S, E, C> importFromString(String str) {
        return importFromInputStream(new ByteArrayInputStream(str.getBytes()));
    }

    public boolean isConstructState() {
        return this.currentStates.size() > 0 && this.currentTranstionBuilder == null && this.isEntryAction != null;
    }

    public boolean isConstructTransition() {
        return this.currentStates.size() > 0 && this.currentTranstionBuilder != null && this.isEntryAction == null;
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public void registerReusableInstance(Object obj) {
        registerReusableInstance(obj.getClass().getName(), obj);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        TransitionBuilderImpl<T, S, E, C> transitionBuilderImpl;
        String strSubstring;
        if (str2.equals("fsm") && str.equals(SQRL_NAMESPACE)) {
            Class<?> cls = ReflectUtils.getClass(attributes.getValue("fsm-type"));
            cls.getClass();
            Class<?> cls2 = ReflectUtils.getClass(attributes.getValue("state-type"));
            cls2.getClass();
            ConverterProvider converterProvider = ConverterProvider.INSTANCE;
            Converter<S> converter = converterProvider.getConverter(cls2);
            this.stateConverter = converter;
            converter.getClass();
            Class<?> cls3 = ReflectUtils.getClass(attributes.getValue("event-type"));
            cls3.getClass();
            Converter<E> converter2 = converterProvider.getConverter(cls3);
            this.eventConverter = converter2;
            converter2.getClass();
            Class<?> cls4 = ReflectUtils.getClass(attributes.getValue("context-type"));
            cls4.getClass();
            String value = attributes.getValue("extra-parameters");
            Class[] clsArr = new Class[0];
            if (value != null && value.length() > 2) {
                String[] strArrD = StringUtils.d(value.substring(1, value.length() - 1), ',');
                clsArr = new Class[strArrD.length];
                for (int i2 = 0; i2 < strArrD.length; i2++) {
                    clsArr[i2] = ReflectUtils.getClass(strArrD[i2]);
                }
            }
            StateMachineBuilder<T, S, E, C> stateMachineBuilderCreate = StateMachineBuilderFactory.create(cls, cls2, cls3, cls4, clsArr);
            this.stateMachineBuilder = stateMachineBuilderCreate;
            ((StateMachineBuilderImpl) stateMachineBuilderCreate).setScanAnnotations(false);
            String value2 = attributes.getValue("finish-event");
            if (value2 != null) {
                this.stateMachineBuilder.defineFinishEvent(this.eventConverter.convertFromString(value2));
            }
            String value3 = attributes.getValue("start-event");
            if (value3 != null) {
                this.stateMachineBuilder.defineStartEvent(this.eventConverter.convertFromString(value3));
            }
            String value4 = attributes.getValue("terminate-event");
            if (value4 != null) {
                this.stateMachineBuilder.defineTerminateEvent(this.eventConverter.convertFromString(value4));
            }
            this.currentStates.clear();
            this.currentTranstionBuilder = null;
            return;
        }
        if (str3.equals("state") || str3.equals("final") || str3.equals("parallel")) {
            MutableState<T, S, E, C> currentState = this.currentStates.size() > 0 ? getCurrentState() : null;
            S sConvertFromString = this.stateConverter.convertFromString(attributes.getValue(b.a.f24015b));
            boolean zEquals = str3.equals("final");
            Stack<MutableState<T, S, E, C>> stack = this.currentStates;
            StateMachineBuilder<T, S, E, C> stateMachineBuilder = this.stateMachineBuilder;
            if (zEquals) {
                stack.push(stateMachineBuilder.defineFinalState(sConvertFromString));
            } else {
                stack.push(stateMachineBuilder.defineState(sConvertFromString));
                if (str3.equals("parallel")) {
                    getCurrentState().setCompositeType(StateCompositeType.PARALLEL);
                }
            }
            String value5 = attributes.getValue("initial");
            if (value5 != null) {
                getCurrentState().setInitialState(this.stateMachineBuilder.defineState(this.stateConverter.convertFromString(value5)));
            }
            if (currentState != null) {
                this.hierarchicalStateStore.put(currentState, getCurrentState());
                return;
            }
            return;
        }
        if (str3.equals("history")) {
            String value6 = attributes.getValue("type");
            if (value6.equals("deep")) {
                getCurrentState().setHistoryType(HistoryType.DEEP);
                return;
            } else {
                if (value6.equals("shallow")) {
                    getCurrentState().setHistoryType(HistoryType.SHALLOW);
                    return;
                }
                return;
            }
        }
        if (str3.equals("onentry")) {
            this.isEntryAction = Boolean.TRUE;
            return;
        }
        if (str3.equals("onexit")) {
            this.isEntryAction = Boolean.FALSE;
            return;
        }
        if (!str2.equals("action") || !str.equals(SQRL_NAMESPACE)) {
            if (str3.equals("transition")) {
                E eConvertFromString = this.eventConverter.convertFromString(attributes.getValue(MvelScriptManager.VAR_EVENT));
                S sConvertFromString2 = this.stateConverter.convertFromString(attributes.getValue("target"));
                String value7 = attributes.getValue(SQRL_NAMESPACE, "type");
                Integer numValueOf = 1;
                try {
                    numValueOf = Integer.valueOf(attributes.getValue(SQRL_NAMESPACE, "priority"));
                } catch (NumberFormatException unused) {
                }
                if (value7.equals("INTERNAL")) {
                    transitionBuilderImpl = (TransitionBuilderImpl) this.stateMachineBuilder.internalTransition(numValueOf.intValue());
                } else {
                    boolean zEquals2 = value7.equals("LOCAL");
                    StateMachineBuilder<T, S, E, C> stateMachineBuilder2 = this.stateMachineBuilder;
                    transitionBuilderImpl = zEquals2 ? (TransitionBuilderImpl) stateMachineBuilder2.localTransition(numValueOf.intValue()) : (TransitionBuilderImpl) stateMachineBuilder2.externalTransition(numValueOf.intValue());
                }
                this.currentTranstionBuilder = transitionBuilderImpl;
                getCurrentTranstionBuilder().from(getCurrentState().getStateId()).to(sConvertFromString2).on(eConvertFromString);
                String value8 = attributes.getValue("cond");
                int iIndexOf = value8.indexOf("#");
                String strSubstring2 = value8.substring(0, iIndexOf);
                String strSubstring3 = value8.substring(iIndexOf + 1);
                if (strSubstring2.equals("instance")) {
                    getCurrentTranstionBuilder().when((Condition) newInstance(strSubstring3));
                    return;
                } else {
                    if (strSubstring2.equals("mvel")) {
                        getCurrentTranstionBuilder().whenMvel(strSubstring3);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        String value9 = attributes.getValue("content");
        int iIndexOf2 = value9.indexOf("#");
        String strSubstring4 = value9.substring(0, iIndexOf2);
        String strSubstring5 = value9.substring(iIndexOf2 + 1);
        int iIndexOf3 = strSubstring5.indexOf(":");
        if (iIndexOf3 > 0) {
            String strSubstring6 = strSubstring5.substring(0, iIndexOf3);
            strSubstring = strSubstring5.substring(iIndexOf3 + 1);
            strSubstring5 = strSubstring6;
        } else {
            strSubstring = "";
        }
        if (strSubstring4.equals("method")) {
            String strH = tr.h(strSubstring5, ":", strSubstring);
            if (!isConstructState()) {
                if (isConstructTransition()) {
                    getCurrentTranstionBuilder().callMethod(strH);
                    return;
                }
                return;
            }
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = this.isEntryAction;
            StateMachineBuilder<T, S, E, C> stateMachineBuilder3 = this.stateMachineBuilder;
            if (bool == bool2) {
                stateMachineBuilder3.onEntry(getCurrentState().getStateId()).callMethod(strH);
                return;
            } else {
                stateMachineBuilder3.onExit(getCurrentState().getStateId()).callMethod(strH);
                return;
            }
        }
        if (strSubstring4.equals("instance")) {
            Action<T, S, E, C> action = (Action) newInstance(strSubstring5);
            if (!isConstructState()) {
                if (isConstructTransition()) {
                    getCurrentTranstionBuilder().perform(action);
                    return;
                }
                return;
            }
            Boolean bool3 = Boolean.TRUE;
            Boolean bool4 = this.isEntryAction;
            if (bool3 == bool4) {
                this.stateMachineBuilder.onEntry(getCurrentState().getStateId()).perform(action);
                return;
            } else {
                if (Boolean.FALSE == bool4) {
                    this.stateMachineBuilder.onExit(getCurrentState().getStateId()).perform(action);
                    return;
                }
                return;
            }
        }
        if (strSubstring4.equals("mvel")) {
            if (!isConstructState()) {
                if (isConstructTransition()) {
                    getCurrentTranstionBuilder().evalMvel(strSubstring5);
                    return;
                }
                return;
            }
            Boolean bool5 = Boolean.TRUE;
            Boolean bool6 = this.isEntryAction;
            if (bool5 == bool6) {
                this.stateMachineBuilder.onEntry(getCurrentState().getStateId()).evalMvel(strSubstring5);
            } else if (Boolean.FALSE == bool6) {
                this.stateMachineBuilder.onExit(getCurrentState().getStateId()).evalMvel(strSubstring5);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        if (str2.equals(SQRL_NAMESPACE)) {
            this.sqrlPrefix = str;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public void unregisterReusableInstance(String str) {
        this.reusableInstance.remove(str);
    }

    @Override // org.squirrelframework.foundation.fsm.StateMachineImporter
    public void registerReusableInstance(String str, Object obj) {
        this.reusableInstance.put(str, obj);
    }
}

package com.networkbench.agent.impl.session;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SpanDatas implements SpanFormat {
    private static final String TAG = "SpanDatas";
    List<Event> shoulEventList;
    List<Span> shouldSendSpan;
    private static List<Span> transactionSpanList = new CopyOnWriteArrayList();
    private static List<Event> eventList = new CopyOnWriteArrayList();

    public void addEvent(Event event) {
        if (event != null) {
            if (eventList.size() <= ConfigurationName.MAX_ERROR_COUNT) {
                eventList.add(event);
            }
            try {
                if (r.u().aC()) {
                    NBSAppAgent.debugLog(event.asJsonObject().toString(), "TingyunSDK_event");
                }
                j.a("SpanDatas add event to harvestData :", event);
            } catch (Throwable th) {
                z81.k(new StringBuilder("addEvent debuglog has error :"), th);
            }
        }
    }

    public void addTransactionSpan(Span span) {
        if (span != null) {
            Logger.debug(TAG, "add span to harvestData");
            if (transactionSpanList.size() <= ConfigurationName.MAX_ERROR_COUNT) {
                transactionSpanList.add(span);
            }
            try {
                if (r.u().aC()) {
                    NBSAppAgent.debugLog(span.asJsonObject().toString(), "TingyunSDK_transaction");
                }
                j.a("SpanDatas add span to harvestData :", span);
            } catch (Throwable th) {
                z81.k(new StringBuilder("addTransactionSpan debuglog has error :"), th);
            }
        }
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return transactionSpanList.size() == 0 && eventList.size() == 0;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        this.shouldSendSpan = new ArrayList(transactionSpanList);
        this.shoulEventList = new ArrayList(eventList);
        if (this.shouldSendSpan.size() <= 0 && this.shoulEventList.size() <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Span> it = this.shouldSendSpan.iterator();
        while (it.hasNext()) {
            sb.append(it.next().formatInfo());
            sb.append("\n");
        }
        Iterator<Event> it2 = this.shoulEventList.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().formatInfo());
            sb.append("\n");
        }
        return sb.toString();
    }

    public List<Event> getEventList() {
        return eventList;
    }

    public List<Span> getTransactionSpanList() {
        return transactionSpanList;
    }

    public void removeData() {
        List<Span> list = this.shouldSendSpan;
        if (list != null) {
            transactionSpanList.removeAll(list);
        }
        List<Event> list2 = this.shoulEventList;
        if (list2 != null) {
            eventList.removeAll(list2);
        }
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        removeData();
    }
}

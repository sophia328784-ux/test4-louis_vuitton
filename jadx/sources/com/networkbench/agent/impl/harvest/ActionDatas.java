package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class ActionDatas extends HarvestableArray {
    private static final e log = f.a();
    public AtomicBoolean isSendState = new AtomicBoolean(false);
    private final Collection<ActionData> actionDatas = new CopyOnWriteArrayList();
    private final Collection<ActionData> reserveActionDatas = new CopyOnWriteArrayList();

    public synchronized void add(ActionData actionData) {
        if (this.isSendState.get()) {
            this.reserveActionDatas.add(actionData);
        } else {
            this.actionDatas.add(actionData);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public synchronized JsonArray asJsonArray() {
        JsonArray jsonArray;
        jsonArray = new JsonArray();
        Iterator<ActionData> it = this.actionDatas.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public synchronized void clear() {
        this.actionDatas.clear();
    }

    public int count() {
        return this.actionDatas.size();
    }

    public Collection<ActionData> getActionDatas() {
        return this.actionDatas;
    }

    public synchronized void recoverData() {
        this.actionDatas.addAll(this.reserveActionDatas);
        this.reserveActionDatas.clear();
    }

    public synchronized void remove(ActionData actionData) {
        this.actionDatas.remove(actionData);
    }

    public String toString() {
        return "ActionDatas{actionDatas=" + this.actionDatas + '}';
    }
}

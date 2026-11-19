package com.sightcall.universal.agent;

/* JADX INFO: loaded from: classes3.dex */
public class UnregistrationEvent {
    private final Agent agent;

    public UnregistrationEvent(Agent agent) {
        this.agent = agent;
    }

    public Agent agent() {
        return this.agent;
    }
}

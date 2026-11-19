package com.sightcall.universal.agent;

/* JADX INFO: loaded from: classes3.dex */
public class RegistrationEvent {
    private final Agent agent;

    public RegistrationEvent(Agent agent) {
        this.agent = agent;
    }

    public Agent agent() {
        return this.agent;
    }
}

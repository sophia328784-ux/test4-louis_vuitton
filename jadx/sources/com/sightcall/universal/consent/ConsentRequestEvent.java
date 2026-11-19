package com.sightcall.universal.consent;

import com.sightcall.session.Reference;

/* JADX INFO: loaded from: classes3.dex */
public class ConsentRequestEvent {
    private final Reference.UseCase.Consent consent;

    public ConsentRequestEvent(Reference.UseCase.Consent consent) {
        this.consent = consent;
    }

    public Reference.UseCase.Consent consent() {
        return this.consent;
    }
}

package com.sightcall.universal.consent;

import com.sightcall.session.Reference;

/* JADX INFO: loaded from: classes3.dex */
public class ConsentResultEvent {
    private final Reference.UseCase.Consent consent;

    public ConsentResultEvent(Reference.UseCase.Consent consent) {
        this.consent = consent;
    }

    public Reference.UseCase.Consent consent() {
        return this.consent;
    }
}

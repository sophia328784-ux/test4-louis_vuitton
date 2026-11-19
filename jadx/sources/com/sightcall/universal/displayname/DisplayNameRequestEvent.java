package com.sightcall.universal.displayname;

/* JADX INFO: loaded from: classes3.dex */
public class DisplayNameRequestEvent {
    private final DisplayNameAndLiveTranslation displayNameAndLiveTranslation;

    public DisplayNameRequestEvent(DisplayNameAndLiveTranslation displayNameAndLiveTranslation) {
        this.displayNameAndLiveTranslation = displayNameAndLiveTranslation;
    }

    public DisplayNameAndLiveTranslation displayNameAndLiveTranslation() {
        return this.displayNameAndLiveTranslation;
    }
}

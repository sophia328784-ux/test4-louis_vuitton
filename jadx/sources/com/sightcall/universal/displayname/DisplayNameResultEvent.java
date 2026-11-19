package com.sightcall.universal.displayname;

/* JADX INFO: loaded from: classes3.dex */
public class DisplayNameResultEvent {
    private final DisplayNameAndLiveTranslation displayNameAndLiveTranslation;

    public DisplayNameResultEvent(DisplayNameAndLiveTranslation displayNameAndLiveTranslation) {
        this.displayNameAndLiveTranslation = displayNameAndLiveTranslation;
    }

    public DisplayNameAndLiveTranslation displayName() {
        return this.displayNameAndLiveTranslation;
    }
}

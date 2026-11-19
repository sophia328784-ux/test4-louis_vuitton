package org.teleal.cling.support.model;

/* JADX INFO: loaded from: classes5.dex */
public enum TransportState {
    STOPPED,
    PLAYING,
    TRANSITIONING,
    PAUSED_PLAYBACK,
    PAUSED_RECORDING,
    RECORDING,
    NO_MEDIA_PRESENT,
    CUSTOM;

    String value = name();

    TransportState() {
    }
}

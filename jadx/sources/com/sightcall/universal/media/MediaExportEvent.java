package com.sightcall.universal.media;

/* JADX INFO: loaded from: classes3.dex */
public class MediaExportEvent {
    private final Media media;
    private final Metadata metadata;

    public MediaExportEvent(Media media, Metadata metadata) {
        this.media = media;
        this.metadata = metadata;
    }

    public Media media() {
        return this.media;
    }

    public Metadata metadata() {
        return this.metadata;
    }
}

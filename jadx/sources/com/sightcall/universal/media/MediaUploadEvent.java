package com.sightcall.universal.media;

/* JADX INFO: loaded from: classes3.dex */
public class MediaUploadEvent {
    private final Media media;
    private final Metadata metadata;
    private final Status status;

    public enum Status {
        UPLOADING,
        CANCELLED,
        SUCCESS,
        FAILURE,
        RESCHEDULED
    }

    public MediaUploadEvent(Media media, Metadata metadata, Status status) {
        this.media = media;
        this.metadata = metadata;
        this.status = status;
    }

    public Media media() {
        return this.media;
    }

    public Metadata metadata() {
        return this.metadata;
    }

    public Status status() {
        return this.status;
    }
}

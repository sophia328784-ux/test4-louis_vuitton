package com.linkplay.core.nas;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public enum ENUMNASMEDIAINFOTYPE implements Serializable {
    DATE("date"),
    ARTIST("artist"),
    ALBUM("album"),
    GENRE("genre"),
    ICON("icon"),
    ALBUMARTURI("albumArtURI"),
    TRACK_NUMBER("originalTrackNumber");

    private String value;

    ENUMNASMEDIAINFOTYPE(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}

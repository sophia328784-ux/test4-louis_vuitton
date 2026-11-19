package com.sightcall.universal.fcm.messages;

import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Test {
    public static final String KEY = "test";

    @Json(name = "content")
    private String text;

    @Json(name = "title")
    private String title;

    public String text() {
        return this.text;
    }

    public String title() {
        return this.title;
    }
}

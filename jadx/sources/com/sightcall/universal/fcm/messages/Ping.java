package com.sightcall.universal.fcm.messages;

import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Ping {
    public static final String KEY = "ping";

    @Json(name = "text")
    private String text;

    @Json(name = "title")
    private String title;

    public String text() {
        return this.text;
    }

    public String title() {
        String str = this.title;
        return str != null ? str : "🔥 Firebase Cloud Messaging";
    }
}

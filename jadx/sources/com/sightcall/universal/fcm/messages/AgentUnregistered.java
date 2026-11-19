package com.sightcall.universal.fcm.messages;

import android.text.TextUtils;
import com.sightcall.universal.agent.Agent;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class AgentUnregistered {
    public static final String KEY = "agent-unregistered";

    @Json(name = "authorization-token")
    private String token;

    public boolean relatesTo(Agent agent) {
        String str;
        return (agent == null || (str = this.token) == null || !TextUtils.equals(str, agent.token())) ? false : true;
    }

    public String token() {
        return this.token;
    }
}

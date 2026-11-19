package com.dynatrace.android.agent.conf;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface ServerConfigurationParser {
    void a(ServerConfiguration.Builder builder, JSONObject jSONObject);

    void b(ServerConfiguration.Builder builder, ReplayConfiguration.Builder builder2, JSONObject jSONObject);

    ServerConfiguration c(ServerConfiguration serverConfiguration, String str);

    ServerConfiguration d(HashMap map, AgentMode agentMode);

    void e(ServerConfiguration.Builder builder, ReplayConfiguration.Builder builder2, JSONObject jSONObject);
}

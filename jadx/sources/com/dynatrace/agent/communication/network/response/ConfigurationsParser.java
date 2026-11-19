package com.dynatrace.agent.communication.network.response;

import com.dynatrace.android.agent.conf.ReplayConfiguration;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.ServerConfigurationParser;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;", "", "Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;", "v3configParser", "Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;", "v4configParser", "<init>", "(Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigurationsParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ServerConfigurationParser f26651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationManagerV4 f26652b;

    public ConfigurationsParser(ServerConfigurationParser serverConfigurationParser, ServerConfigurationManagerV4 serverConfigurationManagerV4) {
        serverConfigurationParser.getClass();
        serverConfigurationManagerV4.getClass();
        this.f26651a = serverConfigurationParser;
        this.f26652b = serverConfigurationManagerV4;
    }

    public final ServerConfiguration a(ServerConfiguration serverConfiguration, String str) throws JSONException {
        ServerConfiguration.Builder builder;
        Object objNextValue = new JSONTokener(str).nextValue();
        objNextValue.getClass();
        JSONObject jSONObject = (JSONObject) objNextValue;
        JSONObject jSONObject2 = jSONObject.getJSONObject("dynamicConfig");
        if (!jSONObject2.has("bp3Config")) {
            Utility.b("config v3 parsing: BPv3 config missing");
            return null;
        }
        boolean z = jSONObject.has("revision") && jSONObject.has("appConfig") && jSONObject.has("environmentConfig");
        Long lA = JsonExtensionKt.a(jSONObject);
        ServerConfigurationParser serverConfigurationParser = this.f26651a;
        if (!z || lA == null || lA.longValue() <= serverConfiguration.o) {
            serverConfiguration.getClass();
            builder = new ServerConfiguration.Builder(serverConfiguration, true);
        } else {
            builder = new ServerConfiguration.Builder();
            builder.o = lA.longValue();
            ReplayConfiguration replayConfiguration = ReplayConfiguration.f27392k;
            ReplayConfiguration.Builder builder2 = new ReplayConfiguration.Builder();
            serverConfigurationParser.e(builder, builder2, jSONObject.getJSONObject("environmentConfig").getJSONObject("bp3Config"));
            serverConfigurationParser.b(builder, builder2, jSONObject.getJSONObject("appConfig").getJSONObject("bp3Config"));
            builder.f27425j = new ReplayConfiguration(builder2);
        }
        serverConfigurationParser.a(builder, jSONObject2.getJSONObject("bp3Config"));
        return new ServerConfiguration(builder);
    }
}

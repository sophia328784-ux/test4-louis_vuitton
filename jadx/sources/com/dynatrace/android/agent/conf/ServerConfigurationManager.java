package com.dynatrace.android.agent.conf;

import com.batch.android.s.b;
import com.dynatrace.android.agent.comm.InvalidConfigurationException;
import com.dynatrace.android.agent.util.Utility;
import java.text.ParseException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes2.dex */
public class ServerConfigurationManager implements ServerConfigurationParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ServerConfiguration f27427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ServerConfiguration f27428c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27429a;

    static {
        ServerConfiguration.Builder builder = new ServerConfiguration.Builder();
        builder.g = 0;
        builder.n = ServerConfiguration.Status.ERROR;
        f27427b = new ServerConfiguration(builder);
        ServerConfiguration.Builder builder2 = new ServerConfiguration.Builder();
        builder2.o = -1L;
        f27428c = new ServerConfiguration(builder2);
    }

    public ServerConfigurationManager(String str) {
        this.f27429a = str;
    }

    public static int f(JSONObject jSONObject, String str, int i2, int i3, int i4) {
        if (jSONObject.has(str)) {
            try {
                return Math.max(Math.min(jSONObject.getInt(str), i3), i2);
            } catch (JSONException unused) {
                Utility.b("parsing v3 config: expected JSON property \"" + str + "\" to be an Integer, but it was not");
            }
        }
        return i4;
    }

    public static int g(JSONObject jSONObject, String str, int i2, int i3, int i4, int i5) {
        if (jSONObject.has(str)) {
            try {
                int i6 = jSONObject.getInt(str);
                if (i6 >= i2) {
                    return i6 > i3 ? i5 : i6;
                }
            } catch (JSONException unused) {
                Utility.b("parsing v3 config: expected JSON property \"" + str + "\" to be an Integer, but it was not");
            }
        }
        return i4;
    }

    public static String h(ServerConfiguration serverConfiguration) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("maxBeaconSizeKb", serverConfiguration.f27409a);
        jSONObject2.put("selfmonitoring", serverConfiguration.f27410b);
        SessionSplitConfiguration sessionSplitConfiguration = serverConfiguration.f27411c;
        jSONObject2.put("maxSessionDurationMins", sessionSplitConfiguration.f27431a);
        jSONObject2.put("sessionTimeoutSec", sessionSplitConfiguration.f27432b);
        jSONObject2.put("sendIntervalSec", serverConfiguration.d);
        jSONObject2.put("maxCachedCrashesCount", serverConfiguration.f27412e);
        RageTapConfiguration rageTapConfiguration = serverConfiguration.f27413f;
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("tapDuration", rageTapConfiguration.f27386a);
        jSONObject3.put("dispersionRadius", rageTapConfiguration.f27387b);
        jSONObject3.put("timespanDifference", rageTapConfiguration.f27388c);
        jSONObject3.put("minimumNumberOfTaps", rageTapConfiguration.d);
        jSONObject2.put("rageTapConfig", jSONObject3);
        ReplayConfiguration replayConfiguration = serverConfiguration.f27416j;
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("protocolVersion", replayConfiguration.f27397f);
        jSONObject4.put("pixelCopy", replayConfiguration.f27398h);
        jSONObject4.put("colorMasking", replayConfiguration.f27399i);
        jSONObject4.put("composeEnabled", replayConfiguration.f27400j);
        jSONObject2.put("replayConfig", jSONObject4);
        jSONObject.put("mobileAgentConfig", jSONObject2);
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jSONObject6.put("capture", replayConfiguration.f27393a);
        jSONObject6.put("imageRetentionTimeInMinutes", replayConfiguration.f27396e);
        if (replayConfiguration.f27394b) {
            jSONObject6.put("trafficControlPercentage", replayConfiguration.d);
            jSONObject6.put("crashesEnabled", replayConfiguration.f27395c);
        }
        jSONObject5.put("replayConfig", jSONObject6);
        jSONObject5.put("gen3Enabled", serverConfiguration.f27415i);
        jSONObject5.put("trafficControlPercentage", serverConfiguration.f27414h);
        jSONObject.put("appConfig", jSONObject5);
        JSONObject jSONObject7 = new JSONObject();
        jSONObject7.put("serverId", serverConfiguration.l);
        jSONObject.put("dynamicConfig", jSONObject7);
        jSONObject.put("timestamp", 0L);
        return jSONObject.toString();
    }

    public static boolean i(String str, JSONObject jSONObject, boolean z) {
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            Utility.b("parsing v3 config: expected JSON property \"" + str + "\" to be a Boolean, but it was not");
            return z;
        }
    }

    @Override // com.dynatrace.android.agent.conf.ServerConfigurationParser
    public final void a(ServerConfiguration.Builder builder, JSONObject jSONObject) throws ParseException {
        JSONObject jSONObject2;
        if (jSONObject.has("status") && jSONObject.getString("status").compareToIgnoreCase("ERROR") == 0) {
            throw new ParseException("Error status detected", 0);
        }
        builder.n = ServerConfiguration.Status.OK;
        if (jSONObject.has("multiplicity")) {
            jSONObject2 = jSONObject;
            builder.f27426k = g(jSONObject2, "multiplicity", 0, Integer.MAX_VALUE, 1, 1);
        } else {
            jSONObject2 = jSONObject;
        }
        if (jSONObject2.has("serverId")) {
            builder.l = g(jSONObject2, "serverId", 0, Integer.MAX_VALUE, 1, 1);
        }
        if (jSONObject2.has("switchServer")) {
            builder.m = i("switchServer", jSONObject2, false);
        }
    }

    @Override // com.dynatrace.android.agent.conf.ServerConfigurationParser
    public final void b(ServerConfiguration.Builder builder, ReplayConfiguration.Builder builder2, JSONObject jSONObject) throws JSONException, ParseException {
        JSONObject jSONObject2;
        if (jSONObject.has("applicationId")) {
            if (!this.f27429a.equals(jSONObject.getString("applicationId"))) {
                throw new ParseException("No application id", 0);
            }
        }
        if (jSONObject.has("capture")) {
            jSONObject2 = jSONObject;
            builder.g = g(jSONObject2, "capture", 0, 1, 1, 1);
        } else {
            jSONObject2 = jSONObject;
        }
        if (jSONObject2.has("trafficControlPercentage")) {
            builder.f27423h = g(jSONObject2, "trafficControlPercentage", 1, 100, 100, 100);
        }
        if (jSONObject2.has("gen3Enabled")) {
            builder.f27424i = i("gen3Enabled", jSONObject2, false);
        }
        if (jSONObject2.has("replayConfig")) {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("replayConfig");
            if (jSONObject3.has("capture")) {
                builder2.f27401a = i("capture", jSONObject3, false);
            }
            if (jSONObject3.has("crashesEnabled")) {
                builder2.f27403c = i("crashesEnabled", jSONObject3, false);
                builder2.f27402b = true;
            }
            if (jSONObject3.has("trafficControlPercentage")) {
                builder2.d = g(jSONObject3, "trafficControlPercentage", 0, 100, 0, 100);
            }
            if (jSONObject3.has("imageRetentionTimeInMinutes")) {
                builder2.f27404e = f(jSONObject3, "imageRetentionTimeInMinutes", 0, Integer.MAX_VALUE, 0);
            }
        }
    }

    @Override // com.dynatrace.android.agent.conf.ServerConfigurationParser
    public final ServerConfiguration c(ServerConfiguration serverConfiguration, String str) throws JSONException, InvalidConfigurationException {
        ServerConfiguration.Builder builder;
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        if (!jSONObject.has("dynamicConfig")) {
            throw new InvalidConfigurationException("The configuration is missing the dynamicConfig block");
        }
        boolean zHas = jSONObject.has("timestamp");
        ServerConfiguration serverConfiguration2 = f27427b;
        if (zHas && jSONObject.has("appConfig") && jSONObject.has("mobileAgentConfig")) {
            ServerConfiguration.Status status = ServerConfiguration.p;
            builder = new ServerConfiguration.Builder();
            try {
                long j2 = jSONObject.getLong("timestamp");
                if (j2 <= serverConfiguration.o) {
                    return serverConfiguration;
                }
                builder.o = j2;
                ReplayConfiguration replayConfiguration = ReplayConfiguration.f27392k;
                ReplayConfiguration.Builder builder2 = new ReplayConfiguration.Builder();
                e(builder, builder2, jSONObject.getJSONObject("mobileAgentConfig"));
                try {
                    b(builder, builder2, jSONObject.getJSONObject("appConfig"));
                    builder.f27425j = new ReplayConfiguration(builder2);
                } catch (ParseException unused) {
                    return serverConfiguration2;
                }
            } catch (JSONException unused2) {
                Utility.b("parsing v3 config: timestamp must be of type long");
                return serverConfiguration2;
            }
        } else {
            serverConfiguration.getClass();
            builder = new ServerConfiguration.Builder(serverConfiguration, true);
        }
        try {
            a(builder, jSONObject.getJSONObject("dynamicConfig"));
            return new ServerConfiguration(builder);
        } catch (ParseException unused3) {
            return serverConfiguration2;
        }
    }

    @Override // com.dynatrace.android.agent.conf.ServerConfigurationParser
    public final ServerConfiguration d(HashMap map, AgentMode agentMode) {
        ServerConfiguration.Builder builder = new ServerConfiguration.Builder();
        AtomicInteger atomicInteger = Utility.f27585a;
        builder.g = Utility.i("cp", 0, true, (String) map.get("cp"), 1, 1);
        builder.d = Utility.i("si", 60, false, (String) map.get("si"), 540, 120);
        builder.l = Utility.i(b.a.f24015b, 0, false, (String) map.get(b.a.f24015b), Integer.MAX_VALUE, 1);
        builder.f27418a = Utility.i("bl", 1, false, (String) map.get("bl"), Integer.MAX_VALUE, agentMode == AgentMode.APP_MON ? 30 : 150);
        SessionSplitConfiguration sessionSplitConfiguration = SessionSplitConfiguration.f27430c;
        SessionSplitConfiguration.Builder builder2 = new SessionSplitConfiguration.Builder();
        builder2.f27434b = Utility.i("st", 0, false, (String) map.get("st"), Integer.MAX_VALUE, 600);
        builder.f27420c = new SessionSplitConfiguration(builder2);
        builder.f27423h = Utility.i("tc", 1, true, (String) map.get("tc"), 100, 100);
        builder.f27426k = Utility.i("mp", 0, true, (String) map.get("mp"), Integer.MAX_VALUE, 1);
        builder.f27419b = Utility.i("sm", 0, true, (String) map.get("sm"), 1, 1) == 1;
        return new ServerConfiguration(builder);
    }

    @Override // com.dynatrace.android.agent.conf.ServerConfigurationParser
    public final void e(ServerConfiguration.Builder builder, ReplayConfiguration.Builder builder2, JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("maxBeaconSizeKb")) {
            builder.f27418a = f(jSONObject, "maxBeaconSizeKb", 10, Integer.MAX_VALUE, 150);
        }
        if (jSONObject.has("selfmonitoring")) {
            builder.f27419b = i("selfmonitoring", jSONObject, true);
        }
        SessionSplitConfiguration sessionSplitConfiguration = SessionSplitConfiguration.f27430c;
        SessionSplitConfiguration.Builder builder3 = new SessionSplitConfiguration.Builder();
        if (jSONObject.has("maxSessionDurationMins")) {
            builder3.f27433a = f(jSONObject, "maxSessionDurationMins", 10, Integer.MAX_VALUE, 360);
        }
        if (jSONObject.has("sessionTimeoutSec")) {
            builder3.f27434b = f(jSONObject, "sessionTimeoutSec", 30, Integer.MAX_VALUE, 600);
        }
        builder.f27420c = new SessionSplitConfiguration(builder3);
        if (jSONObject.has("sendIntervalSec")) {
            builder.d = f(jSONObject, "sendIntervalSec", 10, 120, 120);
        }
        if (jSONObject.has("maxCachedCrashesCount")) {
            builder.f27421e = f(jSONObject, "maxCachedCrashesCount", 0, 100, 0);
        }
        if (jSONObject.has("rageTapConfig")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("rageTapConfig");
            RageTapConfiguration rageTapConfiguration = RageTapConfiguration.f27385e;
            RageTapConfiguration.Builder builder4 = new RageTapConfiguration.Builder();
            if (jSONObject2.has("tapDuration")) {
                builder4.f27389a = f(jSONObject2, "tapDuration", 0, Integer.MAX_VALUE, 100);
            }
            if (jSONObject2.has("dispersionRadius")) {
                builder4.f27390b = f(jSONObject2, "dispersionRadius", 0, Integer.MAX_VALUE, 100);
            }
            if (jSONObject2.has("timespanDifference")) {
                builder4.f27391c = f(jSONObject2, "timespanDifference", 0, Integer.MAX_VALUE, 300);
            }
            if (jSONObject2.has("minimumNumberOfTaps")) {
                builder4.d = f(jSONObject2, "minimumNumberOfTaps", 3, Integer.MAX_VALUE, 3);
            }
            builder.f27422f = new RageTapConfiguration(builder4);
        }
        if (jSONObject.has("replayConfig")) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("replayConfig");
            if (jSONObject3.has("protocolVersion")) {
                builder2.f27405f = f(jSONObject3, "protocolVersion", 1, 32767, 1);
            }
            if (jSONObject3.has("selfmonitoring")) {
                builder2.g = f(jSONObject3, "selfmonitoring", 0, Integer.MAX_VALUE, 0);
            }
            if (jSONObject3.has("pixelCopy")) {
                builder2.f27406h = i("pixelCopy", jSONObject3, false);
            }
            if (jSONObject3.has("colorMasking")) {
                builder2.f27407i = i("colorMasking", jSONObject3, false);
            }
            if (jSONObject3.has("composeEnabled")) {
                builder2.f27408j = i("composeEnabled", jSONObject3, true);
            }
        }
    }
}

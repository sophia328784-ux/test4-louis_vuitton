package com.networkbench.agent.impl.plugin.c;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParser;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37963c = "LogTrackConfig";
    private static final String d = "logConfig";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37964e = "logTrackS";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f37965f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f37966a = ((a.DEBUG.f37973e | a.INFO.f37973e) | a.WARM.f37973e) | a.ERROR.f37973e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f37967b = 10;
    private String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37968h = d();

    static {
        try {
            f37965f = new b();
        } catch (Throwable th) {
            Logger.error(f37963c, "error init LogTrackConfig", th);
        }
    }

    private b() {
    }

    private String d() {
        try {
            String strH = ak.h(16);
            String upperCase = ak.b(strH.getBytes()).toUpperCase();
            if (!ab.c(upperCase) && upperCase.length() == 32) {
                Logger.debug(f37963c, "randomString:" + strH + ", hexString:" + upperCase);
                return upperCase;
            }
            Logger.error(f37963c, "error produceSk:" + upperCase);
            return "";
        } catch (Throwable th) {
            Logger.error(f37963c, "error produceSk", th);
            return "";
        }
    }

    public void a(String str) {
        try {
            JsonObject jsonObject = (JsonObject) new JsonParser().parse(str);
            if (jsonObject.has(d)) {
                JsonObject asJsonObject = jsonObject.get(d).getAsJsonObject();
                asJsonObject.add(f37964e, new JsonPrimitive(this.f37968h));
                this.g = asJsonObject.toString();
                b(asJsonObject.toString());
            }
        } catch (Throwable th) {
            Logger.warning(f37963c, "error getJSONObjectField:" + th);
        }
    }

    public void b(String str) {
        try {
            Logger.debug(f37963c, "par log config is:" + str);
            JsonObject jsonObject = (JsonObject) new JsonParser().parse(str);
            this.f37966a = jsonObject.get("logLevel").getAsInt();
            this.f37967b = jsonObject.get("logCacheSize").getAsInt();
            this.f37968h = jsonObject.get(f37964e).getAsString();
        } catch (Throwable th) {
            Logger.warning(f37963c, "error parseConfig:" + th);
        }
    }

    public String c() {
        return this.f37968h;
    }

    public enum a {
        DEBUG(1),
        INFO(2),
        WARM(4),
        ERROR(8);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f37973e;

        a(int i2) {
            this.f37973e = i2;
        }

        public int a() {
            return this.f37973e;
        }
    }

    public static b a() {
        return f37965f;
    }

    public String b() {
        return this.g;
    }
}

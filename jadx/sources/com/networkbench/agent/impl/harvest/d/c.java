package com.networkbench.agent.impl.harvest.d;

import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.a.m;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.sightcall.uvc.Camera;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f37303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f37304c;
    protected int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f37305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long f37306f;
    protected String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected HarvestConfiguration f37307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected com.networkbench.agent.impl.data.c.a f37308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f37309j;

    public enum a {
        OK(200),
        UNAUTHORIZED(401),
        FORBIDDEN(403),
        ENTITY_TOO_LARGE(413),
        UNSUPPORTED_MEDIA_TYPE(415),
        INVALID_AGENT_ID(450),
        INVALID_LICENSE(460),
        INVALID_DATA_TOKEN(461),
        INVALID_DATA(462),
        INVALID_DEVICE_ID(463),
        INVALID_ENCRYPT_KEY(464),
        DECODE_FAILED(465),
        EXPIRE_CONFIGURATION(470),
        INVALID_METHOD_API(Camera.DEFAULT_PREVIEW_HEIGHT),
        DATA_LEN_OVER(481),
        INTERNAL_SERVER_ERROR(500),
        UNKNOWN(-1),
        NETWORKUNKNOWN(1);

        public int s;

        a(int i2) {
            this.s = i2;
        }

        public int a() {
            return this.s;
        }

        public boolean b() {
            return this != OK;
        }

        public boolean c() {
            return !b();
        }
    }

    public long a() {
        return this.f37309j;
    }

    public abstract void a(String str) throws Exception;

    public a b() {
        if (h()) {
            return a.OK;
        }
        for (a aVar : a.values()) {
            if (aVar.a() == this.f37303b) {
                return aVar;
            }
        }
        return a.UNKNOWN;
    }

    public boolean c() {
        int i2;
        return !f() && (i2 = this.f37303b) < 400 && i2 > 0;
    }

    public boolean d() {
        return this.f37303b == 200;
    }

    public Map<String, Object> e(String str) {
        return (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.d.c.1
        }.getType());
    }

    public boolean f() {
        return "error".equals(this.f37304c) && this.d > 0;
    }

    public boolean g() {
        return b() == a.UNKNOWN;
    }

    public boolean h() {
        return !f();
    }

    public int i() {
        return this.f37303b;
    }

    public a j() {
        if (h()) {
            return a.OK;
        }
        for (a aVar : a.values()) {
            if (aVar.a() == this.d) {
                return aVar;
            }
        }
        return a.UNKNOWN;
    }

    public String k() {
        return this.f37305e;
    }

    public long l() {
        return this.f37306f;
    }

    public String m() {
        return this.f37304c;
    }

    public String n() {
        return this.g;
    }

    public boolean o() {
        return m.a().f37271c;
    }

    public String p() {
        return m.a().d;
    }

    public HarvestConfiguration q() {
        return this.f37307h;
    }

    public com.networkbench.agent.impl.data.c.a r() {
        return this.f37308i;
    }

    public String toString() {
        return " {  statusCode=" + this.f37303b + ", status='" + this.f37304c + "', errorCode=" + this.d + ", resultMessage='" + this.f37305e + "', responseTime=" + this.f37306f + ",\n responseBody='" + this.g + "', \n configuration=" + this.f37307h + '}';
    }

    public void a(long j2) {
        this.f37309j = j2;
    }

    public void a(int i2) {
        this.f37303b = i2;
    }

    public void a(HarvestConfiguration harvestConfiguration) {
        this.f37307h = harvestConfiguration;
    }

    public void a(com.networkbench.agent.impl.data.c.a aVar) {
        this.f37308i = aVar;
    }

    public void d(String str) {
        this.g = str;
    }

    public void c(String str) {
        this.f37304c = str;
    }

    public boolean e() {
        return this.f37303b == 409;
    }

    public void b(int i2) {
        this.d = i2;
    }

    public void b(String str) {
        this.f37305e = str;
    }

    public void b(long j2) {
        this.f37306f = j2;
    }
}

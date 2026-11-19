package org.teleal.cling.model;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;

/* JADX INFO: loaded from: classes5.dex */
public class ServerClientTokens {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f78386c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f78387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f78388f;

    public ServerClientTokens(int i2, int i3) {
        this.f78384a = 1;
        this.f78385b = 0;
        this.f78386c = System.getProperty("os.name").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        this.d = System.getProperty("os.version").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        this.f78387e = "Teleal-Cling";
        this.f78388f = "1.0";
        this.f78384a = i2;
        this.f78385b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ServerClientTokens serverClientTokens = (ServerClientTokens) obj;
        return this.f78384a == serverClientTokens.f78384a && this.f78385b == serverClientTokens.f78385b && this.f78386c.equals(serverClientTokens.f78386c) && this.d.equals(serverClientTokens.d) && this.f78387e.equals(serverClientTokens.f78387e) && this.f78388f.equals(serverClientTokens.f78388f);
    }

    public final int hashCode() {
        return this.f78388f.hashCode() + fc.b(fc.b(fc.b(((this.f78384a * 31) + this.f78385b) * 31, 31, this.f78386c), 31, this.d), 31, this.f78387e);
    }

    public final String toString() {
        return this.f78386c + "/" + this.d + " UPnP/" + this.f78384a + FileUtils.HIDDEN_PREFIX + this.f78385b + " " + this.f78387e + "/" + this.f78388f;
    }

    public ServerClientTokens() {
        this.f78384a = 1;
        this.f78385b = 0;
        this.f78386c = System.getProperty("os.name").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        this.d = System.getProperty("os.version").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        this.f78387e = "Teleal-Cling";
        this.f78388f = "1.0";
    }

    public ServerClientTokens(int i2, int i3, String str, String str2, String str3, String str4) {
        this.f78384a = 1;
        this.f78385b = 0;
        this.f78386c = System.getProperty("os.name").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        System.getProperty("os.version").replaceAll("[^a-zA-Z0-9\\.\\-_]", "");
        this.f78384a = i2;
        this.f78385b = i3;
        this.f78386c = str;
        this.d = str2;
        this.f78387e = str3;
        this.f78388f = str4;
    }
}

package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class HostPort {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78512b;

    public HostPort(String str, int i2) {
        this.f78511a = str;
        this.f78512b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HostPort hostPort = (HostPort) obj;
        return this.f78512b == hostPort.f78512b && this.f78511a.equals(hostPort.f78511a);
    }

    public final int hashCode() {
        return (this.f78511a.hashCode() * 31) + this.f78512b;
    }

    public final String toString() {
        return this.f78511a + ":" + this.f78512b;
    }

    public HostPort() {
    }
}

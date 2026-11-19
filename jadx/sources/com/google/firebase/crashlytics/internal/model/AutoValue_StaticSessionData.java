package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_StaticSessionData extends StaticSessionData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StaticSessionData.AppData f34975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StaticSessionData.OsData f34976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StaticSessionData.DeviceData f34977c;

    public AutoValue_StaticSessionData(StaticSessionData.AppData appData, StaticSessionData.OsData osData, StaticSessionData.DeviceData deviceData) {
        this.f34975a = appData;
        this.f34976b = osData;
        this.f34977c = deviceData;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData
    public final StaticSessionData.AppData a() {
        return this.f34975a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData
    public final StaticSessionData.DeviceData c() {
        return this.f34977c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData
    public final StaticSessionData.OsData d() {
        return this.f34976b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StaticSessionData)) {
            return false;
        }
        StaticSessionData staticSessionData = (StaticSessionData) obj;
        return this.f34975a.equals(staticSessionData.a()) && this.f34976b.equals(staticSessionData.d()) && this.f34977c.equals(staticSessionData.c());
    }

    public final int hashCode() {
        return this.f34977c.hashCode() ^ ((((this.f34975a.hashCode() ^ 1000003) * 1000003) ^ this.f34976b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.f34975a + ", osData=" + this.f34976b + ", deviceData=" + this.f34977c + "}";
    }
}

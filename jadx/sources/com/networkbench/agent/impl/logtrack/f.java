package com.networkbench.agent.impl.logtrack;

/* JADX INFO: loaded from: classes2.dex */
class f implements LoganProtocolHandler {
    private static f d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LoganProtocolHandler f37489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f37490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnLoganProtocolStatus f37491c;

    private f() {
    }

    public static f a() {
        if (d == null) {
            synchronized (f.class) {
                d = new f();
            }
        }
        return d;
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_debug(boolean z) {
        LoganProtocolHandler loganProtocolHandler = this.f37489a;
        if (loganProtocolHandler != null) {
            loganProtocolHandler.logan_debug(z);
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_flush() {
        LoganProtocolHandler loganProtocolHandler = this.f37489a;
        if (loganProtocolHandler != null) {
            loganProtocolHandler.logan_flush();
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_init(String str, String str2, int i2, String str3, String str4) {
        if (this.f37490b) {
            return;
        }
        if (!CLoganProtocol.a()) {
            this.f37489a = null;
            return;
        }
        CLoganProtocol cLoganProtocolB = CLoganProtocol.b();
        this.f37489a = cLoganProtocolB;
        cLoganProtocolB.setOnLoganProtocolStatus(this.f37491c);
        this.f37489a.logan_init(str, str2, i2, str3, str4);
        this.f37490b = true;
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_open(String str) {
        LoganProtocolHandler loganProtocolHandler = this.f37489a;
        if (loganProtocolHandler != null) {
            loganProtocolHandler.logan_open(str);
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_write(String str, String str2, long j2, String str3, String str4, String str5, String str6, int i2, int i3) {
        LoganProtocolHandler loganProtocolHandler = this.f37489a;
        if (loganProtocolHandler != null) {
            loganProtocolHandler.logan_write(str, str2, j2, str3, str4, str5, str6, i2, i3);
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void setOnLoganProtocolStatus(OnLoganProtocolStatus onLoganProtocolStatus) {
        this.f37491c = onLoganProtocolStatus;
    }
}

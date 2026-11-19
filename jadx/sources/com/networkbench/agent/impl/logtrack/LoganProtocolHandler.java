package com.networkbench.agent.impl.logtrack;

/* JADX INFO: loaded from: classes2.dex */
public interface LoganProtocolHandler {
    void logan_debug(boolean z);

    void logan_flush();

    void logan_init(String str, String str2, int i2, String str3, String str4);

    void logan_open(String str);

    void logan_write(String str, String str2, long j2, String str3, String str4, String str5, String str6, int i2, int i3);

    void setOnLoganProtocolStatus(OnLoganProtocolStatus onLoganProtocolStatus);
}

package com.kakao.sdk.common.model;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\bR\u001a\u0010\u000b\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\bR\u001a\u0010\r\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\r\u0010\u0006\u001a\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0006\u001a\u0004\b\u0010\u0010\bR\u001a\u0010\u0011\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0011\u0010\u0006\u001a\u0004\b\u0012\u0010\bR\u001a\u0010\u0013\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0013\u0010\u0006\u001a\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0015\u0010\u0006\u001a\u0004\b\u0016\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/kakao/sdk/common/model/ServerHosts;", "", "<init>", "()V", "", "kauth", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "kapi", "a", "apps", "getApps", "account", "getAccount", "mobileAccount", "getMobileAccount", "sharer", "getSharer", "navi", "getNavi", "channel", "getChannel", "Companion", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class ServerHosts {
    private final String kauth = "kauth.kakao.com";
    private final String kapi = "kapi.kakao.com";
    private final String apps = "apps.kakao.com";
    private final String account = "accounts.kakao.com";
    private final String mobileAccount = "auth.kakao.com";
    private final String sharer = "sharer.kakao.com";
    private final String navi = "kakaonavi-wguide.kakao.com";
    private final String channel = "pf.kakao.com";

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getKapi() {
        return this.kapi;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getKauth() {
        return this.kauth;
    }
}

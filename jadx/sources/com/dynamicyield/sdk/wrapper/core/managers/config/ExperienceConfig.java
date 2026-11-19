package com.dynamicyield.sdk.wrapper.core.managers.config;

import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import com.dynamicyield.sdk.wrapper.core.enums.DataCenter;
import com.dynamicyield.sdk.wrapper.core.enums.DeviceType;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;", "", "Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;", "dataCenter", "", "sharedDevice", "Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;", "deviceType", "", "deviceId", "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;", "channel", "ip", "defaultLocale", "isImplicitPageview", "isImplicitImpressionMode", "activeConsentIntegration", "activeConsentAccepted", "customUrl", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ExperienceConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataCenter f25861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f25862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeviceType f25863c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Channel f25864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f25865f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f25866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f25867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f25868j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Boolean f25869k;
    public final String l;

    public /* synthetic */ ExperienceConfig(DataCenter dataCenter, Boolean bool, DeviceType deviceType, String str, Channel channel, String str2, String str3, Boolean bool2, Boolean bool3, boolean z, Boolean bool4, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(dataCenter, (i2 & 2) != 0 ? null : bool, (i2 & 4) != 0 ? null : deviceType, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? Channel.APP : channel, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? null : bool2, (i2 & 256) != 0 ? null : bool3, (i2 & 512) != 0 ? false : z, (i2 & 1024) != 0 ? null : bool4, (i2 & 2048) != 0 ? null : str4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExperienceConfig)) {
            return false;
        }
        ExperienceConfig experienceConfig = (ExperienceConfig) obj;
        return this.f25861a == experienceConfig.f25861a && Intrinsics.c(this.f25862b, experienceConfig.f25862b) && this.f25863c == experienceConfig.f25863c && Intrinsics.c(this.d, experienceConfig.d) && this.f25864e == experienceConfig.f25864e && Intrinsics.c(this.f25865f, experienceConfig.f25865f) && Intrinsics.c(this.g, experienceConfig.g) && Intrinsics.c(this.f25866h, experienceConfig.f25866h) && Intrinsics.c(this.f25867i, experienceConfig.f25867i) && this.f25868j == experienceConfig.f25868j && Intrinsics.c(this.f25869k, experienceConfig.f25869k) && Intrinsics.c(this.l, experienceConfig.l);
    }

    public final int hashCode() {
        int iHashCode = this.f25861a.hashCode() * 31;
        Boolean bool = this.f25862b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        DeviceType deviceType = this.f25863c;
        int iHashCode3 = (iHashCode2 + (deviceType == null ? 0 : deviceType.hashCode())) * 31;
        String str = this.d;
        int iHashCode4 = (this.f25864e.hashCode() + ((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.f25865f;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool2 = this.f25866h;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f25867i;
        int iB = o60.b((iHashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31, 31, this.f25868j);
        Boolean bool4 = this.f25869k;
        int iHashCode8 = (iB + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str4 = this.l;
        return iHashCode8 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExperienceConfig(dataCenter=");
        sb.append(this.f25861a);
        sb.append(", sharedDevice=");
        sb.append(this.f25862b);
        sb.append(", deviceType=");
        sb.append(this.f25863c);
        sb.append(", deviceId=");
        sb.append(this.d);
        sb.append(", channel=");
        sb.append(this.f25864e);
        sb.append(", ip=");
        sb.append(this.f25865f);
        sb.append(", defaultLocale=");
        sb.append(this.g);
        sb.append(", isImplicitPageview=");
        sb.append(this.f25866h);
        sb.append(", isImplicitImpressionMode=");
        sb.append(this.f25867i);
        sb.append(", activeConsentIntegration=");
        sb.append(this.f25868j);
        sb.append(", activeConsentAccepted=");
        sb.append(this.f25869k);
        sb.append(", customUrl=");
        return fc.l(sb, this.l, ')');
    }

    public ExperienceConfig(DataCenter dataCenter, Boolean bool, DeviceType deviceType, String str, Channel channel, String str2, String str3, Boolean bool2, Boolean bool3, boolean z, Boolean bool4, String str4) {
        dataCenter.getClass();
        channel.getClass();
        this.f25861a = dataCenter;
        this.f25862b = bool;
        this.f25863c = deviceType;
        this.d = str;
        this.f25864e = channel;
        this.f25865f = str2;
        this.g = str3;
        this.f25866h = bool2;
        this.f25867i = bool3;
        this.f25868j = z;
        this.f25869k = bool4;
        this.l = str4;
    }
}

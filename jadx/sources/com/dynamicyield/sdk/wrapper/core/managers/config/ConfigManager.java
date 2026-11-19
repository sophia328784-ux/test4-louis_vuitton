package com.dynamicyield.sdk.wrapper.core.managers.config;

import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import com.dynamicyield.sdk.wrapper.core.enums.DataCenter;
import com.dynamicyield.sdk.wrapper.core.enums.DeviceType;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;", "", "Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;", "dataCenter", "Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;", "deviceType", "", "sharedDevice", "", "deviceId", "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;", "channel", "ip", "locale", "isImplicitPageview", "isImplicitImpressionMode", "activeConsentIntegration", "activeConsentAccepted", "customUrl", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConfigManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DYLogger f25859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExperienceConfig f25860b;

    public /* synthetic */ ConfigManager(DataCenter dataCenter, DeviceType deviceType, Boolean bool, String str, Channel channel, String str2, String str3, Boolean bool2, Boolean bool3, boolean z, Boolean bool4, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(dataCenter, (i2 & 2) != 0 ? null : deviceType, (i2 & 4) != 0 ? null : bool, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? Channel.APP : channel, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? null : bool2, (i2 & 256) != 0 ? null : bool3, (i2 & 512) != 0 ? false : z, (i2 & 1024) != 0 ? null : bool4, (i2 & 2048) != 0 ? null : str4);
    }

    public ConfigManager(DataCenter dataCenter, DeviceType deviceType, Boolean bool, String str, Channel channel, String str2, String str3, Boolean bool2, Boolean bool3, boolean z, Boolean bool4, String str4) {
        dataCenter.getClass();
        channel.getClass();
        this.f25859a = new DYLogger("ConfigManager", LogLevel.DEBUG);
        this.f25860b = new ExperienceConfig(dataCenter, bool, deviceType, str, channel, str2, str3, bool2, bool3, z, bool4, str4);
    }
}

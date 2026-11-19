package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;", "", "SMARTPHONE", "TABLET", "KIOSK", "ODMB", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeviceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceType[] $VALUES;
    public static final DeviceType KIOSK;
    public static final DeviceType ODMB;
    public static final DeviceType SMARTPHONE;
    public static final DeviceType TABLET;

    static {
        DeviceType deviceType = new DeviceType("SMARTPHONE", 0);
        SMARTPHONE = deviceType;
        DeviceType deviceType2 = new DeviceType("TABLET", 1);
        TABLET = deviceType2;
        DeviceType deviceType3 = new DeviceType("KIOSK", 2);
        KIOSK = deviceType3;
        DeviceType deviceType4 = new DeviceType("ODMB", 3);
        ODMB = deviceType4;
        DeviceType[] deviceTypeArr = {deviceType, deviceType2, deviceType3, deviceType4};
        $VALUES = deviceTypeArr;
        $ENTRIES = EnumEntriesKt.a(deviceTypeArr);
    }

    public static DeviceType valueOf(String str) {
        return (DeviceType) Enum.valueOf(DeviceType.class, str);
    }

    public static DeviceType[] values() {
        return (DeviceType[]) $VALUES.clone();
    }
}

package com.dynatrace.agent.common.connectivity;

import com.dynatrace.android.agent.util.Utility;
import com.linkplay.core.model.menubar.MenuBarConstants;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/common/connectivity/NetworkType;", "", "Companion", "WIFI", "CELLULAR", "ETHERNET", "OTHER", "NONE", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NetworkType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkType[] $VALUES;
    public static final NetworkType CELLULAR;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final NetworkType ETHERNET;
    public static final NetworkType NONE;
    public static final NetworkType OTHER;
    public static final NetworkType WIFI;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static NetworkType a(String str) {
            str.getClass();
            switch (str.hashCode()) {
                case -665462704:
                    if (str.equals("unavailable")) {
                        return NetworkType.NONE;
                    }
                    break;
                case -284840886:
                    if (str.equals("unknown")) {
                        return NetworkType.OTHER;
                    }
                    break;
                case 3049826:
                    if (str.equals("cell")) {
                        return NetworkType.CELLULAR;
                    }
                    break;
                case 3649301:
                    if (str.equals(MenuBarConstants.MEDIA_TYPE_WIFI)) {
                        return NetworkType.WIFI;
                    }
                    break;
                case 113139839:
                    if (str.equals("wired")) {
                        return NetworkType.ETHERNET;
                    }
                    break;
            }
            Utility.b("failed to resolve network type '" + str + '\'');
            return NetworkType.NONE;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f26509a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.CELLULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.ETHERNET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NetworkType.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f26509a = iArr;
        }
    }

    static {
        NetworkType networkType = new NetworkType("WIFI", 0);
        WIFI = networkType;
        NetworkType networkType2 = new NetworkType("CELLULAR", 1);
        CELLULAR = networkType2;
        NetworkType networkType3 = new NetworkType("ETHERNET", 2);
        ETHERNET = networkType3;
        NetworkType networkType4 = new NetworkType("OTHER", 3);
        OTHER = networkType4;
        NetworkType networkType5 = new NetworkType("NONE", 4);
        NONE = networkType5;
        NetworkType[] networkTypeArr = {networkType, networkType2, networkType3, networkType4, networkType5};
        $VALUES = networkTypeArr;
        $ENTRIES = EnumEntriesKt.a(networkTypeArr);
        INSTANCE = new Companion(null);
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) $VALUES.clone();
    }

    public final String a() {
        int i2 = WhenMappings.f26509a[ordinal()];
        if (i2 == 1) {
            return MenuBarConstants.MEDIA_TYPE_WIFI;
        }
        if (i2 == 2) {
            return "cell";
        }
        if (i2 == 3) {
            return "wired";
        }
        if (i2 == 4) {
            return "unknown";
        }
        if (i2 == 5) {
            return "unavailable";
        }
        v40.g();
        return null;
    }
}

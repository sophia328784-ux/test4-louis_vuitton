package org.teleal.cling.android;

import java.util.HashMap;
import java.util.Map;
import java.util.Observable;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidEzlinkHandler extends Observable {

    public static class IEZLINKBINDER {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AndroidEzlinkHandler f78295a = new AndroidEzlinkHandler();
    }

    public static class NotifyItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map f78296a;

        public NotifyItem(NotifyType notifyType, Map<String, String> map) {
            this.f78296a = map;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NotifyType {
        private static final /* synthetic */ NotifyType[] $VALUES;
        public static final NotifyType DEVICE_ON_LINE;
        public static final NotifyType STOP_EASY_LINK;

        static {
            NotifyType notifyType = new NotifyType("DEVICE_ON_LINE", 0);
            DEVICE_ON_LINE = notifyType;
            NotifyType notifyType2 = new NotifyType("STOP_EASY_LINK", 1);
            STOP_EASY_LINK = notifyType2;
            $VALUES = new NotifyType[]{notifyType, notifyType2};
        }

        public static NotifyType valueOf(String str) {
            return (NotifyType) Enum.valueOf(NotifyType.class, str);
        }

        public static NotifyType[] values() {
            return (NotifyType[]) $VALUES.clone();
        }
    }

    public static AndroidEzlinkHandler a() {
        return IEZLINKBINDER.f78295a;
    }

    public final void b(HashMap map) {
        setChanged();
        notifyObservers(new NotifyItem(NotifyType.DEVICE_ON_LINE, map));
    }
}

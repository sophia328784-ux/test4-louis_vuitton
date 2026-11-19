package net.rtccloud.sdk.util;

import com.sightcall.pratik.logs.Logger;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.IllegalFormatException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class OldLogger {
    private ArrayList<Listener> listeners;
    private final String tag;
    private static final Map<String, OldLogger> loggers = new HashMap();
    private static volatile int defaultLevel = 4;
    private int lvl = defaultLevel;
    private boolean v = isLoggable(2);
    private boolean d = isLoggable(3);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f76512i = isLoggable(4);
    private boolean w = isLoggable(5);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76511e = isLoggable(6);
    private final Locale locale = Locale.US;

    /* JADX INFO: loaded from: classes4.dex */
    public enum Internal {
        ENGINE,
        EVENT_BUS,
        DATA_CHANNEL,
        CALL,
        ROSTER,
        PRESENCE,
        PARTICIPANT,
        MEETING_POINT,
        VIDEO_CONSUMER,
        VIDEO_PRODUCER,
        SCREENSHARE_CONSUMER,
        SCREENSHARE_PRODUCER,
        CAMERA,
        NATIVE,
        CACHE,
        VIDEO,
        SCREEN_SHARE,
        SINK,
        RECORDING,
        CONFERENCE,
        AUDIO,
        FRAME_FETCHER,
        USER,
        ACD,
        TEST
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Level {
    }

    public interface Listener {
        void onLoggerLevelChanged(OldLogger oldLogger, int i2);
    }

    private OldLogger(String str) {
        this.tag = str;
    }

    public static void debug() {
        setGlobalLevel(3);
    }

    public static void error() {
        setGlobalLevel(6);
    }

    private static OldLogger get(String str, String str2) {
        Map<String, OldLogger> map = loggers;
        synchronized (map) {
            try {
                OldLogger oldLogger = map.get(str);
                if (oldLogger != null) {
                    return oldLogger;
                }
                OldLogger oldLogger2 = new OldLogger(str2);
                map.put(str, oldLogger2);
                return oldLogger2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getGlobalLevel() {
        return defaultLevel;
    }

    public static void info() {
        setGlobalLevel(4);
    }

    private boolean isLoggable(int i2) {
        return this.lvl <= i2;
    }

    public static void setGlobalLevel(int i2) {
        Logger.INSTANCE.i("Setting global Logger level to " + i2, null);
        defaultLevel = i2;
        Map<String, OldLogger> map = loggers;
        synchronized (map) {
            try {
                Iterator<Map.Entry<String, OldLogger>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().setLevel(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void verbose() {
        setGlobalLevel(2);
    }

    public static void warn() {
        setGlobalLevel(5);
    }

    public void addListener(Listener listener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList<>();
        }
        this.listeners.add(listener);
    }

    public void d(String str, Object... objArr) {
        if (this.d) {
            try {
                Logger.INSTANCE.d(this.tag + String.format(this.locale, str, objArr), null);
            } catch (IllegalFormatException e2) {
                Logger.INSTANCE.e(this.tag + str + " -> " + Arrays.toString(objArr), e2);
            }
        }
    }

    public void e(String str, Object... objArr) {
        if (this.f76511e) {
            try {
                Logger.INSTANCE.e(this.tag + String.format(this.locale, str, objArr), null);
            } catch (IllegalFormatException e2) {
                Logger.INSTANCE.e(this.tag + str + " -> " + Arrays.toString(objArr), e2);
            }
        }
    }

    public int getLevel() {
        return this.lvl;
    }

    public void i(String str, Object... objArr) {
        if (this.f76512i) {
            try {
                Logger.INSTANCE.i(this.tag + String.format(this.locale, str, objArr), null);
            } catch (IllegalFormatException e2) {
                Logger.INSTANCE.e(this.tag + str + " -> " + Arrays.toString(objArr), e2);
            }
        }
    }

    public void removeListener(Listener listener) {
        ArrayList<Listener> arrayList = this.listeners;
        if (arrayList != null) {
            arrayList.remove(listener);
        }
    }

    public void setLevel(int i2) {
        if (this.lvl == i2) {
            return;
        }
        this.lvl = i2;
        this.v = isLoggable(2);
        this.d = isLoggable(3);
        this.f76512i = isLoggable(4);
        this.w = isLoggable(5);
        this.f76511e = isLoggable(6);
        ArrayList<Listener> arrayList = this.listeners;
        if (arrayList != null) {
            Iterator<Listener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onLoggerLevelChanged(this, i2);
            }
        }
    }

    public void trace(String str, Object... objArr) {
        try {
            Logger.INSTANCE.v(this.tag + String.format(this.locale, str, objArr), null);
        } catch (IllegalFormatException e2) {
            Logger.INSTANCE.v(this.tag + str + " -> " + Arrays.toString(objArr), e2);
        }
    }

    public void v(String str, Object... objArr) {
        if (this.v) {
            try {
                Logger.INSTANCE.v(this.tag + String.format(this.locale, str, objArr), null);
            } catch (IllegalFormatException e2) {
                Logger.INSTANCE.e(this.tag + str + " -> " + Arrays.toString(objArr), e2);
            }
        }
    }

    public void w(String str, Object... objArr) {
        if (this.w) {
            try {
                Logger.INSTANCE.w(this.tag + String.format(this.locale, str, objArr), null);
            } catch (IllegalFormatException e2) {
                Logger.INSTANCE.e(this.tag + str + " -> " + Arrays.toString(objArr), e2);
            }
        }
    }

    public static OldLogger get(String str) {
        return get(str, str);
    }

    public static OldLogger get(Internal internal) {
        String strName = internal.name();
        return get(tr.g("_", strName), strName);
    }

    public void trace(String str, Throwable th) {
        Logger.INSTANCE.v(this.tag + str, th);
    }

    public void trace(String str) {
        Logger.INSTANCE.v(this.tag + str, null);
    }

    public void d(String str) {
        if (this.d) {
            Logger.INSTANCE.d(this.tag + str, null);
        }
    }

    public void e(String str) {
        if (this.f76511e) {
            Logger.INSTANCE.e(this.tag + str, null);
        }
    }

    public void i(String str) {
        if (this.f76512i) {
            Logger.INSTANCE.i(this.tag + str, null);
        }
    }

    public void v(String str) {
        if (this.v) {
            Logger.INSTANCE.v(this.tag + str, null);
        }
    }

    public void w(String str) {
        if (this.w) {
            Logger.INSTANCE.w(this.tag + str, null);
        }
    }

    public void d(String str, Throwable th) {
        if (this.d) {
            Logger.INSTANCE.d(this.tag + str, th);
        }
    }

    public void e(Throwable th) {
        if (this.f76511e) {
            Logger.INSTANCE.e(this.tag + Utils.printStackTrace(th), null);
        }
    }

    public void i(String str, Throwable th) {
        if (this.f76512i) {
            Logger.INSTANCE.i(this.tag + str, th);
        }
    }

    public boolean v() {
        return this.v;
    }

    public void w(String str, Throwable th) {
        if (this.w) {
            Logger.INSTANCE.w(this.tag + str, th);
        }
    }

    public void v(String str, Throwable th) {
        if (this.v) {
            Logger.INSTANCE.v(this.tag + str, th);
        }
    }

    public boolean d() {
        return this.d;
    }

    public void e(String str, Throwable th) {
        if (this.f76511e) {
            Logger.INSTANCE.e(this.tag + str, th);
        }
    }

    public boolean i() {
        return this.f76512i;
    }

    public boolean w() {
        return this.w;
    }

    public boolean e() {
        return this.f76511e;
    }
}

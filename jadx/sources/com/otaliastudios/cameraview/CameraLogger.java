package com.otaliastudios.cameraview;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CopyOnWriteArraySet f38820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f38821c = null;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.CameraLogger$1, reason: invalid class name */
    public class AnonymousClass1 implements Logger {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevel {
    }

    public interface Logger {
    }

    static {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        f38820b = copyOnWriteArraySet;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        f38819a = 3;
        copyOnWriteArraySet.add(anonymousClass1);
    }

    public static CameraLogger a(String str) {
        return new CameraLogger();
    }

    public final String b(int i2, Object... objArr) {
        if (f38819a > i2) {
            return null;
        }
        CopyOnWriteArraySet copyOnWriteArraySet = f38820b;
        if (copyOnWriteArraySet.size() <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(String.valueOf(obj));
            sb.append(" ");
        }
        String strTrim = sb.toString().trim();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((Logger) it.next()).getClass();
        }
        return strTrim;
    }
}

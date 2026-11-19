package androidx.media3.common;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaLibraryInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f13877a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f13878b = "media3.common";

    public static synchronized void a(String str) {
        if (f13877a.add(str)) {
            f13878b += ", " + str;
        }
    }
}

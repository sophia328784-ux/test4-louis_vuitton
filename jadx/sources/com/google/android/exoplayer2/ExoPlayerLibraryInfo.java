package com.google.android.exoplayer2;

import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class ExoPlayerLibraryInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f28141a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f28142b = "goog.exo.core";

    public static synchronized void a(String str) {
        if (f28141a.add(str)) {
            f28142b += ", " + str;
        }
    }
}

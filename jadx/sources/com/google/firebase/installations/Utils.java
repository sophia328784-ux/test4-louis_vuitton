package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.time.Clock;
import com.google.firebase.installations.time.SystemClock;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class Utils {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f35171b = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Utils f35172c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f35173a;

    public Utils(SystemClock systemClock) {
        this.f35173a = systemClock;
    }

    public final boolean a(PersistedInstallationEntry persistedInstallationEntry) {
        if (TextUtils.isEmpty(persistedInstallationEntry.a())) {
            return true;
        }
        return persistedInstallationEntry.b() + persistedInstallationEntry.g() < (this.f35173a.a() / 1000) + 3600;
    }
}

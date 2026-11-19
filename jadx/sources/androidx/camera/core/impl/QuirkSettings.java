package androidx.camera.core.impl;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class QuirkSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f2314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f2315c;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2316a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HashSet f2317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public HashSet f2318c;
    }

    public QuirkSettings(boolean z, HashSet hashSet, HashSet hashSet2) {
        this.f2313a = z;
        this.f2314b = hashSet == null ? Collections.EMPTY_SET : new HashSet(hashSet);
        this.f2315c = hashSet2 == null ? Collections.EMPTY_SET : new HashSet(hashSet2);
    }

    public final boolean a(Class cls, boolean z) {
        if (this.f2314b.contains(cls)) {
            return true;
        }
        return !this.f2315c.contains(cls) && this.f2313a && z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof QuirkSettings)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        QuirkSettings quirkSettings = (QuirkSettings) obj;
        return this.f2313a == quirkSettings.f2313a && Objects.equals(this.f2314b, quirkSettings.f2314b) && Objects.equals(this.f2315c, quirkSettings.f2315c);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f2313a), this.f2314b, this.f2315c);
    }

    public final String toString() {
        return "QuirkSettings{enabledWhenDeviceHasQuirk=" + this.f2313a + ", forceEnabledQuirks=" + this.f2314b + ", forceDisabledQuirks=" + this.f2315c + '}';
    }
}

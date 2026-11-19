package com.perfectcorp.common.cache;

import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.d21;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class PreferencesCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BasicPreferences f39161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f39163c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BasicPreferences f39164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f39165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableList.Builder f39166c;

        public Builder(BasicPreferences basicPreferences, String str) {
            bz bzVar = ImmutableList.f42200c;
            this.f39166c = new ImmutableList.Builder();
            Objects.requireNonNull(basicPreferences, "preferences can't be null");
            this.f39164a = basicPreferences;
            Objects.requireNonNull(str, "primaryKey can't be null");
            this.f39165b = str;
        }

        public final void a() {
            this.f39166c.f(new Timestamp(this.f39164a, d21.j(this.f39165b, "_TIMESTAMP")));
        }
    }

    public static abstract class Component {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BasicPreferences f39167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f39168b;

        public Component(BasicPreferences basicPreferences, String str) {
            this.f39167a = basicPreferences;
            this.f39168b = str;
        }

        public abstract void a();
    }

    public static final class Timestamp extends Component {
        @Override // com.perfectcorp.common.cache.PreferencesCache.Component
        public final void a() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            BasicPreferences basicPreferences = this.f39167a;
            basicPreferences.getClass();
            String str = this.f39168b;
            Objects.requireNonNull(str, "key can't be null");
            if (basicPreferences.n.contains(str) && basicPreferences.getLong(str, 0L) == jCurrentTimeMillis) {
                return;
            }
            basicPreferences.edit().putLong(str, jCurrentTimeMillis).apply();
        }
    }

    public PreferencesCache(Builder builder) {
        this.f39161a = builder.f39164a;
        this.f39162b = builder.f39165b;
        this.f39163c = builder.f39166c.i();
    }
}

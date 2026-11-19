package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.io.File;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class DebugMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f39544c;
    public final File d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f39545e;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f39546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f39547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39548c;
        public File d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f39549e;

        public final DebugMode build() {
            return new DebugMode(this);
        }

        public final Builder disableLogcat() {
            this.f39546a = false;
            return this;
        }

        public final Builder disabledFileLogger() {
            this.f39548c = false;
            return this;
        }

        public final Builder enableFileLogger(File file, int i2) {
            Objects.requireNonNull(file, "logFolder can't be null");
            this.f39548c = true;
            this.d = file;
            this.f39549e = i2;
            return this;
        }

        public final Builder enableLogcat(int i2) {
            this.f39546a = true;
            this.f39547b = i2;
            return this;
        }
    }

    public DebugMode(Builder builder) {
        this.f39542a = builder.f39546a;
        this.f39543b = builder.f39547b;
        this.f39544c = builder.f39548c;
        this.d = builder.d;
        this.f39545e = builder.f39549e;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("DebugMode");
        toStringHelper.c("isLogcatEnabled", this.f39542a);
        toStringHelper.b("logcatLevel", String.valueOf(this.f39543b));
        toStringHelper.c("isFileLoggerEnabled", this.f39544c);
        toStringHelper.b("fileLoggerFolder", this.d);
        toStringHelper.b("fileLoggerLevel", String.valueOf(this.f39545e));
        return toStringHelper.toString();
    }
}

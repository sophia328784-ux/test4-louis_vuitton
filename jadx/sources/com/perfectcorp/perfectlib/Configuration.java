package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Configuration {
    public static final Configuration m = builder().setModelPath(PerfectLib.ModelPath.assets("")).build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectLib.ModelPath f39514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f39515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f39516c;
    public final ImageSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FunStickerQuality f39517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39518f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f39519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f39520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f39521j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f39522k;
    public final String l;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PerfectLib.ModelPath f39523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Path f39524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Path f39525c;
        public ImageSource d = ImageSource.FILE;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public FunStickerQuality f39526e = FunStickerQuality.SD;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f39527f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f39528h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f39529i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f39530j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f39531k;
        public String l;

        public final Configuration build() {
            return new Configuration(this);
        }

        public final Builder setConfigFile(Path path) {
            this.f39525c = path;
            return this;
        }

        public final Builder setDeveloperMode(boolean z) {
            this.g = z;
            return this;
        }

        public final Builder setEnableDataTracking(boolean z) {
            this.f39530j = z;
            return this;
        }

        public final Builder setFunStickerQuality(FunStickerQuality funStickerQuality) {
            Objects.requireNonNull(funStickerQuality, "funStickerQuality can't be null");
            this.f39526e = funStickerQuality;
            return this;
        }

        public final Builder setImageSource(ImageSource imageSource) {
            Objects.requireNonNull(imageSource, "imageSource can't be null");
            this.d = imageSource;
            return this;
        }

        public final Builder setMappingMode(boolean z) {
            this.f39528h = z;
            return this;
        }

        public final Builder setModelPath(PerfectLib.ModelPath modelPath) {
            Objects.requireNonNull(modelPath, "modelPath can't be null");
            this.f39523a = modelPath;
            return this;
        }

        public final Builder setPreloadPath(Path path) {
            this.f39524b = path;
            return this;
        }

        public final Builder setPreviewMode(boolean z) {
            this.f39529i = z;
            return this;
        }

        public final Builder setSkinCareRecommendationId(String str, String str2) {
            Objects.requireNonNull(str);
            this.f39531k = str;
            Objects.requireNonNull(str2);
            this.l = str2;
            return this;
        }

        public final Builder setUserId(String str) {
            this.f39527f = str;
            return this;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FunStickerQuality {
        public static final FunStickerQuality HD;
        public static final FunStickerQuality SD;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ FunStickerQuality[] f39532a;

        static {
            FunStickerQuality funStickerQuality = new FunStickerQuality("SD", 0);
            SD = funStickerQuality;
            FunStickerQuality funStickerQuality2 = new FunStickerQuality("HD", 1);
            HD = funStickerQuality2;
            f39532a = new FunStickerQuality[]{funStickerQuality, funStickerQuality2};
        }

        public static FunStickerQuality valueOf(String str) {
            return (FunStickerQuality) Enum.valueOf(FunStickerQuality.class, str);
        }

        public static FunStickerQuality[] values() {
            return (FunStickerQuality[]) f39532a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ImageSource {
        public static final ImageSource FILE;
        public static final ImageSource URL;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ImageSource[] f39533a;

        static {
            ImageSource imageSource = new ImageSource("FILE", 0);
            FILE = imageSource;
            ImageSource imageSource2 = new ImageSource("URL", 1);
            URL = imageSource2;
            f39533a = new ImageSource[]{imageSource, imageSource2};
        }

        public static ImageSource valueOf(String str) {
            return (ImageSource) Enum.valueOf(ImageSource.class, str);
        }

        public static ImageSource[] values() {
            return (ImageSource[]) f39533a.clone();
        }
    }

    public Configuration(Builder builder) {
        PerfectLib.ModelPath modelPath = builder.f39523a;
        Objects.requireNonNull(modelPath, "modelPath can't be null");
        this.f39514a = modelPath;
        this.f39515b = builder.f39524b;
        this.f39516c = builder.f39525c;
        this.d = builder.d;
        this.f39517e = builder.f39526e;
        this.f39518f = builder.f39527f;
        this.g = builder.g;
        this.f39519h = builder.f39528h;
        this.f39520i = builder.f39529i;
        this.f39521j = builder.f39530j;
        this.f39522k = builder.f39531k;
        this.l = builder.l;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("Configuration");
        toStringHelper.b("modelPath", this.f39514a);
        toStringHelper.b("preloadPath", this.f39515b);
        toStringHelper.b("configurationFile", this.f39516c);
        toStringHelper.b("imageSource", this.d);
        toStringHelper.b("funStickerQuality", this.f39517e);
        toStringHelper.b("userId", this.f39518f);
        toStringHelper.c("isDeveloperMode", this.g);
        toStringHelper.c("isMappingMode", this.f39519h);
        toStringHelper.c("isPreviewMode", this.f39520i);
        toStringHelper.c("isEnableDataTracking", this.f39521j);
        toStringHelper.b("skinCareSurveyId", this.f39522k);
        toStringHelper.b("skinCareSettingId", this.l);
        return toStringHelper.toString();
    }
}

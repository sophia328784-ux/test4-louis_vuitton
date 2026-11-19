package com.perfectcorp.perfectlib.makeupcam.camera;

import android.text.TextUtils;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class BackgroundPayload implements PayloadValidator {
    private final BackgroundSetting backgroundSetting;

    public static class BackgroundSetting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f40585c;
        public final List d;

        public BackgroundSetting(String str, String str2, String str3, int i2, List<BackgroundSticker> list, List<BackgroundSticker> list2) {
            this.f40583a = str;
            this.f40584b = str2;
            this.f40585c = list;
            this.d = list2;
        }
    }

    public static class Builder {
    }

    public BackgroundPayload(BackgroundSetting backgroundSetting) {
        this.backgroundSetting = backgroundSetting;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        if (this.backgroundSetting != null) {
            return;
        }
        r81.d("background setting are null");
    }

    public final BackgroundSetting b() {
        return this.backgroundSetting;
    }

    public final boolean c(BackgroundPayload backgroundPayload) {
        return TextUtils.equals(this.backgroundSetting.f40583a, backgroundPayload.backgroundSetting.f40583a);
    }

    public static final class BackgroundSticker {

        @SerializedName("align_mode")
        public final String alignMode;
        public final int bestFrameIndex;

        @SerializedName("file_name")
        public final String fileName;

        @SerializedName("sticker_type")
        public final String stickerType;

        public BackgroundSticker() {
            this.fileName = null;
            this.alignMode = null;
            this.stickerType = null;
            this.bestFrameIndex = 0;
        }

        public BackgroundSticker(String str, String str2, String str3, int i2) {
            this.fileName = str;
            this.alignMode = str2;
            this.stickerType = str3;
            this.bestFrameIndex = i2;
        }
    }
}

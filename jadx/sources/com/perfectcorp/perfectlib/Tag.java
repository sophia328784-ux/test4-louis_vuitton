package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Tag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39972c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f39973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f39974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f39975c;
        public Configuration.ImageSource d;
    }

    public Tag(Builder builder) {
        String str = builder.f39973a;
        Objects.requireNonNull(str);
        this.f39970a = str;
        String str2 = builder.f39974b;
        Objects.requireNonNull(str2);
        this.f39971b = str2;
        Configuration.ImageSource imageSource = builder.d;
        Objects.requireNonNull(imageSource);
        String str3 = builder.f39975c;
        Objects.requireNonNull(str3);
        this.f39972c = DownloadImageHelper.b(imageSource, str3);
    }

    public final String getName() {
        return this.f39971b;
    }

    public final String getTagId() {
        return this.f39970a;
    }

    public final String getThumbnail() {
        return this.f39972c;
    }
}

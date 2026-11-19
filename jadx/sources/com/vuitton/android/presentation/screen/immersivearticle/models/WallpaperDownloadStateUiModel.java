package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;", "", "", "downloadSuccess", "isDownloading", "downloadError", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WallpaperDownloadStateUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f58857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f58858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f58859c;

    public /* synthetic */ WallpaperDownloadStateUiModel(boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3);
    }

    public static WallpaperDownloadStateUiModel a(WallpaperDownloadStateUiModel wallpaperDownloadStateUiModel, boolean z, int i2) {
        boolean z2 = (i2 & 1) != 0 ? wallpaperDownloadStateUiModel.f58857a : true;
        boolean z3 = (i2 & 4) != 0 ? wallpaperDownloadStateUiModel.f58859c : true;
        wallpaperDownloadStateUiModel.getClass();
        return new WallpaperDownloadStateUiModel(z2, z, z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WallpaperDownloadStateUiModel)) {
            return false;
        }
        WallpaperDownloadStateUiModel wallpaperDownloadStateUiModel = (WallpaperDownloadStateUiModel) obj;
        return this.f58857a == wallpaperDownloadStateUiModel.f58857a && this.f58858b == wallpaperDownloadStateUiModel.f58858b && this.f58859c == wallpaperDownloadStateUiModel.f58859c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f58859c) + o60.b(Boolean.hashCode(this.f58857a) * 31, 31, this.f58858b);
    }

    public final String toString() {
        return a.p(cj.m("WallpaperDownloadStateUiModel(downloadSuccess=", ", isDownloading=", ", downloadError=", this.f58857a, this.f58858b), this.f58859c, ")");
    }

    public WallpaperDownloadStateUiModel(boolean z, boolean z2, boolean z3) {
        this.f58857a = z;
        this.f58858b = z2;
        this.f58859c = z3;
    }

    public WallpaperDownloadStateUiModel() {
        this(false, false, false, 7, null);
    }
}

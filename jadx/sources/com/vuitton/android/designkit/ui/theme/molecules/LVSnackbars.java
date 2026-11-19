package com.vuitton.android.designkit.ui.theme.molecules;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0081\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;", "", "Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;", "success", "successInvert", "error", "errorInvert", "chat", "chatInvert", "feedback", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVSnackbars {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SnackbarConfiguration f48678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnackbarConfiguration f48679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SnackbarConfiguration f48680c;
    public final SnackbarConfiguration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SnackbarConfiguration f48681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SnackbarConfiguration f48682f;
    public final SnackbarConfiguration g;

    public LVSnackbars(SnackbarConfiguration snackbarConfiguration, SnackbarConfiguration snackbarConfiguration2, SnackbarConfiguration snackbarConfiguration3, SnackbarConfiguration snackbarConfiguration4, SnackbarConfiguration snackbarConfiguration5, SnackbarConfiguration snackbarConfiguration6, SnackbarConfiguration snackbarConfiguration7) {
        snackbarConfiguration.getClass();
        snackbarConfiguration2.getClass();
        snackbarConfiguration3.getClass();
        snackbarConfiguration4.getClass();
        snackbarConfiguration5.getClass();
        snackbarConfiguration6.getClass();
        snackbarConfiguration7.getClass();
        this.f48678a = snackbarConfiguration;
        this.f48679b = snackbarConfiguration2;
        this.f48680c = snackbarConfiguration3;
        this.d = snackbarConfiguration4;
        this.f48681e = snackbarConfiguration5;
        this.f48682f = snackbarConfiguration6;
        this.g = snackbarConfiguration7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVSnackbars)) {
            return false;
        }
        LVSnackbars lVSnackbars = (LVSnackbars) obj;
        return Intrinsics.c(this.f48678a, lVSnackbars.f48678a) && Intrinsics.c(this.f48679b, lVSnackbars.f48679b) && Intrinsics.c(this.f48680c, lVSnackbars.f48680c) && Intrinsics.c(this.d, lVSnackbars.d) && Intrinsics.c(this.f48681e, lVSnackbars.f48681e) && Intrinsics.c(this.f48682f, lVSnackbars.f48682f) && Intrinsics.c(this.g, lVSnackbars.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f48682f.hashCode() + ((this.f48681e.hashCode() + ((this.d.hashCode() + ((this.f48680c.hashCode() + ((this.f48679b.hashCode() + (this.f48678a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVSnackbars(success=" + this.f48678a + ", successInvert=" + this.f48679b + ", error=" + this.f48680c + ", errorInvert=" + this.d + ", chat=" + this.f48681e + ", chatInvert=" + this.f48682f + ", feedback=" + this.g + ")";
    }
}

package com.vuitton.android.presentation.screen.distantrepairs.models;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;", "", "Landroid/net/Uri;", "uri", "<init>", "(Landroid/net/Uri;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairPhoto {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Uri f57388a;

    public DistantRepairPhoto(Uri uri) {
        this.f57388a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DistantRepairPhoto) && Intrinsics.c(this.f57388a, ((DistantRepairPhoto) obj).f57388a);
    }

    public final int hashCode() {
        Uri uri = this.f57388a;
        if (uri == null) {
            return 0;
        }
        return uri.hashCode();
    }

    public final String toString() {
        return "DistantRepairPhoto(uri=" + this.f57388a + ")";
    }
}

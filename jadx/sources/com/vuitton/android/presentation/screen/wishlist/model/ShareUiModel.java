package com.vuitton.android.presentation.screen.wishlist.model;

import android.graphics.Bitmap;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/ShareUiModel;", "", "", "title", "text", "fileName", "Landroid/graphics/Bitmap;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShareUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65736c;
    public final Bitmap d;

    public ShareUiModel(String str, String str2, String str3, Bitmap bitmap) {
        cj.z(str, str2, str3);
        this.f65734a = str;
        this.f65735b = str2;
        this.f65736c = str3;
        this.d = bitmap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShareUiModel)) {
            return false;
        }
        ShareUiModel shareUiModel = (ShareUiModel) obj;
        return Intrinsics.c(this.f65734a, shareUiModel.f65734a) && Intrinsics.c(this.f65735b, shareUiModel.f65735b) && Intrinsics.c(this.f65736c, shareUiModel.f65736c) && Intrinsics.c(this.d, shareUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f65734a.hashCode() * 31, 31, this.f65735b), 31, this.f65736c);
        Bitmap bitmap = this.d;
        return iB + (bitmap == null ? 0 : bitmap.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShareUiModel(title=", this.f65734a, ", text=", this.f65735b, ", fileName=");
        sbS.append(this.f65736c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}

package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card;

import android.graphics.Bitmap;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;", "", "", "scenePath", "Landroid/graphics/Bitmap;", "cardFrontNormalBitmap", "cardFrontBaseColorBitmap", "cardBackNormalBitmap", "cardBackBaseColorBitmap", "", "is3dError", "is3dLoading", "<init>", "(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Lv3dCardViewerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bitmap f58577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bitmap f58578c;
    public final Bitmap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bitmap f58579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f58580f;
    public final boolean g;

    public /* synthetic */ Lv3dCardViewerUiModel(String str, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? null : bitmap, (i2 & 4) != 0 ? null : bitmap2, (i2 & 8) != 0 ? null : bitmap3, (i2 & 16) != 0 ? null : bitmap4, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? true : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Lv3dCardViewerUiModel)) {
            return false;
        }
        Lv3dCardViewerUiModel lv3dCardViewerUiModel = (Lv3dCardViewerUiModel) obj;
        return Intrinsics.c(this.f58576a, lv3dCardViewerUiModel.f58576a) && Intrinsics.c(this.f58577b, lv3dCardViewerUiModel.f58577b) && Intrinsics.c(this.f58578c, lv3dCardViewerUiModel.f58578c) && Intrinsics.c(this.d, lv3dCardViewerUiModel.d) && Intrinsics.c(this.f58579e, lv3dCardViewerUiModel.f58579e) && this.f58580f == lv3dCardViewerUiModel.f58580f && this.g == lv3dCardViewerUiModel.g;
    }

    public final int hashCode() {
        int iHashCode = this.f58576a.hashCode() * 31;
        Bitmap bitmap = this.f58577b;
        int iHashCode2 = (iHashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31;
        Bitmap bitmap2 = this.f58578c;
        int iHashCode3 = (iHashCode2 + (bitmap2 == null ? 0 : bitmap2.hashCode())) * 31;
        Bitmap bitmap3 = this.d;
        int iHashCode4 = (iHashCode3 + (bitmap3 == null ? 0 : bitmap3.hashCode())) * 31;
        Bitmap bitmap4 = this.f58579e;
        return Boolean.hashCode(this.g) + o60.b((iHashCode4 + (bitmap4 != null ? bitmap4.hashCode() : 0)) * 31, 31, this.f58580f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Lv3dCardViewerUiModel(scenePath=");
        sb.append(this.f58576a);
        sb.append(", cardFrontNormalBitmap=");
        sb.append(this.f58577b);
        sb.append(", cardFrontBaseColorBitmap=");
        sb.append(this.f58578c);
        sb.append(", cardBackNormalBitmap=");
        sb.append(this.d);
        sb.append(", cardBackBaseColorBitmap=");
        sb.append(this.f58579e);
        sb.append(", is3dError=");
        sb.append(this.f58580f);
        sb.append(", is3dLoading=");
        return defpackage.a.p(sb, this.g, ")");
    }

    public Lv3dCardViewerUiModel(String str, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, boolean z, boolean z2) {
        str.getClass();
        this.f58576a = str;
        this.f58577b = bitmap;
        this.f58578c = bitmap2;
        this.d = bitmap3;
        this.f58579e = bitmap4;
        this.f58580f = z;
        this.g = z2;
    }

    public Lv3dCardViewerUiModel() {
        this(null, null, null, null, null, false, false, CertificateBody.profileType, null);
    }
}

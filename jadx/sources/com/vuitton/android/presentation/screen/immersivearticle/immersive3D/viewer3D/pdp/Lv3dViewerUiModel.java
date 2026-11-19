package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;", "", "", "scenePath", "sneakerUrl", "backgroundUrl", "subButtonText", "", "is3dLoaded", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;", "error3dType", "isNotificationEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Lv3dViewerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58614c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f58615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Error3dType f58616f;
    public final boolean g;

    public /* synthetic */ Lv3dViewerUiModel(String str, String str2, String str3, String str4, boolean z, Error3dType error3dType, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? new String() : str2, (i2 & 4) != 0 ? new String() : str3, (i2 & 8) != 0 ? new String() : str4, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? Error3dType.None : error3dType, (i2 & 64) != 0 ? false : z2);
    }

    public static Lv3dViewerUiModel a(Lv3dViewerUiModel lv3dViewerUiModel, String str, String str2, Error3dType error3dType, int i2) {
        String str3 = (i2 & 1) != 0 ? lv3dViewerUiModel.f58612a : "models/pdp_scene";
        if ((i2 & 2) != 0) {
            str = lv3dViewerUiModel.f58613b;
        }
        String str4 = str;
        if ((i2 & 4) != 0) {
            str2 = lv3dViewerUiModel.f58614c;
        }
        String str5 = str2;
        String str6 = lv3dViewerUiModel.d;
        boolean z = (i2 & 16) != 0 ? lv3dViewerUiModel.f58615e : true;
        if ((i2 & 32) != 0) {
            error3dType = lv3dViewerUiModel.f58616f;
        }
        Error3dType error3dType2 = error3dType;
        boolean z2 = lv3dViewerUiModel.g;
        lv3dViewerUiModel.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        error3dType2.getClass();
        return new Lv3dViewerUiModel(str3, str4, str5, str6, z, error3dType2, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Lv3dViewerUiModel)) {
            return false;
        }
        Lv3dViewerUiModel lv3dViewerUiModel = (Lv3dViewerUiModel) obj;
        return Intrinsics.c(this.f58612a, lv3dViewerUiModel.f58612a) && Intrinsics.c(this.f58613b, lv3dViewerUiModel.f58613b) && Intrinsics.c(this.f58614c, lv3dViewerUiModel.f58614c) && Intrinsics.c(this.d, lv3dViewerUiModel.d) && this.f58615e == lv3dViewerUiModel.f58615e && this.f58616f == lv3dViewerUiModel.f58616f && this.g == lv3dViewerUiModel.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.g) + ((this.f58616f.hashCode() + o60.b(fc.b(fc.b(fc.b(this.f58612a.hashCode() * 31, 31, this.f58613b), 31, this.f58614c), 31, this.d), 31, this.f58615e)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Lv3dViewerUiModel(scenePath=", this.f58612a, ", sneakerUrl=", this.f58613b, ", backgroundUrl=");
        cj.C(sbS, this.f58614c, ", subButtonText=", this.d, ", is3dLoaded=");
        sbS.append(this.f58615e);
        sbS.append(", error3dType=");
        sbS.append(this.f58616f);
        sbS.append(", isNotificationEnabled=");
        return defpackage.a.p(sbS, this.g, ")");
    }

    public Lv3dViewerUiModel(String str, String str2, String str3, String str4, boolean z, Error3dType error3dType, boolean z2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        error3dType.getClass();
        this.f58612a = str;
        this.f58613b = str2;
        this.f58614c = str3;
        this.d = str4;
        this.f58615e = z;
        this.f58616f = error3dType;
        this.g = z2;
    }

    public Lv3dViewerUiModel() {
        this(null, null, null, null, false, null, false, CertificateBody.profileType, null);
    }
}

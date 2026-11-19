package com.vuitton.android.presentation.screen.thelookimmersivearticle.models;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;", "", "", "articleKey", "lookListKey", "lookKey", "showNameKey", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;", "immersiveLookList", "", "currentLookPosition", "", "isShareLoading", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TheLookImmersiveArticleViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65394c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f65395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f65396f;
    public final boolean g;

    public TheLookImmersiveArticleViewState(String str, String str2, String str3, String str4, List list, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? "" : str3, (i3 & 8) != 0 ? "" : str4, (i3 & 16) != 0 ? EmptyList.f71768b : list, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TheLookImmersiveArticleViewState)) {
            return false;
        }
        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) obj;
        return Intrinsics.c(this.f65392a, theLookImmersiveArticleViewState.f65392a) && Intrinsics.c(this.f65393b, theLookImmersiveArticleViewState.f65393b) && Intrinsics.c(this.f65394c, theLookImmersiveArticleViewState.f65394c) && Intrinsics.c(this.d, theLookImmersiveArticleViewState.d) && Intrinsics.c(this.f65395e, theLookImmersiveArticleViewState.f65395e) && this.f65396f == theLookImmersiveArticleViewState.f65396f && this.g == theLookImmersiveArticleViewState.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.g) + tr.b(this.f65396f, n00.a(fc.b(fc.b(fc.b(this.f65392a.hashCode() * 31, 31, this.f65393b), 31, this.f65394c), 31, this.d), 31, this.f65395e), 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TheLookImmersiveArticleViewState(articleKey=", this.f65392a, ", lookListKey=", this.f65393b, ", lookKey=");
        cj.C(sbS, this.f65394c, ", showNameKey=", this.d, ", immersiveLookList=");
        sbS.append(this.f65395e);
        sbS.append(", currentLookPosition=");
        sbS.append(this.f65396f);
        sbS.append(", isShareLoading=");
        return a.p(sbS, this.g, ")");
    }

    public TheLookImmersiveArticleViewState(String str, String str2, String str3, String str4, List<ImmersiveArticleLookCardUiModel> list, int i2, boolean z) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        this.f65392a = str;
        this.f65393b = str2;
        this.f65394c = str3;
        this.d = str4;
        this.f65395e = list;
        this.f65396f = i2;
        this.g = z;
    }

    public TheLookImmersiveArticleViewState() {
        this(null, null, null, null, null, 0, false, CertificateBody.profileType, null);
    }
}

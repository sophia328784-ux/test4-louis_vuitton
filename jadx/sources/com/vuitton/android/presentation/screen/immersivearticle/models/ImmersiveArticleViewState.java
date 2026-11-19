package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;", "", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;", "immersivePage", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;", "screenshotNotification", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;", "immersive3DUiModel", "is3dLoading", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;", "podcast", "isShareAvailable", "isUserLoggedIn", "Lcom/vuitton/android/presentation/model/common/A11ySettings;", "a11ySettings", "<init>", "(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f58799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f58800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleUiModel f58801c;
    public final ScreenshotUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lv3dViewerUiModel f58802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f58803f;
    public final AudioPlayerItemUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f58804h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f58805i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final A11ySettings f58806j;

    public /* synthetic */ ImmersiveArticleViewState(boolean z, boolean z2, ImmersiveArticleUiModel immersiveArticleUiModel, ScreenshotUiModel screenshotUiModel, Lv3dViewerUiModel lv3dViewerUiModel, boolean z3, AudioPlayerItemUiModel audioPlayerItemUiModel, boolean z4, boolean z5, A11ySettings a11ySettings, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? null : immersiveArticleUiModel, (i2 & 8) != 0 ? new ScreenshotUiModel(false, null, 3, null) : screenshotUiModel, (i2 & 16) != 0 ? new Lv3dViewerUiModel(null, null, null, null, false, null, false, CertificateBody.profileType, null) : lv3dViewerUiModel, (i2 & 32) != 0 ? false : z3, (i2 & 64) == 0 ? audioPlayerItemUiModel : null, (i2 & 128) != 0 ? false : z4, (i2 & 256) == 0 ? z5 : false, (i2 & 512) != 0 ? new A11ySettings(false, false, false, 7, null) : a11ySettings);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleViewState)) {
            return false;
        }
        ImmersiveArticleViewState immersiveArticleViewState = (ImmersiveArticleViewState) obj;
        return this.f58799a == immersiveArticleViewState.f58799a && this.f58800b == immersiveArticleViewState.f58800b && Intrinsics.c(this.f58801c, immersiveArticleViewState.f58801c) && Intrinsics.c(this.d, immersiveArticleViewState.d) && Intrinsics.c(this.f58802e, immersiveArticleViewState.f58802e) && this.f58803f == immersiveArticleViewState.f58803f && Intrinsics.c(this.g, immersiveArticleViewState.g) && this.f58804h == immersiveArticleViewState.f58804h && this.f58805i == immersiveArticleViewState.f58805i && Intrinsics.c(this.f58806j, immersiveArticleViewState.f58806j);
    }

    public final int hashCode() {
        int iB = o60.b(Boolean.hashCode(this.f58799a) * 31, 31, this.f58800b);
        ImmersiveArticleUiModel immersiveArticleUiModel = this.f58801c;
        int iB2 = o60.b((this.f58802e.hashCode() + ((this.d.hashCode() + ((iB + (immersiveArticleUiModel == null ? 0 : immersiveArticleUiModel.hashCode())) * 31)) * 31)) * 31, 31, this.f58803f);
        AudioPlayerItemUiModel audioPlayerItemUiModel = this.g;
        return this.f58806j.hashCode() + o60.b(o60.b((iB2 + (audioPlayerItemUiModel != null ? audioPlayerItemUiModel.hashCode() : 0)) * 31, 31, this.f58804h), 31, this.f58805i);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("ImmersiveArticleViewState(isLoading=", ", isError=", ", immersivePage=", this.f58799a, this.f58800b);
        sbM.append(this.f58801c);
        sbM.append(", screenshotNotification=");
        sbM.append(this.d);
        sbM.append(", immersive3DUiModel=");
        sbM.append(this.f58802e);
        sbM.append(", is3dLoading=");
        sbM.append(this.f58803f);
        sbM.append(", podcast=");
        sbM.append(this.g);
        sbM.append(", isShareAvailable=");
        sbM.append(this.f58804h);
        sbM.append(", isUserLoggedIn=");
        sbM.append(this.f58805i);
        sbM.append(", a11ySettings=");
        sbM.append(this.f58806j);
        sbM.append(")");
        return sbM.toString();
    }

    public ImmersiveArticleViewState(boolean z, boolean z2, ImmersiveArticleUiModel immersiveArticleUiModel, ScreenshotUiModel screenshotUiModel, Lv3dViewerUiModel lv3dViewerUiModel, boolean z3, AudioPlayerItemUiModel audioPlayerItemUiModel, boolean z4, boolean z5, A11ySettings a11ySettings) {
        screenshotUiModel.getClass();
        lv3dViewerUiModel.getClass();
        a11ySettings.getClass();
        this.f58799a = z;
        this.f58800b = z2;
        this.f58801c = immersiveArticleUiModel;
        this.d = screenshotUiModel;
        this.f58802e = lv3dViewerUiModel;
        this.f58803f = z3;
        this.g = audioPlayerItemUiModel;
        this.f58804h = z4;
        this.f58805i = z5;
        this.f58806j = a11ySettings;
    }

    public ImmersiveArticleViewState() {
        this(false, false, null, null, null, false, null, false, false, null, 1023, null);
    }
}

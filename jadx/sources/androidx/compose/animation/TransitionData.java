package androidx.compose.animation;

import defpackage.o60;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\u0018\b\u0002\u0010\u0010\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f\u0012\u0004\u0012\u00020\u00010\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/animation/TransitionData;", "", "Landroidx/compose/animation/Fade;", "fade", "Landroidx/compose/animation/Slide;", "slide", "Landroidx/compose/animation/ChangeSize;", "changeSize", "Landroidx/compose/animation/Scale;", "scale", "Landroidx/compose/animation/Veil;", "veil", "", "hold", "", "Landroidx/compose/animation/TransitionEffectKey;", "effectsMap", "<init>", "(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Landroidx/compose/animation/Veil;ZLjava/util/Map;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TransitionData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Fade f3753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Slide f3754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ChangeSize f3755c;
    public final Scale d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Veil f3756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3757f;
    public final Map g;

    public /* synthetic */ TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, Veil veil, boolean z, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : fade, (i2 & 2) != 0 ? null : slide, (i2 & 4) != 0 ? null : changeSize, (i2 & 8) != 0 ? null : scale, (i2 & 16) != 0 ? null : veil, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? MapsKt.c() : map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        return Intrinsics.c(this.f3753a, transitionData.f3753a) && Intrinsics.c(this.f3754b, transitionData.f3754b) && Intrinsics.c(this.f3755c, transitionData.f3755c) && Intrinsics.c(this.d, transitionData.d) && Intrinsics.c(this.f3756e, transitionData.f3756e) && this.f3757f == transitionData.f3757f && Intrinsics.c(this.g, transitionData.g);
    }

    public final int hashCode() {
        Fade fade = this.f3753a;
        int iHashCode = (fade == null ? 0 : fade.hashCode()) * 31;
        Slide slide = this.f3754b;
        int iHashCode2 = (iHashCode + (slide == null ? 0 : slide.hashCode())) * 31;
        ChangeSize changeSize = this.f3755c;
        int iHashCode3 = (iHashCode2 + (changeSize == null ? 0 : changeSize.hashCode())) * 31;
        Scale scale = this.d;
        int iHashCode4 = (iHashCode3 + (scale == null ? 0 : scale.hashCode())) * 31;
        Veil veil = this.f3756e;
        return this.g.hashCode() + o60.b((iHashCode4 + (veil != null ? veil.hashCode() : 0)) * 31, 31, this.f3757f);
    }

    public final String toString() {
        return "TransitionData(fade=" + this.f3753a + ", slide=" + this.f3754b + ", changeSize=" + this.f3755c + ", scale=" + this.d + ", veil=" + this.f3756e + ", hold=" + this.f3757f + ", effectsMap=" + this.g + ')';
    }

    public TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, Veil veil, boolean z, Map<TransitionEffectKey<?>, Object> map) {
        this.f3753a = fade;
        this.f3754b = slide;
        this.f3755c = changeSize;
        this.d = scale;
        this.f3756e = veil;
        this.f3757f = z;
        this.g = map;
    }

    public TransitionData() {
        this(null, null, null, null, null, false, null, CertificateBody.profileType, null);
    }
}

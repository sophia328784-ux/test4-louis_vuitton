package androidx.compose.animation;

import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/animation/EnterTransition;", "", "Companion", "Landroidx/compose/animation/EnterTransitionImpl;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class EnterTransition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f3626a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EnterTransition f3627b = new EnterTransitionImpl(new TransitionData(null, null, null, null, null, false, null, CertificateBody.profileType, null));

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/EnterTransition$Companion;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public EnterTransition(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract TransitionData getF3628c();

    public final EnterTransition b(EnterTransition enterTransition) {
        Fade fade = enterTransition.getF3628c().f3753a;
        if (fade == null) {
            fade = getF3628c().f3753a;
        }
        Slide slide = enterTransition.getF3628c().f3754b;
        if (slide == null) {
            slide = getF3628c().f3754b;
        }
        ChangeSize changeSize = enterTransition.getF3628c().f3755c;
        if (changeSize == null) {
            changeSize = getF3628c().f3755c;
        }
        Scale scale = enterTransition.getF3628c().d;
        if (scale == null) {
            scale = getF3628c().d;
        }
        Veil veil = enterTransition.getF3628c().f3756e;
        if (veil == null) {
            veil = getF3628c().f3756e;
        }
        return new EnterTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, false, MapsKt.k(getF3628c().g, enterTransition.getF3628c().g), 32, null));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof EnterTransition) && Intrinsics.c(((EnterTransition) obj).getF3628c(), getF3628c());
    }

    public final int hashCode() {
        return getF3628c().hashCode();
    }

    public final String toString() {
        if (equals(f3627b)) {
            return "EnterTransition.None";
        }
        TransitionData transitionDataA = getF3628c();
        StringBuilder sb = new StringBuilder("EnterTransition: \nFade - ");
        Fade fade = transitionDataA.f3753a;
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - ");
        Slide slide = transitionDataA.f3754b;
        sb.append(slide != null ? slide.toString() : null);
        sb.append(",\nShrink - ");
        ChangeSize changeSize = transitionDataA.f3755c;
        sb.append(changeSize != null ? changeSize.toString() : null);
        sb.append(",\nScale - ");
        Scale scale = transitionDataA.d;
        sb.append(scale != null ? scale.toString() : null);
        return sb.toString();
    }
}

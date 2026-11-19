package androidx.compose.animation;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/animation/ExitTransition;", "", "Companion", "Landroidx/compose/animation/ExitTransitionImpl;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ExitTransition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f3629a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ExitTransition f3630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExitTransition f3631c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/ExitTransition$Companion;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        Fade fade = null;
        Slide slide = null;
        ChangeSize changeSize = null;
        Scale scale = null;
        Veil veil = null;
        Map map = null;
        f3630b = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, false, map, CertificateBody.profileType, defaultConstructorMarker));
        f3631c = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, true, map, 95, defaultConstructorMarker));
    }

    public ExitTransition(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract TransitionData getD();

    public final ExitTransition b(ExitTransition exitTransition) {
        Fade fade = exitTransition.getD().f3753a;
        if (fade == null) {
            fade = getD().f3753a;
        }
        Slide slide = exitTransition.getD().f3754b;
        if (slide == null) {
            slide = getD().f3754b;
        }
        ChangeSize changeSize = exitTransition.getD().f3755c;
        if (changeSize == null) {
            changeSize = getD().f3755c;
        }
        Scale scale = exitTransition.getD().d;
        if (scale == null) {
            scale = getD().d;
        }
        Veil veil = exitTransition.getD().f3756e;
        if (veil == null) {
            veil = getD().f3756e;
        }
        return new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, exitTransition.getD().f3757f || getD().f3757f, MapsKt.k(getD().g, exitTransition.getD().g)));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ExitTransition) && Intrinsics.c(((ExitTransition) obj).getD(), getD());
    }

    public final int hashCode() {
        return getD().hashCode();
    }

    public final String toString() {
        if (equals(f3630b)) {
            return "ExitTransition.None";
        }
        if (equals(f3631c)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        TransitionData transitionDataA = getD();
        StringBuilder sb = new StringBuilder("ExitTransition: \nFade - ");
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
        sb.append(",\nKeepUntilTransitionsFinished - ");
        sb.append(transitionDataA.f3757f);
        return sb.toString();
    }
}

package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.v9;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LookaheadScopeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9523a = 0;

    static {
        int i2 = LookaheadScopeKt$defaultPlacementApproachInProgress$1.f9529c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(441837433);
        int i3 = 1;
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Function0 function0 = null;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new LookaheadScopeImpl(function0, i3, null == true ? 1 : 0);
                gapComposerH.q(objX);
            }
            LookaheadScopeImpl lookaheadScopeImpl = (LookaheadScopeImpl) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = LookaheadScopeKt$LookaheadScope$1$1.f9524c;
                gapComposerH.q(objX2);
            }
            Function0 function1 = (Function0) objX2;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            LookaheadScopeKt$LookaheadScope$2$1 lookaheadScopeKt$LookaheadScope$2$1 = LookaheadScopeKt$LookaheadScope$2$1.f9525c;
            if (gapComposerH.getS()) {
                gapComposerH.a(Unit.f71739a, new v9(lookaheadScopeKt$LookaheadScope$2$1, 7));
            }
            Updater.c(gapComposerH, lookaheadScopeImpl, LookaheadScopeKt$LookaheadScope$2$2.f9526c);
            composableLambdaImpl.A(lookaheadScopeImpl, gapComposerH, 48);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(i2) { // from class: androidx.compose.ui.layout.LookaheadScopeKt$LookaheadScope$4
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(7);
                    LookaheadScopeKt.a(this.f9528c, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

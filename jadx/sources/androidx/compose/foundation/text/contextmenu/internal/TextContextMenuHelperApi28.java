package androidx.compose.foundation.text.contextmenu.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.p11;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TextContextMenuHelperApi28 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TextContextMenuHelperApi28 f6107a = new TextContextMenuHelperApi28();

    public final void a(Drawable drawable, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(257732500);
        int i3 = (gapComposerH.y(drawable) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("IconBox"), ContextMenuSpec.f4331j);
            boolean zY = gapComposerH.y(drawable);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new p11(drawable, 2);
                gapComposerH.q(objX);
            }
            BoxKt.a(DrawModifierKt.b(modifierO, (Function1) objX), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c(this, drawable, i2);
        }
    }

    public final void b(final Icon icon, Composer composer, final int i2) {
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        GapComposer gapComposerH = composer.h(2116504409);
        int i3 = (gapComposerH.y(icon) ? 4 : 2) | i2;
        final int i4 = 0;
        final int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zK = gapComposerH.K(icon) | gapComposerH.K(context);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = icon.loadDrawable(context);
                gapComposerH.q(objX);
            }
            Drawable drawable = (Drawable) objX;
            if (drawable == null) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                } else {
                    function2 = new Function2(this, icon, i2, i4) { // from class: androidx.compose.foundation.text.contextmenu.internal.g

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ int f6121b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ TextContextMenuHelperApi28 f6122c;
                        public final /* synthetic */ Icon d;

                        {
                            this.f6121b = i4;
                            this.f6122c = this;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i6 = this.f6121b;
                            Icon icon2 = this.d;
                            TextContextMenuHelperApi28 textContextMenuHelperApi28 = this.f6122c;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i6) {
                                case 0:
                                    textContextMenuHelperApi28.b(icon2, composer2, RecomposeScopeImplKt.a(49));
                                    break;
                                default:
                                    textContextMenuHelperApi28.b(icon2, composer2, RecomposeScopeImplKt.a(49));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                }
            } else {
                a(drawable, gapComposerH, 48);
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            function2 = new Function2(this, icon, i2, i5) { // from class: androidx.compose.foundation.text.contextmenu.internal.g

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f6121b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ TextContextMenuHelperApi28 f6122c;
                public final /* synthetic */ Icon d;

                {
                    this.f6121b = i5;
                    this.f6122c = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i6 = this.f6121b;
                    Icon icon2 = this.d;
                    TextContextMenuHelperApi28 textContextMenuHelperApi28 = this.f6122c;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i6) {
                        case 0:
                            textContextMenuHelperApi28.b(icon2, composer2, RecomposeScopeImplKt.a(49));
                            break;
                        default:
                            textContextMenuHelperApi28.b(icon2, composer2, RecomposeScopeImplKt.a(49));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }
}

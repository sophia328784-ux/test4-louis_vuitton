package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCtaListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.CtaListArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.is;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleCtaListViewKt {
    public static final void a(Modifier modifier, final CtaListArticleSectionUiModel ctaListArticleSectionUiModel, final boolean z, final boolean z2, final Function1 function1, Composer composer, final int i2) {
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        long j2;
        long j3;
        long j4;
        ConfigurationButton configurationButtonA;
        String str;
        String str2;
        String strC;
        Integer numValueOf;
        int i3;
        String str3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleCtaListView");
        }
        modifierE.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1988996969);
        int i4 = 16384;
        int i5 = i2 | (gapComposerH.y(ctaListArticleSectionUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        boolean z3 = false;
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = ctaListArticleSectionUiModel.f58635c;
            SectionThemeUiModel sectionThemeUiModel = ctaListArticleSectionUiModel.f58636e;
            if (list.isEmpty()) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final Modifier modifier3 = modifierE;
                final int i6 = 0;
                function2 = new Function2(modifier3, ctaListArticleSectionUiModel, z, z2, function1, i2, i6) { // from class: i30

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f69858b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f69859c;
                    public final /* synthetic */ CtaListArticleSectionUiModel d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ boolean f69860e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ boolean f69861f;
                    public final /* synthetic */ Function1 g;

                    {
                        this.f69858b = i6;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f69858b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(7);
                                ImmersiveArticleCtaListViewKt.a(this.f69859c, this.d, this.f69860e, this.f69861f, this.g, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(7);
                                ImmersiveArticleCtaListViewKt.a(this.f69859c, this.d, this.f69860e, this.f69861f, this.g, (Composer) obj, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                SectionThemeUiModel sectionThemeUiModel2 = ctaListArticleSectionUiModel.d;
                Color colorA = (sectionThemeUiModel2 == null || (str3 = sectionThemeUiModel2.f58825a) == null) ? null : StringExtKt.a(str3);
                if (colorA == null) {
                    gapComposerH.L(165658906);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(165655930);
                    gapComposerH.Z(false);
                    j2 = colorA.f8872a;
                }
                Modifier modifierJ = PaddingKt.j(BackgroundKt.b(modifierE, j2, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48418h);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(-440839392);
                int i7 = 0;
                for (Object obj : list) {
                    int i8 = i7 + 1;
                    if (i7 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    Pair pair = (Pair) obj;
                    if (z2) {
                        gapComposerH.L(1186256767);
                        configurationButtonA = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                        gapComposerH.Z(z3);
                    } else {
                        gapComposerH.L(1186348155);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                        Color colorA2 = (sectionThemeUiModel == null || (str2 = sectionThemeUiModel.f58825a) == null) ? null : StringExtKt.a(str2);
                        if (colorA2 == null) {
                            gapComposerH.L(-238819771);
                            j3 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                            gapComposerH.Z(z3);
                        } else {
                            gapComposerH.L(-238822251);
                            gapComposerH.Z(z3);
                            j3 = colorA2.f8872a;
                        }
                        long j5 = j3;
                        Color colorA3 = (sectionThemeUiModel == null || (str = sectionThemeUiModel.f58826b) == null) ? null : StringExtKt.a(str);
                        if (colorA3 == null) {
                            gapComposerH.L(-238815614);
                            j4 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                            gapComposerH.Z(z3);
                        } else {
                            gapComposerH.L(-238817908);
                            gapComposerH.Z(z3);
                            j4 = colorA3.f8872a;
                        }
                        configurationButtonA = ConfigurationButton.a(configurationButton, j5, j4, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182);
                        gapComposerH.Z(z3);
                    }
                    Modifier modifierD = tr.d("ImmersiveArticleCtaListView", 1.0f);
                    if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                        gapComposerH.L(1186876271);
                        strC = StringResources_androidKt.c(gapComposerH, z ? R.string.cta_register_now : R.string.cta_notyet_register);
                        gapComposerH.Z(z3);
                    } else {
                        gapComposerH.L(1187243187);
                        gapComposerH.Z(z3);
                        strC = (String) pair.f71705b;
                    }
                    if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                        gapComposerH.L(1187435046);
                        if (z) {
                            gapComposerH.L(1187485328);
                            i3 = LVAppDesignKitTheme.g(gapComposerH).R;
                            gapComposerH.Z(z3);
                        } else {
                            gapComposerH.L(1187582358);
                            i3 = LVAppDesignKitTheme.g(gapComposerH).Q;
                            gapComposerH.Z(z3);
                        }
                        gapComposerH.Z(z3);
                        numValueOf = Integer.valueOf(i3);
                    } else {
                        gapComposerH.L(1187716711);
                        gapComposerH.Z(z3);
                        numValueOf = null;
                    }
                    boolean zD = ((i5 & 57344) == i4) | gapComposerH.d(i7);
                    Object objX = gapComposerH.x();
                    if (zD || objX == Composer.Companion.f7939a) {
                        objX = new is(i7, 4, function1);
                        gapComposerH.q(objX);
                    }
                    List list2 = list;
                    SectionThemeUiModel sectionThemeUiModel3 = sectionThemeUiModel;
                    Modifier modifier4 = modifierE;
                    LVButtonKt.b(6, 496, gapComposerH, modifierD, configurationButtonA, numValueOf, null, strC, (Function0) objX, false, false, false);
                    if (i7 < CollectionsKt.F(list2)) {
                        cj.x(n00.i(gapComposerH, 1187890498, "ImmersiveArticleCtaListView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, false);
                    } else {
                        gapComposerH.L(1187992364);
                        gapComposerH.Z(false);
                    }
                    z3 = false;
                    i7 = i8;
                    list = list2;
                    i4 = 16384;
                    modifierE = modifier4;
                    sectionThemeUiModel = sectionThemeUiModel3;
                }
                modifier2 = modifierE;
                gapComposerH.Z(z3);
                gapComposerH.Z(true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            recomposeScopeImplB0.d = function2;
        }
        modifier2 = modifierE;
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i9 = 1;
            final Modifier modifier5 = modifier2;
            function2 = new Function2(modifier5, ctaListArticleSectionUiModel, z, z2, function1, i2, i9) { // from class: i30

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f69858b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f69859c;
                public final /* synthetic */ CtaListArticleSectionUiModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f69860e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f69861f;
                public final /* synthetic */ Function1 g;

                {
                    this.f69858b = i9;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    switch (this.f69858b) {
                        case 0:
                            ((Integer) obj3).getClass();
                            int iA = RecomposeScopeImplKt.a(7);
                            ImmersiveArticleCtaListViewKt.a(this.f69859c, this.d, this.f69860e, this.f69861f, this.g, (Composer) obj2, iA);
                            break;
                        default:
                            ((Integer) obj3).getClass();
                            int iA2 = RecomposeScopeImplKt.a(7);
                            ImmersiveArticleCtaListViewKt.a(this.f69859c, this.d, this.f69860e, this.f69861f, this.g, (Composer) obj2, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }
}

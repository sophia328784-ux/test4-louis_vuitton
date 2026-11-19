package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideCardKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import defpackage.h1;
import defpackage.n00;
import defpackage.tr;
import defpackage.y2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideCardKt {
    public static final void a(final AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel, final long j2, final long j3, final Function0 function0, Composer composer, final int i2) {
        audioGuideCardUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-607500712);
        int i3 = i2 | (gapComposerH.K(audioGuideCardUiModel) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.e(j3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.j(gapComposerH).f48411c), j3, RectangleShapeKt.f8913a);
            int i4 = i3 & 7168;
            boolean z = i4 == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new y2(function0, 4);
                gapComposerH.q(objX);
            }
            Modifier modifierI = PaddingKt.i(ModifierExtKt.e(SemanticsModifierKt.b(modifierB, true, (Function1) objX), "audioGuide_narrator_view"), LVAppDesignKitTheme.l(gapComposerH).d);
            boolean z2 = i4 == 2048;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new h1(function0, 6);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierI, false, null, null, (Function0) objX2, 31);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierE = ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(SizeKt.s(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "AudioGuideCard-RIQooxk"), LVAppDesignKitTheme.d(gapComposerH).y), 0.8f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), "audioGuide_narrator_image");
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            AssetImageUiModel assetImageUiModel = audioGuideCardUiModel.f53206c;
            String str = audioGuideCardUiModel.f53204a;
            String str2 = assetImageUiModel.f51778b;
            str2.getClass();
            ImageLoaderKt.b(modifierE, str2, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierG = n00.g("AudioGuideCard-RIQooxk", "audioGuide_narrator_text");
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            String str3 = audioGuideCardUiModel.f53205b;
            if (str != null) {
                List listSplit$default = StringsKt__StringsKt.split$default(str3, new String[]{str}, false, 2, 2, null);
                builder.e((String) (listSplit$default.size() > 0 ? listSplit$default.get(0) : ""));
                FontWeight.f10727c.getClass();
                int iH = builder.h(new SpanStyle(0L, 0L, FontWeight.f10731i, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.SIX_DIGITS, (DefaultConstructorMarker) null));
                try {
                    builder.e(str);
                    builder.f(iH);
                    builder.e((String) (1 < listSplit$default.size() ? listSplit$default.get(1) : ""));
                } catch (Throwable th) {
                    builder.f(iH);
                    throw th;
                }
            } else {
                builder.e(str3);
            }
            AnnotatedString annotatedStringI = builder.i();
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            TextOverflow.f10989a.getClass();
            TextKt.d(annotatedStringI, modifierG, j2, 0L, 0L, null, 0L, TextOverflow.f10991c, false, 3, 0, null, null, textStyle, gapComposerH, (i3 << 3) & 896, 24960, 241656);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(j2, j3, function0, i2) { // from class: ha

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f69668c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f69669e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AudioGuideCardKt.a(this.f69667b, this.f69668c, this.d, this.f69669e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

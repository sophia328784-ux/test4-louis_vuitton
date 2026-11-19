package com.vuitton.android.presentation.common.editorial.components.header;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.dy;
import defpackage.n00;
import defpackage.pq0;
import defpackage.py;
import defpackage.y2;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HeaderKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50764a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50764a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [boolean, int] */
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, String str, String str2, AssetImageUiModel assetImageUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Throwable th;
        Function0 function1;
        Function2 function2;
        boolean z;
        Function2 function3;
        Function1 function4;
        Function2 function5;
        GapComposer gapComposer2;
        char c2;
        long j2;
        Applier applier;
        Function2 function6;
        Object obj;
        Function2 function7;
        Function1 function8;
        Function2 function9;
        Function0 function10;
        String str3;
        ?? r4;
        GapComposer gapComposer3;
        int i4;
        long j3;
        long j4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "Header");
        }
        Modifier modifier2 = modifierE;
        lVColorScheme.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(1898752141);
        Applier applier2 = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(assetImageUiModel) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        int i5 = i3;
        if (gapComposerH.p(i5 & 1, (i5 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = str2.length() > 0 && function0 != null;
            int i6 = i5 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean z3 = i6 == 131072;
            Object objX = gapComposerH.x();
            Object obj2 = Composer.Companion.f7939a;
            Object obj3 = objX;
            if (z3 || objX == obj2) {
                Object pyVar = new py(function0, 5);
                gapComposerH.q(pyVar);
                obj3 = pyVar;
            }
            Modifier modifierC = ModifierExtKt.c(modifier2, z2, null, null, (Function0) obj3, 30);
            boolean z4 = i6 == 131072;
            Object objX2 = gapComposerH.x();
            Object obj4 = objX2;
            if (z4 || objX2 == obj2) {
                Object y2Var = new y2(function0, 15);
                gapComposerH.q(y2Var);
                obj4 = y2Var;
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC, false, (Function1) obj4);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function11 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function11);
            } else {
                gapComposerH.o();
            }
            Function2 function12 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function12);
            Function2 function13 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function13);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function14 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function14);
            Function1 function15 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function15);
            Function2 function16 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function16);
            if (assetImageUiModel == null) {
                gapComposerH.L(-1267238870);
                gapComposerH.Z(false);
                function2 = function13;
                function3 = function12;
                function4 = function15;
                function5 = function14;
                function1 = function11;
                z = false;
                th = null;
                gapComposer2 = gapComposerH;
            } else {
                Modifier modifierA = ClipKt.a(AspectRatioKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -1267238869, "Header"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).x), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(assetImageUiModel.f51778b, new ImageConfiguration.Background.Opaque(null, 1, null));
                strB.getClass();
                ContentScale.f9447a.getClass();
                th = null;
                function1 = function11;
                function2 = function13;
                z = false;
                function3 = function12;
                function4 = function15;
                function5 = function14;
                ImageLoaderKt.b(modifierA, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                GapComposer gapComposer4 = gapComposerH;
                gapComposer4.Z(false);
                gapComposer2 = gapComposer4;
            }
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Header");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposer2, z ? 1 : 0);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer2, dTFunctionNameModifier);
            if (applier2 == 0) {
                ComposablesKt.b();
                throw th;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function1);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function3);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function2);
            cj.t(iHashCode2, gapComposer2, function5, gapComposer2, function4);
            Updater.c(gapComposer2, modifierC3, function16);
            if (str == null) {
                gapComposer2.L(-1873722968);
                gapComposer2.Z(z);
                function10 = function1;
                function9 = function3;
                function8 = function4;
                str3 = "Header";
                function7 = function2;
                function6 = function16;
                obj = obj2;
                applier = applier2;
                r4 = z;
                gapComposer3 = gapComposer2;
            } else {
                gapComposer2.L(-1873722967);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).m;
                int i7 = WhenMappings.f50764a[lVColorScheme.ordinal()];
                if (i7 != 1) {
                    c2 = 2;
                    if (i7 != 2) {
                        throw d21.u(gapComposer2, -1472299824, z);
                    }
                    gapComposer2.L(-1472293801);
                    j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    gapComposer2.Z(z);
                } else {
                    c2 = 2;
                    gapComposer2.L(-1472297027);
                    j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.m;
                    gapComposer2.Z(z);
                }
                boolean z5 = z ? 1 : 0;
                GapComposer gapComposer5 = gapComposer2;
                applier = applier2;
                function6 = function16;
                obj = obj2;
                function7 = function2;
                function8 = function4;
                function9 = function3;
                function10 = function1;
                str3 = "Header";
                TextKt.c(str, null, j2, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, textStyle, gapComposer5, (i5 >> 6) & 14, 24576, 114682);
                GapComposer gapComposer6 = gapComposer5;
                r4 = 0;
                gapComposer6.Z(false);
                gapComposer3 = gapComposer6;
            }
            BiasAlignment.Vertical vertical2 = Alignment.Companion.m;
            String str4 = str3;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str4);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical2, gapComposer3, 48);
            int iHashCode3 = Long.hashCode(gapComposer3.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer3.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer3, dTFunctionNameModifier2);
            if (applier == null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposer3.B();
            if (gapComposer3.S) {
                gapComposer3.C(function10);
            } else {
                gapComposer3.o();
            }
            Updater.c(gapComposer3, rowMeasurePolicyA2, function9);
            Updater.c(gapComposer3, persistentCompositionLocalMapU3, function7);
            cj.t(iHashCode3, gapComposer3, function5, gapComposer3, function8);
            Modifier modifierF = n00.f(gapComposer3, modifierC4, function6, str4, "carousel_title_text");
            Object objX3 = gapComposer3.x();
            Object obj5 = objX3;
            if (objX3 == obj) {
                Object dyVar = new dy(20);
                gapComposer3.q(dyVar);
                obj5 = dyVar;
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierF, r4, (Function1) obj5);
            TextOverflow.f10989a.getClass();
            int i8 = TextOverflow.f10991c;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer3).f48426f;
            int[] iArr = WhenMappings.f50764a;
            int i9 = iArr[lVColorScheme.ordinal()];
            if (i9 != 1) {
                i4 = 2;
                if (i9 != 2) {
                    throw d21.u(gapComposer3, -595457326, r4);
                }
                gapComposer3.L(-595451303);
                j3 = LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k;
                gapComposer3.Z(r4);
            } else {
                i4 = 2;
                gapComposer3.L(-595454529);
                j3 = LVAppDesignKitTheme.c(gapComposer3).f48361b.m;
                gapComposer3.Z(r4);
            }
            GapComposer gapComposer7 = gapComposer3;
            TextKt.c(str2, modifierB2, j3, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, textStyle2, gapComposer7, (i5 >> 9) & 14, 24960, 110584);
            GapComposer gapComposer8 = gapComposer7;
            if (function0 != null) {
                Modifier modifierO = SizeKt.o(PaddingKt.m(n00.i(gapComposer8, -1278985706, str4), LVAppDesignKitTheme.l(gapComposer8).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer8).f48413a, 6), IconSize.f48348b);
                Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer8).I, gapComposer8, r4);
                int i10 = iArr[lVColorScheme.ordinal()];
                if (i10 == 1) {
                    gapComposer8.L(-595433057);
                    j4 = LVAppDesignKitTheme.c(gapComposer8).f48361b.m;
                    gapComposer8.Z(r4);
                } else {
                    if (i10 != i4) {
                        throw d21.u(gapComposer8, -595435970, r4);
                    }
                    gapComposer8.L(-595429703);
                    j4 = LVAppDesignKitTheme.c(gapComposer8).f48361b.f48382k;
                    gapComposer8.Z(r4);
                }
                IconKt.a(painterA, null, modifierO, j4, gapComposer8, 56, 0);
                gapComposer8.Z(r4);
            } else {
                gapComposer8.L(-1278321097);
                gapComposer8.Z(r4);
            }
            pq0.x(gapComposer8, true, true, true);
            gapComposer = gapComposer8;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, lVColorScheme, str, str2, assetImageUiModel, function0, i2);
        }
    }
}

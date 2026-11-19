package com.vuitton.android.presentation.screen.orders.components.list;

import android.content.Context;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.c10;
import defpackage.cj;
import defpackage.d21;
import defpackage.je;
import defpackage.n00;
import defpackage.n50;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderItemKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60197a;

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
            f60197a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:103:0x01df  */
    /* JADX WARN: Code duplicated, block: B:104:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:106:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:109:0x0298  */
    /* JADX WARN: Code duplicated, block: B:111:0x029f  */
    /* JADX WARN: Code duplicated, block: B:113:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:116:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:118:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:119:0x02df  */
    /* JADX WARN: Code duplicated, block: B:121:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:127:0x0362  */
    /* JADX WARN: Code duplicated, block: B:130:0x0380  */
    /* JADX WARN: Code duplicated, block: B:132:0x0383  */
    /* JADX WARN: Code duplicated, block: B:133:0x0395  */
    /* JADX WARN: Code duplicated, block: B:135:0x039d  */
    /* JADX WARN: Code duplicated, block: B:138:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:140:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:142:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:144:0x0414  */
    /* JADX WARN: Code duplicated, block: B:146:0x041c  */
    /* JADX WARN: Code duplicated, block: B:148:0x043c  */
    /* JADX WARN: Code duplicated, block: B:151:0x0459  */
    /* JADX WARN: Code duplicated, block: B:153:0x047c  */
    /* JADX WARN: Code duplicated, block: B:155:0x047f  */
    /* JADX WARN: Code duplicated, block: B:156:0x0491  */
    /* JADX WARN: Code duplicated, block: B:158:0x0499  */
    /* JADX WARN: Code duplicated, block: B:160:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:162:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:164:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:166:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:169:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:171:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:84:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:92:0x0119  */
    /* JADX WARN: Code duplicated, block: B:95:0x0157  */
    /* JADX WARN: Code duplicated, block: B:97:0x015e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0162  */
    public static final void a(Modifier modifier, TransactionItemUiModel transactionItemUiModel, LVColorScheme lVColorScheme, RoundedCornerShape roundedCornerShape, boolean z, boolean z2, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        boolean z4;
        RoundedCornerShape roundedCornerShape2;
        Modifier modifier2;
        boolean z5;
        LVColorScheme lVColorScheme2;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        RoundedCornerShape roundedCornerShape3;
        Modifier modifier3;
        RoundedCornerShape roundedCornerShape4;
        boolean z6;
        je jeVarF;
        Object objX;
        UrlFactory urlFactory;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        boolean z7;
        int[] iArr;
        int i5;
        long j2;
        RoundedCornerShape roundedCornerShape5;
        Modifier modifier4;
        LVColorScheme lVColorScheme4;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i6;
        long j3;
        int i7;
        long j4;
        int i8;
        long j5;
        int i9;
        ConfigurationTag configurationTag;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "OrderItem");
        }
        transactionItemUiModel.getClass();
        GapComposer gapComposerH = composer.h(-1531344556);
        Applier applier = gapComposerH.f7976a;
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(transactionItemUiModel) ? 32 : 16;
        }
        int i11 = i3 & 4;
        if (i11 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= ((i3 & 8) == 0 && gapComposerH.K(roundedCornerShape)) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        int i12 = i3 & 32;
        if (i12 == 0) {
            if ((196608 & i2) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 131072 : 65536;
            }
            if ((74899 & i4) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("OrderItem");
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if ((i3 & 8) != 0) {
                        roundedCornerShape3 = LVAppDesignKitTheme.j(gapComposerH).f48411c;
                    } else {
                        roundedCornerShape3 = roundedCornerShape;
                    }
                    RoundedCornerShape roundedCornerShape6 = roundedCornerShape3;
                    modifier3 = dTFunctionNameModifier;
                    roundedCornerShape4 = roundedCornerShape6;
                    if (i12 != 0) {
                        z6 = false;
                    } else {
                        z6 = z3;
                    }
                } else {
                    gapComposerH.D();
                    lVColorScheme3 = lVColorScheme;
                    modifier3 = dTFunctionNameModifier;
                    z6 = z3;
                    roundedCornerShape4 = roundedCornerShape;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                jeVarF = ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new UrlFactory(jeVarF);
                    gapComposerH.q(objX);
                }
                urlFactory = (UrlFactory) objX;
                Modifier modifierE = ModifierExtKt.e(SizeKt.d(modifier3, 1.0f), "MyOrder_ProductItem_view");
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                String str = transactionItemUiModel.f60418i;
                z7 = transactionItemUiModel.n;
                urlFactory.getClass();
                String strD = UrlFactory.d(str, 56, ImageConfiguration.Background.Transparent.f65853a);
                strD.getClass();
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OrderItem");
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierA = ClipKt.a(AspectRatioKt.a(SizeKt.o(dTFunctionNameModifier2, 56.0f), 1.0f, true), roundedCornerShape4);
                Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                iArr = WhenMappings.f60197a;
                i5 = iArr[lVColorScheme3.ordinal()];
                if (i5 != 1) {
                    gapComposerH.L(-918706624);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
                    gapComposerH.Z(false);
                } else {
                    if (i5 == 2) {
                        throw d21.u(gapComposerH, -918709611, false);
                    }
                    gapComposerH.L(-918703526);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                }
                roundedCornerShape5 = roundedCornerShape4;
                modifier4 = modifier3;
                lVColorScheme4 = lVColorScheme3;
                ImageLoaderKt.b(ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.b(BorderKt.a(modifierA2, 0.5f, j2, roundedCornerShape4), z7, new n50(27), gapComposerH, 0), "MyOrder_ProductImage_image"), strD, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
                Modifier modifierA3 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("OrderItem"), 1.0f, true);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierF = n00.f(gapComposerH, modifierC2, function5, "OrderItem", "MyOrder_ProductNameItem_text");
                String str2 = transactionItemUiModel.f60416f;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                i6 = iArr[lVColorScheme4.ordinal()];
                if (i6 != 1) {
                    gapComposerH.L(-744333362);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i6 == 2) {
                        throw d21.u(gapComposerH, -744336229, false);
                    }
                    gapComposerH.L(-744330264);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                }
                TextOverflow.f10989a.getClass();
                TextKt.c(str2, modifierF, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("OrderItem"), "MyOrder_ProductPriceItem_text");
                gapComposerH.L(-744321378);
                StringBuilder sb = new StringBuilder();
                sb.append(transactionItemUiModel.f60419j.f60384c);
                if (z || StringsKt.w(sb)) {
                    gapComposerH.L(-1142586608);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1142725953);
                    sb.append(" ");
                    sb.append(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included));
                    gapComposerH.Z(false);
                }
                String string = sb.toString();
                gapComposerH.Z(false);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                i7 = iArr[lVColorScheme4.ordinal()];
                if (i7 != 1) {
                    gapComposerH.L(-744306419);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                } else {
                    if (i7 == 2) {
                        throw d21.u(gapComposerH, -744309287, false);
                    }
                    gapComposerH.L(-744303353);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                TextKt.c(string, modifierE2, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                if (z7) {
                    SpacerKt.a(gapComposerH, SizeKt.s(n00.i(gapComposerH, 1586780693, "OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48414b));
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.my_orders_returned_tag);
                    i9 = iArr[lVColorScheme4.ordinal()];
                    if (i9 != 1) {
                        gapComposerH.L(-918635457);
                        configurationTag = ((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).d;
                        gapComposerH.Z(false);
                    } else {
                        if (i9 == 2) {
                            throw d21.u(gapComposerH, -918638149, false);
                        }
                        gapComposerH.L(-918632711);
                        configurationTag = ((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).f48514b;
                        gapComposerH.Z(false);
                    }
                    LVTagKt.a(null, configurationTag, strC, gapComposerH, 64, 25);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1587208338);
                    gapComposerH.Z(false);
                }
                SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
                if (z6) {
                    Modifier modifierO = SizeKt.o(n00.i(gapComposerH, 1587345699, "OrderItem"), LVAppDesignKitTheme.d(gapComposerH).m);
                    Painter painterA2 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0);
                    i8 = iArr[lVColorScheme4.ordinal()];
                    if (i8 != 1) {
                        gapComposerH.L(-918616356);
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                        gapComposerH.Z(false);
                    } else {
                        if (i8 == 2) {
                            throw d21.u(gapComposerH, -918619231, false);
                        }
                        gapComposerH.L(-918613514);
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                        gapComposerH.Z(false);
                    }
                    IconKt.a(painterA2, null, modifierO, j5, gapComposerH, 56, 0);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1587800562);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                roundedCornerShape2 = roundedCornerShape5;
                modifier2 = modifier4;
                lVColorScheme2 = lVColorScheme4;
                z5 = z6;
            } else {
                gapComposerH.D();
                roundedCornerShape2 = roundedCornerShape;
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
                lVColorScheme2 = lVColorScheme;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier2, transactionItemUiModel, lVColorScheme2, roundedCornerShape2, z, z5, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        z3 = z2;
        if ((74899 & i4) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("OrderItem");
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if ((i3 & 8) != 0) {
                    roundedCornerShape3 = LVAppDesignKitTheme.j(gapComposerH).f48411c;
                } else {
                    roundedCornerShape3 = roundedCornerShape;
                }
                RoundedCornerShape roundedCornerShape7 = roundedCornerShape3;
                modifier3 = dTFunctionNameModifier;
                roundedCornerShape4 = roundedCornerShape7;
                if (i12 != 0) {
                    z6 = false;
                } else {
                    z6 = z3;
                }
            } else {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("OrderItem");
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if ((i3 & 8) != 0) {
                    roundedCornerShape3 = LVAppDesignKitTheme.j(gapComposerH).f48411c;
                } else {
                    roundedCornerShape3 = roundedCornerShape;
                }
                RoundedCornerShape roundedCornerShape8 = roundedCornerShape3;
                modifier3 = dTFunctionNameModifier;
                roundedCornerShape4 = roundedCornerShape8;
                if (i12 != 0) {
                    z6 = false;
                } else {
                    z6 = z3;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            jeVarF = ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new UrlFactory(jeVarF);
                gapComposerH.q(objX);
            }
            urlFactory = (UrlFactory) objX;
            Modifier modifierE3 = ModifierExtKt.e(SizeKt.d(modifier3, 1.0f), "MyOrder_ProductItem_view");
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$2 = Arrangement.g;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$2, Alignment.Companion.l, gapComposerH, 54);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE3);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            String str3 = transactionItemUiModel.f60418i;
            z7 = transactionItemUiModel.n;
            urlFactory.getClass();
            String strD2 = UrlFactory.d(str3, 56, ImageConfiguration.Background.Transparent.f65853a);
            strD2.getClass();
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("OrderItem");
            Dp.Companion companion2 = Dp.f11004c;
            Modifier modifierA4 = ClipKt.a(AspectRatioKt.a(SizeKt.o(dTFunctionNameModifier3, 56.0f), 1.0f, true), roundedCornerShape4);
            Painter painterA3 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA5 = PainterModifierKt.a(modifierA4, painterA3, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            iArr = WhenMappings.f60197a;
            i5 = iArr[lVColorScheme3.ordinal()];
            if (i5 != 1) {
                gapComposerH.L(-918706624);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
                gapComposerH.Z(false);
            } else {
                if (i5 == 2) {
                    throw d21.u(gapComposerH, -918709611, false);
                }
                gapComposerH.L(-918703526);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                gapComposerH.Z(false);
            }
            roundedCornerShape5 = roundedCornerShape4;
            modifier4 = modifier3;
            lVColorScheme4 = lVColorScheme3;
            ImageLoaderKt.b(ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.b(BorderKt.a(modifierA5, 0.5f, j2, roundedCornerShape4), z7, new n50(27), gapComposerH, 0), "MyOrder_ProductImage_image"), strD2, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            Modifier modifierA6 = RowScopeInstance.f5040a.a(new DTFunctionNameModifier("OrderItem"), 1.0f, true);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA6);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF2 = n00.f(gapComposerH, modifierC2, function5, "OrderItem", "MyOrder_ProductNameItem_text");
            String str4 = transactionItemUiModel.f60416f;
            TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).l;
            i6 = iArr[lVColorScheme4.ordinal()];
            if (i6 != 1) {
                gapComposerH.L(-744333362);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                if (i6 == 2) {
                    throw d21.u(gapComposerH, -744336229, false);
                }
                gapComposerH.L(-744330264);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            }
            TextOverflow.f10989a.getClass();
            TextKt.c(str4, modifierF2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle3, gapComposerH, 0, 24960, 110584);
            Modifier modifierE4 = ModifierExtKt.e(new DTFunctionNameModifier("OrderItem"), "MyOrder_ProductPriceItem_text");
            gapComposerH.L(-744321378);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(transactionItemUiModel.f60419j.f60384c);
            if (z) {
                gapComposerH.L(-1142586608);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1142586608);
                gapComposerH.Z(false);
            }
            String string2 = sb2.toString();
            gapComposerH.Z(false);
            TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            i7 = iArr[lVColorScheme4.ordinal()];
            if (i7 != 1) {
                gapComposerH.L(-744306419);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            } else {
                if (i7 == 2) {
                    throw d21.u(gapComposerH, -744309287, false);
                }
                gapComposerH.L(-744303353);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            TextKt.c(string2, modifierE4, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            if (z7) {
                SpacerKt.a(gapComposerH, SizeKt.s(n00.i(gapComposerH, 1586780693, "OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48414b));
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.my_orders_returned_tag);
                i9 = iArr[lVColorScheme4.ordinal()];
                if (i9 != 1) {
                    gapComposerH.L(-918635457);
                    configurationTag = ((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).d;
                    gapComposerH.Z(false);
                } else {
                    if (i9 == 2) {
                        throw d21.u(gapComposerH, -918638149, false);
                    }
                    gapComposerH.L(-918632711);
                    configurationTag = ((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).f48514b;
                    gapComposerH.Z(false);
                }
                LVTagKt.a(null, configurationTag, strC2, gapComposerH, 64, 25);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1587208338);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("OrderItem"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            if (z6) {
                Modifier modifierO2 = SizeKt.o(n00.i(gapComposerH, 1587345699, "OrderItem"), LVAppDesignKitTheme.d(gapComposerH).m);
                Painter painterA4 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0);
                i8 = iArr[lVColorScheme4.ordinal()];
                if (i8 != 1) {
                    gapComposerH.L(-918616356);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                    gapComposerH.Z(false);
                } else {
                    if (i8 == 2) {
                        throw d21.u(gapComposerH, -918619231, false);
                    }
                    gapComposerH.L(-918613514);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                    gapComposerH.Z(false);
                }
                IconKt.a(painterA4, null, modifierO2, j5, gapComposerH, 56, 0);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1587800562);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            roundedCornerShape2 = roundedCornerShape5;
            modifier2 = modifier4;
            lVColorScheme2 = lVColorScheme4;
            z5 = z6;
        } else {
            gapComposerH.D();
            roundedCornerShape2 = roundedCornerShape;
            modifier2 = dTFunctionNameModifier;
            z5 = z3;
            lVColorScheme2 = lVColorScheme;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier2, transactionItemUiModel, lVColorScheme2, roundedCornerShape2, z, z5, i2, i3);
        }
    }
}

package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import defpackage.bg;
import defpackage.c70;
import defpackage.d1;
import defpackage.d21;
import defpackage.f70;
import defpackage.h70;
import defpackage.j8;
import defpackage.n00;
import defpackage.n60;
import defpackage.uc;
import defpackage.vc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"", "focused", "Landroidx/compose/ui/text/input/TextFieldValue;", "textFieldValueState", "", "lastTextValue", "onSearchClicked", "value", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSearchBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48654a = new StaticProvidableCompositionLocal(new c70(3));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48657a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48657a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0131  */
    /* JADX WARN: Code duplicated, block: B:101:0x0139  */
    /* JADX WARN: Code duplicated, block: B:103:0x0183  */
    /* JADX WARN: Code duplicated, block: B:106:0x0192  */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:93:0x0112  */
    /* JADX WARN: Code duplicated, block: B:95:0x011a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0128  */
    public static final void a(Modifier modifier, final String str, final Function1 function1, final Function0 function0, final String str2, MutableInteractionSource mutableInteractionSource, int i2, final Function0 function2, String str3, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        String str4;
        boolean z;
        GapComposer gapComposer;
        final MutableInteractionSource mutableInteractionSource2;
        final String str5;
        final int i7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Object objX;
        MutableInteractionSource mutableInteractionSource3;
        int i8;
        MutableInteractionSource mutableInteractionSource4;
        String str6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSearchBar");
        }
        final Modifier modifier2 = modifierE;
        str.getClass();
        function1.getClass();
        function0.getClass();
        str2.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1445492738);
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.K(str2) ? 16384 : 8192;
        }
        int i9 = i5 | ImageMetadata.EDGE_MODE;
        if ((1572864 & i3) == 0) {
            if ((i4 & 64) == 0) {
                i6 = i2;
                int i10 = gapComposerH.d(i6) ? 1048576 : 524288;
                i9 |= i10;
            } else {
                i6 = i2;
            }
            i9 |= i10;
        } else {
            i6 = i2;
        }
        if ((12582912 & i3) == 0) {
            i9 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((100663296 & i3) == 0) {
            i9 |= gapComposerH.b(true) ? 67108864 : 33554432;
        }
        int i11 = i4 & 512;
        if (i11 == 0) {
            if ((805306368 & i3) == 0) {
                str4 = str3;
                i9 |= gapComposerH.K(str4) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
            if ((306783379 & i9) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0 || gapComposerH.h0()) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource3 = (MutableInteractionSource) objX;
                    if ((i4 & 64) != 0) {
                        i6 = LVAppDesignKitTheme.g(gapComposerH).H;
                        i9 &= -3670017;
                    }
                    if (i11 != 0) {
                        i8 = i6;
                        str6 = null;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        i8 = i6;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i12 = i9 >> 3;
                    gapComposer = gapComposerH;
                    d(modifier2, str, function1, function0, str2, i8, function2, mutableInteractionSource4, false, ((LVSearchBars) gapComposerH.k(f48654a)).f48658a, null, true, str6, gapComposer, (65534 & i9) | (458752 & i12) | (i12 & 3670016) | (29360128 & (i9 << 6)), (i9 >> 21) & 1008, Sink.Video.MAX_DIMENSION_HIGH);
                    i7 = i8;
                    mutableInteractionSource2 = mutableInteractionSource4;
                    str5 = str6;
                } else {
                    gapComposerH.D();
                    if ((i4 & 64) != 0) {
                        i9 &= -3670017;
                    }
                    mutableInteractionSource4 = mutableInteractionSource;
                    i8 = i6;
                }
                str6 = str4;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i13 = i9 >> 3;
                gapComposer = gapComposerH;
                d(modifier2, str, function1, function0, str2, i8, function2, mutableInteractionSource4, false, ((LVSearchBars) gapComposerH.k(f48654a)).f48658a, null, true, str6, gapComposer, (65534 & i9) | (458752 & i13) | (i13 & 3670016) | (29360128 & (i9 << 6)), (i9 >> 21) & 1008, Sink.Video.MAX_DIMENSION_HIGH);
                i7 = i8;
                mutableInteractionSource2 = mutableInteractionSource4;
                str5 = str6;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                mutableInteractionSource2 = mutableInteractionSource;
                str5 = str4;
                i7 = i6;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: i70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVSearchBarKt.a(modifier2, str, function1, function0, str2, mutableInteractionSource2, i7, function2, str5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i9 |= 805306368;
        str4 = str3;
        if ((306783379 & i9) != 306783378) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i9 & 1, z)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource3 = (MutableInteractionSource) objX;
                if ((i4 & 64) != 0) {
                    i6 = LVAppDesignKitTheme.g(gapComposerH).H;
                    i9 &= -3670017;
                }
                if (i11 != 0) {
                    i8 = i6;
                    str6 = null;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    i8 = i6;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    str6 = str4;
                }
            } else {
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource3 = (MutableInteractionSource) objX;
                if ((i4 & 64) != 0) {
                    i6 = LVAppDesignKitTheme.g(gapComposerH).H;
                    i9 &= -3670017;
                }
                if (i11 != 0) {
                    i8 = i6;
                    str6 = null;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    i8 = i6;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    str6 = str4;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            int i14 = i9 >> 3;
            gapComposer = gapComposerH;
            d(modifier2, str, function1, function0, str2, i8, function2, mutableInteractionSource4, false, ((LVSearchBars) gapComposerH.k(f48654a)).f48658a, null, true, str6, gapComposer, (65534 & i9) | (458752 & i14) | (i14 & 3670016) | (29360128 & (i9 << 6)), (i9 >> 21) & 1008, Sink.Video.MAX_DIMENSION_HIGH);
            i7 = i8;
            mutableInteractionSource2 = mutableInteractionSource4;
            str5 = str6;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            mutableInteractionSource2 = mutableInteractionSource;
            str5 = str4;
            i7 = i6;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: i70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVSearchBarKt.a(modifier2, str, function1, function0, str2, mutableInteractionSource2, i7, function2, str5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, MutableInteractionSource mutableInteractionSource, String str, String str2, LVColorScheme lVColorScheme, Function0 function0, boolean z, Composer composer, int i2, int i3) {
        String str3;
        int i4;
        LVColorScheme lVColorScheme2;
        String str4;
        MutableInteractionSource mutableInteractionSource2;
        ConfigurationSearchBar configurationSearchBar;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSearchBarButton");
        }
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(613903555);
        int i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        int i6 = i5 | 48;
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 = i5 | 432;
            str3 = str;
        } else {
            str3 = str;
            i4 = i6 | (gapComposerH.K(str3) ? 256 : 128);
        }
        int i8 = i4 | (gapComposerH.K(str2) ? 2048 : 1024);
        int i9 = i3 & 16;
        if (i9 != 0) {
            i8 |= 24576;
        } else if ((i2 & 24576) == 0) {
            i8 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 16384 : 8192;
        }
        int i10 = i8 | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i10 & 1, (599187 & i10) != 599186)) {
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) objX;
            if (i7 != 0) {
                str3 = "";
            }
            String str5 = str3;
            LVColorScheme lVColorScheme3 = i9 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i11 = WhenMappings.f48657a[lVColorScheme3.ordinal()];
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = f48654a;
            if (i11 == 1) {
                gapComposerH.L(1550810604);
                configurationSearchBar = ((LVSearchBars) gapComposerH.k(staticProvidableCompositionLocal)).f48658a;
                gapComposerH.Z(false);
            } else {
                if (i11 != 2) {
                    throw d21.u(gapComposerH, 1550808084, false);
                }
                gapComposerH.L(1550812914);
                configurationSearchBar = ((LVSearchBars) gapComposerH.k(staticProvidableCompositionLocal)).f48659b;
                gapComposerH.Z(false);
            }
            int i12 = i10 >> 3;
            MutableState mutableStateA = FocusInteractionKt.a(mutableInteractionSource3, gapComposerH, 6);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Boolean bool = (Boolean) mutableStateA.getF10755b();
            bool.getClass();
            boolean zK = gapComposerH.K(mutableStateA) | gapComposerH.y(focusManager) | ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new LVSearchBarKt$LVSearchBarButton$2$1(focusManager, function0, mutableStateA, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX2);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new n60(7);
                gapComposerH.q(objX3);
            }
            Function1 function1 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new c70(1);
                gapComposerH.q(objX4);
            }
            Function0 function2 = (Function0) objX4;
            int i13 = LVAppDesignKitTheme.g(gapComposerH).m;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new c70(2);
                gapComposerH.q(objX5);
            }
            d(modifierE, str5, function1, function2, str2, i13, (Function0) objX5, mutableInteractionSource3, true, configurationSearchBar, function0, z, null, gapComposerH, (i12 & 112) | 102239616 | (i10 & 14) | (57344 & (i10 << 3)) | 12582912, (i10 >> 15) & 126, 4096);
            str4 = str5;
            mutableInteractionSource2 = mutableInteractionSource3;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            str4 = str3;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(modifierE, mutableInteractionSource2, str4, str2, lVColorScheme2, function0, z, i2, i3);
        }
    }

    public static final void c(Modifier modifier, final TextFieldValue textFieldValue, final Function1 function1, Function0 function0, final String str, final int i2, final Function0 function2, MutableInteractionSource mutableInteractionSource, final boolean z, final ConfigurationSearchBar configurationSearchBar, final Function0 function3, final boolean z2, final String str2, Composer composer, int i3, int i4) {
        int i5;
        int i6;
        GapComposer gapComposer;
        SearchBarState searchBarState;
        int i7;
        int i8;
        Modifier modifierE = modifier;
        AnnotatedString annotatedString = textFieldValue.f10840a;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSearchBarInternal");
        }
        Modifier modifier2 = modifierE;
        function1.getClass();
        function0.getClass();
        str.getClass();
        function2.getClass();
        configurationSearchBar.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1923977889);
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(textFieldValue) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.d(i2) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.K(mutableInteractionSource) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposerH.b(z) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i5 |= gapComposerH.K(configurationSearchBar) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i4 & 6) == 0) {
            i6 = i4 | (gapComposerH.y(function3) ? 4 : 2);
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposerH.b(z2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            final FocusRequester focusRequester = (FocusRequester) objX;
            MutableState mutableStateA = FocusInteractionKt.a(mutableInteractionSource, gapComposerH, (i5 >> 21) & 14);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            if (!((Boolean) mutableStateA.getF10755b()).booleanValue() && ((Boolean) mutableState.getF10755b()).booleanValue()) {
                searchBarState = SearchBarState.Completed;
            } else if (((Boolean) mutableStateA.getF10755b()).booleanValue() && annotatedString.f10420c.length() > 0) {
                mutableState.setValue(Boolean.FALSE);
                searchBarState = SearchBarState.Typing;
            } else if (((Boolean) mutableStateA.getF10755b()).booleanValue() && annotatedString.f10420c.length() == 0) {
                mutableState.setValue(Boolean.FALSE);
                searchBarState = SearchBarState.Selected;
            } else {
                mutableState.setValue(Boolean.FALSE);
                searchBarState = SearchBarState.Enabled;
            }
            final SearchBarState searchBarState2 = searchBarState;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = FocusRequesterModifierKt.a(PaddingKt.k(modifier2, 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), focusRequester);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j2 = configurationSearchBar.f48576a;
            if (layoutDirection == LayoutDirection.Rtl) {
                TextDirection.f10969b.getClass();
                i7 = TextDirection.d;
            } else {
                TextDirection.f10969b.getClass();
                i7 = TextDirection.f10970c;
            }
            TextStyle textStyleA = TextStyle.a(textStyle, j2, 0L, null, null, 0L, null, 0, i7, 0L, null, null, 16711678);
            KeyboardType.f10809b.getClass();
            int i9 = KeyboardType.f10810c;
            ImeAction.f10785b.getClass();
            int i10 = ImeAction.f10788f;
            KeyboardCapitalization.f10804b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(KeyboardCapitalization.f10807f, (Boolean) null, i9, i10, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 114, (DefaultConstructorMarker) null);
            boolean zK = ((i5 & 112) == 32) | gapComposerH.K(softwareKeyboardController) | gapComposerH.y(focusManager) | ((i5 & 7168) == 2048);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                i8 = i5;
                d1 d1Var = new d1(textFieldValue, softwareKeyboardController, focusManager, function0, mutableState);
                gapComposerH.q(d1Var);
                objX3 = d1Var;
            } else {
                i8 = i5;
            }
            KeyboardActions keyboardActions = new KeyboardActions(null, null, null, null, (Function1) objX3, null, 47, null);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new n60(6);
                gapComposerH.q(objX4);
            }
            Function1 function4 = (Function1) objX4;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1103742114, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.molecules.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Function2 function5 = (Function2) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                    function5.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.y(function5) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48685a;
                        String str3 = textFieldValue.f10840a.f10420c;
                        String str4 = str2;
                        int i11 = i2;
                        ConfigurationSearchBar configurationSearchBar2 = configurationSearchBar;
                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(1709285356, new j8(str4, i11, configurationSearchBar2, z, function3, function2), composer2);
                        final boolean z3 = z2;
                        final SearchBarState searchBarState3 = searchBarState2;
                        final Function1 function6 = function1;
                        final FocusRequester focusRequester2 = focusRequester;
                        lVTextFieldInternal.a(str3, str, composableLambdaImplB2, ComposableLambdaKt.b(316351947, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.b
                            /* JADX WARN: Code duplicated, block: B:20:0x0060  */
                            /* JADX WARN: Type inference fix 'apply assigned field type' failed
                            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                             */
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Integer) obj5).intValue();
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSearchBarKt.f48654a;
                                int i12 = 0;
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    if (z3) {
                                        SearchBarState searchBarState4 = SearchBarState.Completed;
                                        SearchBarState searchBarState5 = searchBarState3;
                                        if (searchBarState5 == searchBarState4 || searchBarState5 == SearchBarState.Typing) {
                                            composer3.L(1282751448);
                                            LVTextFieldInternal lVTextFieldInternal2 = LVTextFieldInternal.f48685a;
                                            Modifier modifierG = n00.g("LVSearchBarInternal$lambda$18$1", "search_clear_button");
                                            Function1 function7 = function6;
                                            boolean zK2 = composer3.K(function7);
                                            Object objX5 = composer3.x();
                                            if (zK2 || objX5 == Composer.Companion.f7939a) {
                                                objX5 = new f70(function7, focusRequester2, i12);
                                                composer3.q(objX5);
                                            }
                                            lVTextFieldInternal2.c(KyberEngine.KyberPolyBytes, composer3, modifierG, (Function0) objX5);
                                            composer3.F();
                                        } else {
                                            composer3.L(1283119511);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.L(1283119511);
                                        composer3.F();
                                    }
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), function5, configurationSearchBar2, composer2, ((iIntValue << 12) & 57344) | 1576320);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            int i11 = i8 >> 3;
            int i12 = i8 >> 12;
            gapComposer = gapComposerH;
            BasicTextFieldKt.a(textFieldValue, function1, modifierA, false, z, textStyleA, keyboardOptions, keyboardActions, true, 1, 1, VisualTransformation.Companion.f10865a, function4, mutableInteractionSource, null, composableLambdaImplB, gapComposer, (i11 & 112) | (i11 & 14) | 905969664 | (57344 & i12), (i12 & 7168) | 197046, 16392);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h70(modifier2, textFieldValue, function1, function0, str, i2, function2, mutableInteractionSource, z, configurationSearchBar, function3, z2, str2, i3, i4);
        }
    }

    public static final void d(Modifier modifier, final String str, final Function1 function1, final Function0 function0, final String str2, final int i2, final Function0 function2, final MutableInteractionSource mutableInteractionSource, boolean z, final ConfigurationSearchBar configurationSearchBar, Function0 function3, final boolean z2, String str3, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        Function0 function4;
        int i7;
        int i8;
        Modifier modifier2;
        GapComposer gapComposer;
        final boolean z3;
        final String str4;
        final Function0 function5;
        Function0 function6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i9;
        String str5;
        long jA;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSearchBarInternal");
        }
        Modifier modifier3 = modifierE;
        str.getClass();
        function1.getClass();
        function0.getClass();
        str2.getClass();
        function2.getClass();
        configurationSearchBar.getClass();
        GapComposer gapComposerH = composer.h(-1152012018);
        if ((i3 & 6) == 0) {
            i6 = (gapComposerH.K(modifier3) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.K(str2) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.d(i2) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.K(mutableInteractionSource) ? 8388608 : 4194304;
        }
        int i10 = i5 & 256;
        if (i10 != 0) {
            i6 |= 100663296;
        } else if ((i3 & 100663296) == 0) {
            i6 |= gapComposerH.b(z) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i6 |= gapComposerH.K(configurationSearchBar) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i11 = i5 & 1024;
        if (i11 != 0) {
            i7 = i4 | 6;
            function4 = function3;
        } else {
            function4 = function3;
            if ((i4 & 6) == 0) {
                i7 = i4 | (gapComposerH.y(function4) ? 4 : 2);
            } else {
                i7 = i4;
            }
        }
        if ((i4 & 48) == 0) {
            i7 |= gapComposerH.b(z2) ? 32 : 16;
        }
        int i12 = i6;
        int i13 = i7;
        int i14 = i5 & 4096;
        if (i14 != 0) {
            i8 = i13 | KyberEngine.KyberPolyBytes;
        } else {
            int i15 = i13;
            if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
                i15 |= gapComposerH.K(str3) ? 256 : 128;
            }
            i8 = i15;
        }
        if (gapComposerH.p(i12 & 1, ((i12 & 306783379) == 306783378 && (i8 & 147) == 146) ? false : true)) {
            boolean z4 = i10 != 0 ? false : z;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (i11 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$2) {
                    objX = new c70(4);
                    gapComposerH.q(objX);
                }
                function6 = (Function0) objX;
            } else {
                function6 = function4;
            }
            String str6 = i14 != 0 ? null : str3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                if (str.length() == 0) {
                    TextRange.f10564b.getClass();
                    jA = TextRange.f10565c;
                } else {
                    jA = TextRangeKt.a(str.length(), str.length());
                }
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i9 = i8;
                str5 = str;
                objX2 = SnapshotStateKt.g(new TextFieldValue(str, jA, (TextRange) null, 4, (DefaultConstructorMarker) null));
                gapComposerH.q(objX2);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i9 = i8;
                str5 = str;
            }
            MutableState mutableState = (MutableState) objX2;
            TextFieldValue textFieldValueB = TextFieldValue.b((TextFieldValue) mutableState.getF10755b(), str5);
            boolean zK = gapComposerH.K(textFieldValueB);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new uc(textFieldValueB, mutableState, 1);
                gapComposerH.q(objX3);
            }
            EffectsKt.i((Function0) objX3, gapComposerH);
            boolean z5 = (i12 & 112) == 32;
            Object objX4 = gapComposerH.x();
            if (z5 || objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(str5);
                gapComposerH.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            boolean zK2 = gapComposerH.K(mutableState2) | ((i12 & 896) == 256);
            Object objX5 = gapComposerH.x();
            if (zK2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new vc(function1, mutableState, mutableState2, 1);
                gapComposerH.q(objX5);
            }
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            c(modifier2, textFieldValueB, (Function1) objX5, function0, str2, i2, function2, mutableInteractionSource, z4, configurationSearchBar, function6, z2, str6, gapComposer, i12 & 2147482638, i9 & 1022);
            z3 = z4;
            function5 = function6;
            str4 = str6;
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z;
            str4 = str3;
            function5 = function4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier4 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: g70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    LVSearchBarKt.d(modifier4, str, function1, function0, str2, i2, function2, mutableInteractionSource, z3, configurationSearchBar, function5, z2, str4, (Composer) obj, iA, iA2, i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}

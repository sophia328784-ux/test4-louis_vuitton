package com.vuitton.android.presentation.view.bottomsheets;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.cj;
import defpackage.n00;
import defpackage.q8;
import defpackage.tr;
import defpackage.v00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0003\u000b\f\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;", "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "OnPositiveClickListener", "OnNegativeClickListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class GenericBottomSheet extends Hilt_GenericBottomSheet {
    public static final Companion R = new Companion(null);
    public static final String S = "GenericBottomSheet";
    public OnPositiveClickListener O;
    public OnNegativeClickListener P;
    public Function0 Q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_MESSAGE", "KEY_NEGATIVE_TEXT", "KEY_POSITIVE_TEXT", "KEY_TITLE", "KEY_CANCELLABLE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static GenericBottomSheet a(String str, String str2, String str3, String str4) {
            str.getClass();
            GenericBottomSheet genericBottomSheet = new GenericBottomSheet();
            Bundle bundle = new Bundle();
            bundle.putString("KEY_TITLE", str4);
            bundle.putString("KEY_MESSAGE", str);
            bundle.putString("KEY_POSITIVE_TEXT", str3);
            bundle.putString("KEY_NEGATIVE_TEXT", str2);
            bundle.putBoolean("KEY_CANCELLABLE", false);
            genericBottomSheet.setArguments(bundle);
            return genericBottomSheet;
        }

        public static /* synthetic */ GenericBottomSheet b(Companion companion, String str, String str2, String str3, int i2) {
            if ((i2 & 4) != 0) {
                str2 = null;
            }
            if ((i2 & 8) != 0) {
                str3 = null;
            }
            companion.getClass();
            return a(str, str2, str3, null);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnNegativeClickListener {
        void a();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnPositiveClickListener {
        void a();
    }

    public GenericBottomSheet() {
        super(0, 1, null);
    }

    public final void V(String str, String str2, String str3, String str4, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        String str5;
        boolean z;
        boolean z2;
        String str6;
        GapComposer gapComposerH = composer.h(1629664375);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.K(str3) ? 256 : 128) | (gapComposerH.K(str4) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (i3 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("GenericBottomSheetComposable"), RoundedCornerShapeKt.b(LVAppDesignKitTheme.d(gapComposerH).f48388h, LVAppDesignKitTheme.d(gapComposerH).f48388h, LVAppDesignKitTheme.d(gapComposerH).f48383a, LVAppDesignKitTheme.d(gapComposerH).f48383a)), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierB = ColumnScopeInstance.f4944a.b(SizeKt.o(PaddingKt.k(new DTFunctionNameModifier("GenericBottomSheetComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.d(gapComposerH).o), Alignment.Companion.p);
            ComposableSingletons$GenericBottomSheetKt.f65882a.getClass();
            IconButtonKt.a(function2, modifierB, false, null, null, ComposableSingletons$GenericBottomSheetKt.f65883b, gapComposerH, ((i3 >> 18) & 14) | 1572864, 60);
            if (str == null) {
                gapComposerH.L(77158851);
                gapComposerH.Z(false);
                str5 = "GenericBottomSheetComposable";
                z = false;
            } else {
                str5 = "GenericBottomSheetComposable";
                TextKt.c(str, PaddingKt.m(n00.i(gapComposerH, 77158852, "GenericBottomSheetComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                z = false;
                gapComposerH.Z(false);
            }
            String str7 = str5;
            GapComposer gapComposer = gapComposerH;
            TextKt.c(str2, PaddingKt.m(new DTFunctionNameModifier(str7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, (i3 >> 3) & 14, 0, 131068);
            gapComposerH = gapComposer;
            if (str3 == null) {
                gapComposerH.L(77655688);
                gapComposerH.Z(z);
                z2 = z;
                str6 = str7;
            } else {
                gapComposerH.L(77655689);
                z2 = z;
                str6 = str7;
                LVButtonKt.b((i3 << 15) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d(str7, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, str3, function0, false, false, false);
                gapComposerH.Z(z2);
            }
            if (str4 == null) {
                gapComposerH = gapComposerH;
                gapComposerH.L(78055526);
                gapComposerH.Z(z2);
            } else {
                gapComposerH = gapComposerH;
                gapComposerH.L(78055527);
                GapComposer gapComposer2 = gapComposerH;
                LVButtonKt.b((i3 << 12) & 1879048192, 504, gapComposer2, PaddingKt.m(tr.d(str6, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, str4, function1, false, false, false);
                gapComposerH = gapComposer2;
                gapComposerH.Z(z2);
            }
            cj.x(new DTFunctionNameModifier(str6), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(this, str, str2, str3, str4, function0, function1, function2, i2);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseBottomSheet, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(519719931, true, new v00(this, 0)));
        return composeView;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            setCancelable(arguments.getBoolean("KEY_CANCELLABLE"));
        }
    }
}

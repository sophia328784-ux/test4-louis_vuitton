package com.vuitton.android.presentation.screen.repairs.components;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import defpackage.kf;
import defpackage.kj0;
import defpackage.qd;
import defpackage.r;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KFunction;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailAddressBookComposableKt {
    public static final void a(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, String str, Function1 function1, Function1 function2, Function0 function0, Composer composer, int i2) {
        distantRepairAssessmentViewModel.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1106195301);
        int i3 = i2 | (gapComposerH.K(distantRepairAssessmentViewModel) ? 4 : 2) | (gapComposerH.K(str != null ? new CareServiceTransactionIdUiModel(str) : null) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(distantRepairAssessmentViewModel.getH(), gapComposerH);
            if (((AssessmentViewState) mutableStateB.getF10755b()).f57363j) {
                gapComposerH.L(-619464692);
                b(str, function0, gapComposerH, ((i3 >> 9) & 112) | ((i3 >> 3) & 14));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-619276584);
                AssessmentViewState assessmentViewState = (AssessmentViewState) mutableStateB.getF10755b();
                boolean z = (i3 & 14) == 4;
                Object objX = gapComposerH.x();
                if (z || objX == Composer.Companion.f7939a) {
                    RepairDetailAddressBookComposableKt$RepairDetailAddressBookComposable$1$1 repairDetailAddressBookComposableKt$RepairDetailAddressBookComposable$1$1 = new RepairDetailAddressBookComposableKt$RepairDetailAddressBookComposable$1$1(1, distantRepairAssessmentViewModel, DistantRepairAssessmentViewModel.class, "setSelectedAddressById", "setSelectedAddressById(Ljava/lang/String;)V", 0);
                    gapComposerH.q(repairDetailAddressBookComposableKt$RepairDetailAddressBookComposable$1$1);
                    objX = repairDetailAddressBookComposableKt$RepairDetailAddressBookComposable$1$1;
                }
                c(assessmentViewState, str, function1, function2, (Function1) ((KFunction) objX), function0, gapComposerH, (i3 & 8176) | ((i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(distantRepairAssessmentViewModel, str, function1, function2, function0, i2);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1853738840);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str != null ? new CareServiceTransactionIdUiModel(str) : null) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-324775068, new qd(15, str, function0), gapComposerH);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableSingletons$RepairDetailAddressBookComposableKt.f63628a.getClass();
            gapComposer = gapComposerH;
            i4 = 2;
            ScaffoldKt.a(null, composableLambdaImplB, null, null, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$RepairDetailAddressBookComposableKt.f63629b, gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            i4 = 2;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kf(str, function0, i2, i4);
        }
    }

    public static final void c(AssessmentViewState assessmentViewState, String str, Function1 function1, Function1 function2, Function1 function3, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        assessmentViewState.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(763719091);
        int i3 = (gapComposerH.y(assessmentViewState) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str != null ? new CareServiceTransactionIdUiModel(str) : null) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2092920183, new qd(14, str, function0), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-85342590, new r((Object) assessmentViewState, (Object) function3, (Object) function1, (Object) function2, 27), gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(assessmentViewState, str, function1, function2, function3, function0, i2);
        }
    }
}

package com.vuitton.android.presentation.screen.repairs.cancellationreasons.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import defpackage.b3;
import defpackage.f0;
import defpackage.g1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CancellationReasonsScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63621a;

        static {
            int[] iArr = new int[RepairStatusUiModel.values().length];
            try {
                iArr[RepairStatusUiModel.PRELIMINARY_ASSESSMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f63621a = iArr;
        }
    }

    public static final void a(Function2 function2, CancellationReasonsViewState cancellationReasonsViewState, RepairStatusUiModel repairStatusUiModel, Function1 function1, Function0 function0, Composer composer, int i2) {
        Function2 function3;
        int i3;
        GapComposer gapComposer;
        function2.getClass();
        cancellationReasonsViewState.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-39086779);
        if ((i2 & 6) == 0) {
            function3 = function2;
            i3 = (gapComposerH.y(function3) ? 4 : 2) | i2;
        } else {
            function3 = function2;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(cancellationReasonsViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(repairStatusUiModel == null ? -1 : repairStatusUiModel.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function3, ComposableLambdaKt.b(-1702597664, new f0(cancellationReasonsViewState, function0, 24), gapComposerH), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(2054776278, new g1(repairStatusUiModel, cancellationReasonsViewState, function1, 6), gapComposerH), gapComposer, ((i3 << 3) & 112) | 805306752, 505);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(function2, cancellationReasonsViewState, repairStatusUiModel, function1, function0, i2);
        }
    }
}

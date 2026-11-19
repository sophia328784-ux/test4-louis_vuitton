package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.om;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;", "", "<init>", "()V", "GreenDot", "RedDot", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVButtonGroupIndicator {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$GreenDot;", "Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GreenDot extends LVButtonGroupIndicator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GreenDot f48452a = new GreenDot();

        @Override // com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator
        public final void a(Composer composer, int i2) {
            GapComposer gapComposerH = composer.h(120558970);
            int i3 = i2 & 1;
            if (gapComposerH.p(i3, i3 != 0)) {
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Content");
                Dp.Companion companion = Dp.f11004c;
                BoxKt.a(BackgroundKt.b(ClipKt.a(SizeKt.o(dTFunctionNameModifier, 8.0f), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.c(gapComposerH).f48361b.w, RectangleShapeKt.f8913a), gapComposerH, 0);
            } else {
                gapComposerH.D();
            }
            RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new om(this, i2, 2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator$RedDot;", "Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RedDot extends LVButtonGroupIndicator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RedDot f48453a = new RedDot();

        @Override // com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator
        public final void a(Composer composer, int i2) {
            GapComposer gapComposerH = composer.h(-757842644);
            int i3 = i2 & 1;
            if (gapComposerH.p(i3, i3 != 0)) {
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Content");
                Dp.Companion companion = Dp.f11004c;
                BoxKt.a(BorderKt.a(SizeKt.o(dTFunctionNameModifier, 8.0f), 1.5f, LVAppDesignKitTheme.c(gapComposerH).f48361b.x, RoundedCornerShapeKt.f5846a), gapComposerH, 0);
            } else {
                gapComposerH.D();
            }
            RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new om(this, i2, 3);
            }
        }
    }

    public abstract void a(Composer composer, int i2);
}

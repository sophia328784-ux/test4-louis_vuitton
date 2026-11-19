package com.vuitton.android.presentation.compose.components;

import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.DatePickerDialog_androidKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DatePickerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.d3;
import defpackage.j8;
import defpackage.kw;
import defpackage.rv;
import java.time.Year;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVDatePickerKt {
    public static final void a(Modifier modifier, Long l, boolean z, Function1 function1, Function0 function0, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVDatePicker");
        }
        Modifier modifier2 = modifier;
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1445172049);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(l) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DatePickerState datePickerStateP = DatePickerKt.p(l, z ? new IntRange(DatePickerDefaults.f6761b.f71951b, Year.now().getValue()) : DatePickerDefaults.f6761b, z ? new LVDatePickerKt$LVDatePicker$datePickerState$1() : DatePickerDefaults.f6762c, gapComposerH, (i3 >> 3) & 14);
            DatePickerDialog_androidKt.a(function0, ComposableLambdaKt.b(-1619139875, new rv(function1, datePickerStateP, function0, 14), gapComposerH), modifier2, ComposableLambdaKt.b(951219099, new kw(function0, 7), gapComposerH), null, null, null, ComposableLambdaKt.b(-1980378138, new d3(datePickerStateP, 25), gapComposerH), gapComposerH, ((i3 >> 12) & 14) | 100666416 | ((i3 << 6) & 896));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifier2, l, z, function1, function0, i2, 6);
        }
    }
}

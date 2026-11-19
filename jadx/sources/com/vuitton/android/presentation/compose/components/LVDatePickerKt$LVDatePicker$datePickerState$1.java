package com.vuitton.android.presentation.compose.components;

import androidx.compose.material3.SelectableDates;
import java.time.Instant;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/compose/components/LVDatePickerKt$LVDatePicker$datePickerState$1", "Landroidx/compose/material3/SelectableDates;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVDatePickerKt$LVDatePicker$datePickerState$1 implements SelectableDates {
    @Override // androidx.compose.material3.SelectableDates
    public final boolean a(long j2) {
        return j2 <= Instant.now().toEpochMilli();
    }
}

package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.unit.Density;
import defpackage.zy0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class TopWithFooter implements Arrangement.Vertical {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TopWithFooter f60174a = new TopWithFooter();

    @Override // androidx.compose.foundation.layout.Arrangement.Vertical
    public final void b(Density density, int i2, int[] iArr, int[] iArr2) {
        density.getClass();
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < length) {
            int i6 = iArr[i3];
            iArr2[i5] = i4;
            i4 += i6;
            i3++;
            i5++;
        }
        if (i4 < i2) {
            int length2 = iArr2.length - 1;
            if (iArr.length != 0) {
                iArr2[length2] = i2 - iArr[iArr.length - 1];
            } else {
                zy0.c("Array is empty.");
            }
        }
    }
}

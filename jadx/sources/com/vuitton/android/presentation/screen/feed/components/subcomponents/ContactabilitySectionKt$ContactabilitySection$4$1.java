package com.vuitton.android.presentation.screen.feed.components.subcomponents;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.zd;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final class ContactabilitySectionKt$ContactabilitySection$4$1 implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ContactabilitySectionKt$ContactabilitySection$4$1 f57895a = new ContactabilitySectionKt$ContactabilitySection$4$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        measureScope.getClass();
        list.getClass();
        Measurable measurable = (Measurable) list.get(0);
        Measurable measurable2 = (Measurable) list.get(1);
        Placeable placeableT = measurable.T(j2);
        Placeable placeableT2 = measurable2.T(Constraints.a(j2, 0, 0, 0, 0, 10));
        int i2 = placeableT.f9548b;
        return measureScope.V0(i2, (placeableT2.f9549c / 2) + placeableT.f9549c, MapsKt.c(), new zd(placeableT, i2, placeableT2, 2));
    }
}

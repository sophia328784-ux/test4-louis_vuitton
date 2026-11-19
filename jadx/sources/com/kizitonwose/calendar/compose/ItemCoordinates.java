package com.kizitonwose.calendar.compose;

import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/kizitonwose/calendar/compose/ItemCoordinates;", "", "Landroidx/compose/ui/layout/LayoutCoordinates;", "itemRootCoordinates", "firstDayCoordinates", "<init>", "(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)V", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ItemCoordinates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutCoordinates f35938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutCoordinates f35939b;

    public ItemCoordinates(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        layoutCoordinates.getClass();
        layoutCoordinates2.getClass();
        this.f35938a = layoutCoordinates;
        this.f35939b = layoutCoordinates2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ItemCoordinates)) {
            return false;
        }
        ItemCoordinates itemCoordinates = (ItemCoordinates) obj;
        return Intrinsics.c(this.f35938a, itemCoordinates.f35938a) && Intrinsics.c(this.f35939b, itemCoordinates.f35939b);
    }

    public final int hashCode() {
        return this.f35939b.hashCode() + (this.f35938a.hashCode() * 31);
    }

    public final String toString() {
        return "ItemCoordinates(itemRootCoordinates=" + this.f35938a + ", firstDayCoordinates=" + this.f35939b + ")";
    }
}

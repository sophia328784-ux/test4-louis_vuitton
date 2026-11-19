package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0081\b\u0018\u00002\u00020\u0001:\u0001\fB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;", "", "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;", "selected", "unselected", "Landroidx/compose/ui/graphics/Shape;", "radius", "Landroidx/compose/foundation/layout/PaddingValues;", "itemPadding", "componentPadding", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/PaddingValues;)V", "ItemConfiguration", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SegmentedControlConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ItemConfiguration f48691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ItemConfiguration f48692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Shape f48693c;
    public final PaddingValues d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PaddingValues f48694e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration$ItemConfiguration;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "textColor", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ItemConfiguration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f48695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f48696b;

        public ItemConfiguration(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
            this.f48695a = j2;
            this.f48696b = j3;
        }
    }

    public SegmentedControlConfiguration(ItemConfiguration itemConfiguration, ItemConfiguration itemConfiguration2, Shape shape, PaddingValues paddingValues, PaddingValues paddingValues2) {
        itemConfiguration.getClass();
        itemConfiguration2.getClass();
        shape.getClass();
        paddingValues.getClass();
        paddingValues2.getClass();
        this.f48691a = itemConfiguration;
        this.f48692b = itemConfiguration2;
        this.f48693c = shape;
        this.d = paddingValues;
        this.f48694e = paddingValues2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SegmentedControlConfiguration)) {
            return false;
        }
        SegmentedControlConfiguration segmentedControlConfiguration = (SegmentedControlConfiguration) obj;
        return Intrinsics.c(this.f48691a, segmentedControlConfiguration.f48691a) && Intrinsics.c(this.f48692b, segmentedControlConfiguration.f48692b) && Intrinsics.c(this.f48693c, segmentedControlConfiguration.f48693c) && Intrinsics.c(this.d, segmentedControlConfiguration.d) && Intrinsics.c(this.f48694e, segmentedControlConfiguration.f48694e);
    }

    public final int hashCode() {
        return this.f48694e.hashCode() + ((this.d.hashCode() + ((this.f48693c.hashCode() + ((this.f48692b.hashCode() + (this.f48691a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SegmentedControlConfiguration(selected=" + this.f48691a + ", unselected=" + this.f48692b + ", radius=" + this.f48693c + ", itemPadding=" + this.d + ", componentPadding=" + this.f48694e + ")";
    }
}

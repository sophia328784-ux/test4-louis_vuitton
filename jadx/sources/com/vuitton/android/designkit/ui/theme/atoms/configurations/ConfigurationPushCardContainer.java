package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContainer;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "Landroidx/compose/ui/graphics/Shape;", "shape", "<init>", "(JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationPushCardContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Shape f48566b;

    public ConfigurationPushCardContainer(long j2, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        shape.getClass();
        this.f48565a = j2;
        this.f48566b = shape;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationPushCardContainer)) {
            return false;
        }
        ConfigurationPushCardContainer configurationPushCardContainer = (ConfigurationPushCardContainer) obj;
        return Color.c(this.f48565a, configurationPushCardContainer.f48565a) && this.f48566b.equals(configurationPushCardContainer.f48566b);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f48566b.hashCode() + (Long.hashCode(this.f48565a) * 31);
    }

    public final String toString() {
        return "ConfigurationPushCardContainer(backgroundColor=" + Color.i(this.f48565a) + ", shape=" + this.f48566b + ")";
    }
}

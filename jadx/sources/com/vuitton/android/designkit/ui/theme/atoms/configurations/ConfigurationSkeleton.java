package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.animation.core.Easing;
import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;", "", "Landroidx/compose/ui/graphics/Color;", "strongColor", "softColor", "", "animationDelay", "animationDuration", "Landroidx/compose/animation/core/Easing;", "animationEasing", "<init>", "(JJIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationSkeleton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f48581c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Easing f48582e;

    public ConfigurationSkeleton(long j2, long j3, int i2, int i3, Easing easing, DefaultConstructorMarker defaultConstructorMarker) {
        easing.getClass();
        this.f48579a = j2;
        this.f48580b = j3;
        this.f48581c = i2;
        this.d = i3;
        this.f48582e = easing;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationSkeleton)) {
            return false;
        }
        ConfigurationSkeleton configurationSkeleton = (ConfigurationSkeleton) obj;
        return Color.c(this.f48579a, configurationSkeleton.f48579a) && Color.c(this.f48580b, configurationSkeleton.f48580b) && this.f48581c == configurationSkeleton.f48581c && this.d == configurationSkeleton.d && this.f48582e.equals(configurationSkeleton.f48582e);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f48582e.hashCode() + tr.b(this.d, tr.b(this.f48581c, fc.a(Long.hashCode(this.f48579a) * 31, 31, this.f48580b), 31), 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ConfigurationSkeleton(strongColor=", Color.i(this.f48579a), ", softColor=", Color.i(this.f48580b), ", animationDelay=");
        fc.x(this.f48581c, this.d, ", animationDuration=", ", animationEasing=", sbS);
        sbS.append(this.f48582e);
        sbS.append(")");
        return sbS.toString();
    }
}

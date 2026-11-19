package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.material3.RippleConfiguration;
import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;", "", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "contentColor", "subtitleContentColor", "Landroidx/compose/material3/RippleConfiguration;", "rippleConfiguration", "<init>", "(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class MediumTopBarConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48759c;
    public final RippleConfiguration d;

    public MediumTopBarConfig(long j2, long j3, long j4, RippleConfiguration rippleConfiguration, DefaultConstructorMarker defaultConstructorMarker) {
        rippleConfiguration.getClass();
        this.f48757a = j2;
        this.f48758b = j3;
        this.f48759c = j4;
        this.d = rippleConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediumTopBarConfig)) {
            return false;
        }
        MediumTopBarConfig mediumTopBarConfig = (MediumTopBarConfig) obj;
        return Color.c(this.f48757a, mediumTopBarConfig.f48757a) && Color.c(this.f48758b, mediumTopBarConfig.f48758b) && Color.c(this.f48759c, mediumTopBarConfig.f48759c) && this.d.equals(mediumTopBarConfig.d);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.d.hashCode() + fc.a(fc.a(Long.hashCode(this.f48757a) * 31, 31, this.f48758b), 31, this.f48759c);
    }

    public final String toString() {
        String strI = Color.i(this.f48757a);
        String strI2 = Color.i(this.f48758b);
        String strI3 = Color.i(this.f48759c);
        StringBuilder sbS = fc.s("MediumTopBarConfig(backgroundColor=", strI, ", contentColor=", strI2, ", subtitleContentColor=");
        sbS.append(strI3);
        sbS.append(", rippleConfiguration=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}

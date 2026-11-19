package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;", "", "Landroidx/compose/ui/graphics/Color;", "contentColor", "", "isFilled", "<init>", "(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationColorDot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f48549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f48550b;

    public ConfigurationColorDot(long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48549a = j2;
        this.f48550b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationColorDot)) {
            return false;
        }
        ConfigurationColorDot configurationColorDot = (ConfigurationColorDot) obj;
        return Color.c(this.f48549a, configurationColorDot.f48549a) && this.f48550b == configurationColorDot.f48550b;
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Boolean.hashCode(this.f48550b) + (Long.hashCode(this.f48549a) * 31);
    }

    public final String toString() {
        return d21.m("ConfigurationColorDot(contentColor=", Color.i(this.f48549a), ", isFilled=", ")", this.f48550b);
    }
}

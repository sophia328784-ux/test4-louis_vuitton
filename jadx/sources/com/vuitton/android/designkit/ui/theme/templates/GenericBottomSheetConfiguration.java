package com.vuitton.android.designkit.ui.theme.templates;

import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;", "", "Landroidx/compose/ui/text/style/TextAlign;", "textAlignment", "Landroidx/compose/ui/unit/Dp;", "linkTopPadding", "<init>", "(IFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class GenericBottomSheetConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f48793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f48794b;

    public GenericBottomSheetConfiguration(int i2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f48793a = i2;
        this.f48794b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GenericBottomSheetConfiguration)) {
            return false;
        }
        GenericBottomSheetConfiguration genericBottomSheetConfiguration = (GenericBottomSheetConfiguration) obj;
        int i2 = genericBottomSheetConfiguration.f48793a;
        TextAlign.Companion companion = TextAlign.f10959b;
        return this.f48793a == i2 && Dp.b(this.f48794b, genericBottomSheetConfiguration.f48794b);
    }

    public final int hashCode() {
        TextAlign.Companion companion = TextAlign.f10959b;
        int iHashCode = Integer.hashCode(this.f48793a) * 31;
        Dp.Companion companion2 = Dp.f11004c;
        return Float.hashCode(this.f48794b) + iHashCode;
    }

    public final String toString() {
        return d21.l("GenericBottomSheetConfiguration(textAlignment=", TextAlign.a(this.f48793a), ", linkTopPadding=", Dp.c(this.f48794b), ")");
    }
}

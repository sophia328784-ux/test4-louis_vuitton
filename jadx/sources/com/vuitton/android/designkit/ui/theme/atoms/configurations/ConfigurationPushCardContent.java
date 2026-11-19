package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;", "type", "", "titleMaxLines", "Landroidx/compose/ui/text/TextStyle;", "titleStyle", "descriptionStyle", "Landroidx/compose/ui/graphics/Color;", "titleColor", "descriptionColor", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardType;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationPushCardContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationPushCardType f48567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f48568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f48569c;
    public final TextStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48570e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f48571f;

    public ConfigurationPushCardContent(ConfigurationPushCardType configurationPushCardType, int i2, TextStyle textStyle, TextStyle textStyle2, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        configurationPushCardType.getClass();
        textStyle.getClass();
        textStyle2.getClass();
        this.f48567a = configurationPushCardType;
        this.f48568b = i2;
        this.f48569c = textStyle;
        this.d = textStyle2;
        this.f48570e = j2;
        this.f48571f = j3;
    }

    public static ConfigurationPushCardContent a(ConfigurationPushCardContent configurationPushCardContent, TextStyle textStyle, int i2) {
        ConfigurationPushCardType configurationPushCardType = configurationPushCardContent.f48567a;
        if ((i2 & 4) != 0) {
            textStyle = configurationPushCardContent.f48569c;
        }
        TextStyle textStyle2 = textStyle;
        TextStyle textStyle3 = configurationPushCardContent.d;
        long j2 = configurationPushCardContent.f48570e;
        long j3 = configurationPushCardContent.f48571f;
        configurationPushCardContent.getClass();
        configurationPushCardType.getClass();
        textStyle2.getClass();
        textStyle3.getClass();
        return new ConfigurationPushCardContent(configurationPushCardType, 2, textStyle2, textStyle3, j2, j3, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationPushCardContent)) {
            return false;
        }
        ConfigurationPushCardContent configurationPushCardContent = (ConfigurationPushCardContent) obj;
        return this.f48567a == configurationPushCardContent.f48567a && this.f48568b == configurationPushCardContent.f48568b && Intrinsics.c(this.f48569c, configurationPushCardContent.f48569c) && Intrinsics.c(this.d, configurationPushCardContent.d) && Color.c(this.f48570e, configurationPushCardContent.f48570e) && Color.c(this.f48571f, configurationPushCardContent.f48571f);
    }

    public final int hashCode() {
        int iE = pq0.e(this.d, pq0.e(this.f48569c, tr.b(this.f48568b, this.f48567a.hashCode() * 31, 31), 31), 31);
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f48571f) + fc.a(iE, 31, this.f48570e);
    }

    public final String toString() {
        String strI = Color.i(this.f48570e);
        String strI2 = Color.i(this.f48571f);
        StringBuilder sb = new StringBuilder("ConfigurationPushCardContent(type=");
        sb.append(this.f48567a);
        sb.append(", titleMaxLines=");
        sb.append(this.f48568b);
        sb.append(", titleStyle=");
        sb.append(this.f48569c);
        sb.append(", descriptionStyle=");
        sb.append(this.d);
        sb.append(", titleColor=");
        return tr.l(sb, strI, ", descriptionColor=", strI2, ")");
    }

    public /* synthetic */ ConfigurationPushCardContent(ConfigurationPushCardType configurationPushCardType, int i2, TextStyle textStyle, TextStyle textStyle2, long j2, long j3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(configurationPushCardType, (i3 & 2) != 0 ? 1 : i2, textStyle, textStyle2, j2, j3, null);
    }
}

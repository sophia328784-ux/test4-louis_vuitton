package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.ui.graphics.Color;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;", "", "", "leadingIcon", "Landroidx/compose/ui/graphics/Color;", "leadingIconTint", "dismissIconTint", "surfaceColor", "contentColor", "borderColor", "Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;", "colorScheme", "<init>", "(IJJJJJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SnackbarConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f48703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f48704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48705c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f48707f;
    public final LVColorScheme g;

    public SnackbarConfiguration(int i2, long j2, long j3, long j4, long j5, long j6, LVColorScheme lVColorScheme, DefaultConstructorMarker defaultConstructorMarker) {
        lVColorScheme.getClass();
        this.f48703a = i2;
        this.f48704b = j2;
        this.f48705c = j3;
        this.d = j4;
        this.f48706e = j5;
        this.f48707f = j6;
        this.g = lVColorScheme;
    }

    public static SnackbarConfiguration a(SnackbarConfiguration snackbarConfiguration, int i2, long j2) {
        return new SnackbarConfiguration(i2, j2, snackbarConfiguration.f48705c, snackbarConfiguration.d, snackbarConfiguration.f48706e, snackbarConfiguration.f48707f, snackbarConfiguration.g, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SnackbarConfiguration)) {
            return false;
        }
        SnackbarConfiguration snackbarConfiguration = (SnackbarConfiguration) obj;
        return this.f48703a == snackbarConfiguration.f48703a && Color.c(this.f48704b, snackbarConfiguration.f48704b) && Color.c(this.f48705c, snackbarConfiguration.f48705c) && Color.c(this.d, snackbarConfiguration.d) && Color.c(this.f48706e, snackbarConfiguration.f48706e) && Color.c(this.f48707f, snackbarConfiguration.f48707f) && this.g == snackbarConfiguration.g;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f48703a) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.g.hashCode() + fc.a(fc.a(fc.a(fc.a(fc.a(iHashCode, 31, this.f48704b), 31, this.f48705c), 31, this.d), 31, this.f48706e), 31, this.f48707f);
    }

    public final String toString() {
        String strI = Color.i(this.f48704b);
        String strI2 = Color.i(this.f48705c);
        String strI3 = Color.i(this.d);
        String strI4 = Color.i(this.f48706e);
        String strI5 = Color.i(this.f48707f);
        StringBuilder sb = new StringBuilder("SnackbarConfiguration(leadingIcon=");
        sb.append(this.f48703a);
        sb.append(", leadingIconTint=");
        sb.append(strI);
        sb.append(", dismissIconTint=");
        cj.C(sb, strI2, ", surfaceColor=", strI3, ", contentColor=");
        cj.C(sb, strI4, ", borderColor=", strI5, ", colorScheme=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }
}

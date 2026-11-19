package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;", "primary", "primaryInvert", "primarySmall", "primarySmallInvert", "secondary", "secondaryInvert", "secondarySmall", "secondarySmallInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVButtonConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationButton f48446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationButton f48447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationButton f48448c;
    public final ConfigurationButton d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConfigurationButton f48449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConfigurationButton f48450f;
    public final ConfigurationButton g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConfigurationButton f48451h;

    public LVButtonConfigs(ConfigurationButton configurationButton, ConfigurationButton configurationButton2, ConfigurationButton configurationButton3, ConfigurationButton configurationButton4, ConfigurationButton configurationButton5, ConfigurationButton configurationButton6, ConfigurationButton configurationButton7, ConfigurationButton configurationButton8) {
        configurationButton.getClass();
        configurationButton2.getClass();
        configurationButton3.getClass();
        configurationButton4.getClass();
        configurationButton5.getClass();
        configurationButton6.getClass();
        configurationButton7.getClass();
        configurationButton8.getClass();
        this.f48446a = configurationButton;
        this.f48447b = configurationButton2;
        this.f48448c = configurationButton3;
        this.d = configurationButton4;
        this.f48449e = configurationButton5;
        this.f48450f = configurationButton6;
        this.g = configurationButton7;
        this.f48451h = configurationButton8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVButtonConfigs)) {
            return false;
        }
        LVButtonConfigs lVButtonConfigs = (LVButtonConfigs) obj;
        return Intrinsics.c(this.f48446a, lVButtonConfigs.f48446a) && Intrinsics.c(this.f48447b, lVButtonConfigs.f48447b) && Intrinsics.c(this.f48448c, lVButtonConfigs.f48448c) && Intrinsics.c(this.d, lVButtonConfigs.d) && Intrinsics.c(this.f48449e, lVButtonConfigs.f48449e) && Intrinsics.c(this.f48450f, lVButtonConfigs.f48450f) && Intrinsics.c(this.g, lVButtonConfigs.g) && Intrinsics.c(this.f48451h, lVButtonConfigs.f48451h);
    }

    public final int hashCode() {
        return this.f48451h.hashCode() + ((this.g.hashCode() + ((this.f48450f.hashCode() + ((this.f48449e.hashCode() + ((this.d.hashCode() + ((this.f48448c.hashCode() + ((this.f48447b.hashCode() + (this.f48446a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVButtonConfigs(primary=" + this.f48446a + ", primaryInvert=" + this.f48447b + ", primarySmall=" + this.f48448c + ", primarySmallInvert=" + this.d + ", secondary=" + this.f48449e + ", secondaryInvert=" + this.f48450f + ", secondarySmall=" + this.g + ", secondarySmallInvert=" + this.f48451h + ")";
    }
}

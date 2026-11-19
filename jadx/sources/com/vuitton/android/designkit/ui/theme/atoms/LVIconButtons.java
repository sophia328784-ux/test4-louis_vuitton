package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;", "primary", "primaryInvert", "secondary", "secondaryInvert", "primaryFloating", "primaryFloatingInvert", "secondaryOpaque", "secondaryOpaqueInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVIconButtons {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationIconButton f48477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationIconButton f48478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationIconButton f48479c;
    public final ConfigurationIconButton d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConfigurationIconButton f48480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConfigurationIconButton f48481f;
    public final ConfigurationIconButton g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConfigurationIconButton f48482h;

    public LVIconButtons(ConfigurationIconButton configurationIconButton, ConfigurationIconButton configurationIconButton2, ConfigurationIconButton configurationIconButton3, ConfigurationIconButton configurationIconButton4, ConfigurationIconButton configurationIconButton5, ConfigurationIconButton configurationIconButton6, ConfigurationIconButton configurationIconButton7, ConfigurationIconButton configurationIconButton8) {
        configurationIconButton.getClass();
        configurationIconButton2.getClass();
        configurationIconButton3.getClass();
        configurationIconButton4.getClass();
        configurationIconButton5.getClass();
        configurationIconButton6.getClass();
        configurationIconButton7.getClass();
        configurationIconButton8.getClass();
        this.f48477a = configurationIconButton;
        this.f48478b = configurationIconButton2;
        this.f48479c = configurationIconButton3;
        this.d = configurationIconButton4;
        this.f48480e = configurationIconButton5;
        this.f48481f = configurationIconButton6;
        this.g = configurationIconButton7;
        this.f48482h = configurationIconButton8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVIconButtons)) {
            return false;
        }
        LVIconButtons lVIconButtons = (LVIconButtons) obj;
        return Intrinsics.c(this.f48477a, lVIconButtons.f48477a) && Intrinsics.c(this.f48478b, lVIconButtons.f48478b) && Intrinsics.c(this.f48479c, lVIconButtons.f48479c) && Intrinsics.c(this.d, lVIconButtons.d) && Intrinsics.c(this.f48480e, lVIconButtons.f48480e) && Intrinsics.c(this.f48481f, lVIconButtons.f48481f) && Intrinsics.c(this.g, lVIconButtons.g) && Intrinsics.c(this.f48482h, lVIconButtons.f48482h);
    }

    public final int hashCode() {
        return this.f48482h.hashCode() + ((this.g.hashCode() + ((this.f48481f.hashCode() + ((this.f48480e.hashCode() + ((this.d.hashCode() + ((this.f48479c.hashCode() + ((this.f48478b.hashCode() + (this.f48477a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVIconButtons(primary=" + this.f48477a + ", primaryInvert=" + this.f48478b + ", secondary=" + this.f48479c + ", secondaryInvert=" + this.d + ", primaryFloating=" + this.f48480e + ", primaryFloatingInvert=" + this.f48481f + ", secondaryOpaque=" + this.g + ", secondaryOpaqueInvert=" + this.f48482h + ")";
    }
}

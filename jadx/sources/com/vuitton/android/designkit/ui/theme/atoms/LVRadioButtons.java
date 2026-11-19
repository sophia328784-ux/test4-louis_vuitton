package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationRadioButton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtons;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;", "primary", "primaryInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVRadioButtons {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationRadioButton f48500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationRadioButton f48501b;

    public LVRadioButtons(ConfigurationRadioButton configurationRadioButton, ConfigurationRadioButton configurationRadioButton2) {
        configurationRadioButton.getClass();
        configurationRadioButton2.getClass();
        this.f48500a = configurationRadioButton;
        this.f48501b = configurationRadioButton2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVRadioButtons)) {
            return false;
        }
        LVRadioButtons lVRadioButtons = (LVRadioButtons) obj;
        return Intrinsics.c(this.f48500a, lVRadioButtons.f48500a) && Intrinsics.c(this.f48501b, lVRadioButtons.f48501b);
    }

    public final int hashCode() {
        return this.f48501b.hashCode() + (this.f48500a.hashCode() * 31);
    }

    public final String toString() {
        return "LVRadioButtons(primary=" + this.f48500a + ", primaryInvert=" + this.f48501b + ")";
    }
}

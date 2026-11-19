package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTagButton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagButtons;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;", "primary", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTagButton;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVTagButtons {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationTagButton f48512a;

    public LVTagButtons(ConfigurationTagButton configurationTagButton) {
        configurationTagButton.getClass();
        this.f48512a = configurationTagButton;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LVTagButtons) && Intrinsics.c(this.f48512a, ((LVTagButtons) obj).f48512a);
    }

    public final int hashCode() {
        return this.f48512a.hashCode();
    }

    public final String toString() {
        return "LVTagButtons(primary=" + this.f48512a + ")";
    }
}

package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationCheckbox;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxes;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;", "primary", "primaryInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVCheckboxes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationCheckbox f48462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationCheckbox f48463b;

    public LVCheckboxes(ConfigurationCheckbox configurationCheckbox, ConfigurationCheckbox configurationCheckbox2) {
        configurationCheckbox.getClass();
        configurationCheckbox2.getClass();
        this.f48462a = configurationCheckbox;
        this.f48463b = configurationCheckbox2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVCheckboxes)) {
            return false;
        }
        LVCheckboxes lVCheckboxes = (LVCheckboxes) obj;
        return Intrinsics.c(this.f48462a, lVCheckboxes.f48462a) && Intrinsics.c(this.f48463b, lVCheckboxes.f48463b);
    }

    public final int hashCode() {
        return this.f48463b.hashCode() + (this.f48462a.hashCode() * 31);
    }

    public final String toString() {
        return "LVCheckboxes(primary=" + this.f48462a + ", primaryInvert=" + this.f48463b + ")";
    }
}

package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSwitch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitches;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;", "primary", "primaryInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVSwitches {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationSwitch f48509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationSwitch f48510b;

    public LVSwitches(ConfigurationSwitch configurationSwitch, ConfigurationSwitch configurationSwitch2) {
        configurationSwitch.getClass();
        configurationSwitch2.getClass();
        this.f48509a = configurationSwitch;
        this.f48510b = configurationSwitch2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVSwitches)) {
            return false;
        }
        LVSwitches lVSwitches = (LVSwitches) obj;
        return Intrinsics.c(this.f48509a, lVSwitches.f48509a) && Intrinsics.c(this.f48510b, lVSwitches.f48510b);
    }

    public final int hashCode() {
        return this.f48510b.hashCode() + (this.f48509a.hashCode() * 31);
    }

    public final String toString() {
        return "LVSwitches(primary=" + this.f48509a + ", primaryInvert=" + this.f48510b + ")";
    }
}

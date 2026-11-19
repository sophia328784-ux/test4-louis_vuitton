package com.vuitton.android.designkit.ui.theme.molecules;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardContentConfigs;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;", "content", "service", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationPushCardContent;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVPushCardContentConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationPushCardContent f48651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationPushCardContent f48652b;

    public LVPushCardContentConfigs(ConfigurationPushCardContent configurationPushCardContent, ConfigurationPushCardContent configurationPushCardContent2) {
        configurationPushCardContent.getClass();
        configurationPushCardContent2.getClass();
        this.f48651a = configurationPushCardContent;
        this.f48652b = configurationPushCardContent2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVPushCardContentConfigs)) {
            return false;
        }
        LVPushCardContentConfigs lVPushCardContentConfigs = (LVPushCardContentConfigs) obj;
        return Intrinsics.c(this.f48651a, lVPushCardContentConfigs.f48651a) && Intrinsics.c(this.f48652b, lVPushCardContentConfigs.f48652b);
    }

    public final int hashCode() {
        return this.f48652b.hashCode() + (this.f48651a.hashCode() * 31);
    }

    public final String toString() {
        return "LVPushCardContentConfigs(content=" + this.f48651a + ", service=" + this.f48652b + ")";
    }
}

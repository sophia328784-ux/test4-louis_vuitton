package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagConfigs;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;", "primary", "secondary", "primaryInvert", "secondaryInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVTagConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationTag f48513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationTag f48514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationTag f48515c;
    public final ConfigurationTag d;

    public LVTagConfigs(ConfigurationTag configurationTag, ConfigurationTag configurationTag2, ConfigurationTag configurationTag3, ConfigurationTag configurationTag4) {
        configurationTag.getClass();
        configurationTag2.getClass();
        configurationTag3.getClass();
        configurationTag4.getClass();
        this.f48513a = configurationTag;
        this.f48514b = configurationTag2;
        this.f48515c = configurationTag3;
        this.d = configurationTag4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVTagConfigs)) {
            return false;
        }
        LVTagConfigs lVTagConfigs = (LVTagConfigs) obj;
        return Intrinsics.c(this.f48513a, lVTagConfigs.f48513a) && Intrinsics.c(this.f48514b, lVTagConfigs.f48514b) && Intrinsics.c(this.f48515c, lVTagConfigs.f48515c) && Intrinsics.c(this.d, lVTagConfigs.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f48515c.hashCode() + ((this.f48514b.hashCode() + (this.f48513a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVTagConfigs(primary=" + this.f48513a + ", secondary=" + this.f48514b + ", primaryInvert=" + this.f48515c + ", secondaryInvert=" + this.d + ")";
    }
}

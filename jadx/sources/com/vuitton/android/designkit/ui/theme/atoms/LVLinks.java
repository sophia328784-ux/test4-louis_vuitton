package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0081\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;", "primary", "primaryInvert", "small", "smallInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVLinks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationLink f48487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationLink f48488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationLink f48489c;
    public final ConfigurationLink d;

    public LVLinks(ConfigurationLink configurationLink, ConfigurationLink configurationLink2, ConfigurationLink configurationLink3, ConfigurationLink configurationLink4) {
        configurationLink.getClass();
        configurationLink2.getClass();
        configurationLink3.getClass();
        configurationLink4.getClass();
        this.f48487a = configurationLink;
        this.f48488b = configurationLink2;
        this.f48489c = configurationLink3;
        this.d = configurationLink4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVLinks)) {
            return false;
        }
        LVLinks lVLinks = (LVLinks) obj;
        return Intrinsics.c(this.f48487a, lVLinks.f48487a) && Intrinsics.c(this.f48488b, lVLinks.f48488b) && Intrinsics.c(this.f48489c, lVLinks.f48489c) && Intrinsics.c(this.d, lVLinks.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f48489c.hashCode() + ((this.f48488b.hashCode() + (this.f48487a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVLinks(primary=" + this.f48487a + ", primaryInvert=" + this.f48488b + ", small=" + this.f48489c + ", smallInvert=" + this.d + ")";
    }
}

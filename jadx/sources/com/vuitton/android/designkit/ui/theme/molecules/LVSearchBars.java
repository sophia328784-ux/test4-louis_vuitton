package com.vuitton.android.designkit.ui.theme.molecules;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBars;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;", "searchBar", "searchBarInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSearchBar;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVSearchBars {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationSearchBar f48658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationSearchBar f48659b;

    public LVSearchBars(ConfigurationSearchBar configurationSearchBar, ConfigurationSearchBar configurationSearchBar2) {
        configurationSearchBar.getClass();
        configurationSearchBar2.getClass();
        this.f48658a = configurationSearchBar;
        this.f48659b = configurationSearchBar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVSearchBars)) {
            return false;
        }
        LVSearchBars lVSearchBars = (LVSearchBars) obj;
        return Intrinsics.c(this.f48658a, lVSearchBars.f48658a) && Intrinsics.c(this.f48659b, lVSearchBars.f48659b);
    }

    public final int hashCode() {
        return this.f48659b.hashCode() + (this.f48658a.hashCode() * 31);
    }

    public final String toString() {
        return "LVSearchBars(searchBar=" + this.f48658a + ", searchBarInvert=" + this.f48659b + ")";
    }
}

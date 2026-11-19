package com.vuitton.android.designkit.ui.theme.atoms;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconConfigs;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;", "Green", "Red", "Orange", "Grey", "RedOutline", "RedInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVColorDotIconConfigs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationColorDot f48464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationColorDot f48465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationColorDot f48466c;
    public final ConfigurationColorDot d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConfigurationColorDot f48467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConfigurationColorDot f48468f;

    public LVColorDotIconConfigs(ConfigurationColorDot configurationColorDot, ConfigurationColorDot configurationColorDot2, ConfigurationColorDot configurationColorDot3, ConfigurationColorDot configurationColorDot4, ConfigurationColorDot configurationColorDot5, ConfigurationColorDot configurationColorDot6) {
        configurationColorDot.getClass();
        configurationColorDot2.getClass();
        configurationColorDot3.getClass();
        configurationColorDot4.getClass();
        configurationColorDot5.getClass();
        configurationColorDot6.getClass();
        this.f48464a = configurationColorDot;
        this.f48465b = configurationColorDot2;
        this.f48466c = configurationColorDot3;
        this.d = configurationColorDot4;
        this.f48467e = configurationColorDot5;
        this.f48468f = configurationColorDot6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVColorDotIconConfigs)) {
            return false;
        }
        LVColorDotIconConfigs lVColorDotIconConfigs = (LVColorDotIconConfigs) obj;
        return Intrinsics.c(this.f48464a, lVColorDotIconConfigs.f48464a) && Intrinsics.c(this.f48465b, lVColorDotIconConfigs.f48465b) && Intrinsics.c(this.f48466c, lVColorDotIconConfigs.f48466c) && Intrinsics.c(this.d, lVColorDotIconConfigs.d) && Intrinsics.c(this.f48467e, lVColorDotIconConfigs.f48467e) && Intrinsics.c(this.f48468f, lVColorDotIconConfigs.f48468f);
    }

    public final int hashCode() {
        return this.f48468f.hashCode() + ((this.f48467e.hashCode() + ((this.d.hashCode() + ((this.f48466c.hashCode() + ((this.f48465b.hashCode() + (this.f48464a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVColorDotIconConfigs(Green=" + this.f48464a + ", Red=" + this.f48465b + ", Orange=" + this.f48466c + ", Grey=" + this.d + ", RedOutline=" + this.f48467e + ", RedInvert=" + this.f48468f + ")";
    }
}

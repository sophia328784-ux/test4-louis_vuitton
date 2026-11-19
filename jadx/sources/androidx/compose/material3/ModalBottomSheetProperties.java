package androidx.compose.material3;

import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u001d\b\u0016\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0007B'\b\u0016\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\nB7\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\rB\u0011\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u000eB\u001d\b\u0017\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u000fB-\b\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/material3/ModalBottomSheetProperties;", "", "<init>", "()V", "", "shouldDismissOnBackPress", "shouldDismissOnClickOutside", "(ZZ)V", "Landroidx/compose/ui/window/SecureFlagPolicy;", "securePolicy", "(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)V", "isAppearanceLightStatusBars", "isAppearanceLightNavigationBars", "(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V", "(Z)V", "(Landroidx/compose/ui/window/SecureFlagPolicy;Z)V", "(ZZLandroidx/compose/ui/window/SecureFlagPolicy;Z)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ModalBottomSheetProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecureFlagPolicy f7106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f7107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7108c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f7109e;

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, (i2 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? true : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModalBottomSheetProperties)) {
            return false;
        }
        ModalBottomSheetProperties modalBottomSheetProperties = (ModalBottomSheetProperties) obj;
        return this.f7106a == modalBottomSheetProperties.f7106a && Intrinsics.c(this.d, modalBottomSheetProperties.d) && Intrinsics.c(this.f7109e, modalBottomSheetProperties.f7109e) && this.f7108c == modalBottomSheetProperties.f7108c && this.f7107b == modalBottomSheetProperties.f7107b;
    }

    public final int hashCode() {
        int iB = o60.b(this.f7106a.hashCode() * 31, 31, this.f7107b);
        Boolean bool = this.d;
        int iHashCode = (iB + (bool != null ? bool.hashCode() : 0)) * 31;
        Boolean bool2 = this.f7109e;
        return Boolean.hashCode(this.f7108c) + ((iHashCode + (bool2 != null ? bool2.hashCode() : 0)) * 31);
    }

    public ModalBottomSheetProperties(boolean z, boolean z2) {
        this.f7106a = SecureFlagPolicy.Inherit;
        this.f7107b = z;
        this.f7108c = z2;
        this.f7109e = null;
        this.d = null;
    }

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? true : z2);
    }

    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? true : z2);
    }

    public ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, boolean z2) {
        this.f7106a = secureFlagPolicy;
        this.f7107b = z;
        this.f7108c = z2;
        this.f7109e = null;
        this.d = null;
    }

    public ModalBottomSheetProperties() {
        this.f7106a = SecureFlagPolicy.Inherit;
        this.f7107b = true;
        this.f7108c = true;
        this.d = null;
        this.f7109e = null;
    }

    public ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4) {
        this.f7107b = z3;
        this.f7108c = z4;
        this.f7106a = secureFlagPolicy;
        this.d = Boolean.valueOf(z);
        this.f7109e = Boolean.valueOf(z2);
    }

    @Deprecated
    public /* synthetic */ ModalBottomSheetProperties(boolean z) {
        this(z, true);
    }

    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 2) != 0 ? true : z);
    }

    @Deprecated
    public /* synthetic */ ModalBottomSheetProperties(SecureFlagPolicy secureFlagPolicy, boolean z) {
        this(secureFlagPolicy, z, true);
    }

    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, (i2 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 8) != 0 ? true : z3);
    }

    @Deprecated
    public /* synthetic */ ModalBottomSheetProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3) {
        this.f7107b = z3;
        this.f7108c = true;
        this.f7106a = secureFlagPolicy;
        this.d = Boolean.valueOf(z);
        this.f7109e = Boolean.valueOf(z2);
    }
}

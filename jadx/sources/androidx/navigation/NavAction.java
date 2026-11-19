package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavAction;", "", "", "destinationId", "Landroidx/navigation/NavOptions;", "navOptions", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "defaultArguments", "<init>", "(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NavOptions f18100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f18101c;

    public /* synthetic */ NavAction(int i2, NavOptions navOptions, Bundle bundle, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : navOptions, (i3 & 4) != 0 ? null : bundle);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavAction)) {
            return false;
        }
        NavAction navAction = (NavAction) obj;
        if (this.f18099a != navAction.f18099a || !Intrinsics.c(this.f18100b, navAction.f18100b)) {
            return false;
        }
        Bundle bundle = this.f18101c;
        Bundle bundle2 = navAction.f18101c;
        if (Intrinsics.c(bundle, bundle2)) {
            return true;
        }
        return (bundle == null || bundle2 == null || !SavedStateReader.b(bundle, bundle2)) ? false : true;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f18099a) * 31;
        NavOptions navOptions = this.f18100b;
        int iHashCode2 = iHashCode + (navOptions != null ? navOptions.hashCode() : 0);
        Bundle bundle = this.f18101c;
        if (bundle != null) {
            return SavedStateReader.c(bundle) + (iHashCode2 * 31);
        }
        return iHashCode2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NavAction(0x");
        sb.append(Integer.toHexString(this.f18099a));
        sb.append(")");
        if (this.f18100b != null) {
            sb.append(" navOptions=");
            sb.append(this.f18100b);
        }
        return sb.toString();
    }

    public NavAction(int i2, NavOptions navOptions) {
        this(i2, navOptions, null, 4, null);
    }

    public NavAction(int i2, NavOptions navOptions, Bundle bundle) {
        this.f18099a = i2;
        this.f18100b = navOptions;
        this.f18101c = bundle;
    }

    public NavAction(int i2) {
        this(i2, null, null, 6, null);
    }
}

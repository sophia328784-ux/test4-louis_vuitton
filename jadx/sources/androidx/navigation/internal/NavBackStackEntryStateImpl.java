package androidx.navigation.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavBackStackEntry;
import androidx.savedstate.SavedStateReader;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\fB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0015\b\u0010\u0012\n\u0010\n\u001a\u00060\bj\u0002`\t¢\u0006\u0004\b\u0006\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/navigation/internal/NavBackStackEntryStateImpl;", "", "Landroidx/navigation/NavBackStackEntry;", "entry", "", "destId", "<init>", "(Landroidx/navigation/NavBackStackEntry;I)V", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "state", "(Landroid/os/Bundle;)V", "Companion", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavBackStackEntryStateImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f18330c;
    public final Bundle d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;", "", "", "KEY_ID", "Ljava/lang/String;", "KEY_DESTINATION_ID", "KEY_ARGS", "KEY_SAVED_STATE", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public NavBackStackEntryStateImpl(NavBackStackEntry navBackStackEntry, int i2) {
        navBackStackEntry.getClass();
        this.f18328a = navBackStackEntry.g;
        this.f18329b = i2;
        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.f18117i;
        this.f18330c = navBackStackEntryImpl.a();
        MapsKt.c();
        Pair[] pairArr = new Pair[0];
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        this.d = bundleA;
        navBackStackEntryImpl.getClass();
        navBackStackEntryImpl.f18323h.b(bundleA);
    }

    public NavBackStackEntryStateImpl(Bundle bundle) {
        bundle.getClass();
        bundle.getClass();
        this.f18328a = SavedStateReader.k("nav-entry-state:id", bundle);
        this.f18329b = SavedStateReader.g("nav-entry-state:destination-id", bundle);
        this.f18330c = SavedStateReader.j("nav-entry-state:args", bundle);
        this.d = SavedStateReader.j("nav-entry-state:saved-state", bundle);
    }
}

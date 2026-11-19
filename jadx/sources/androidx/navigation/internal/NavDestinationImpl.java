package androidx.navigation.internal;

import android.net.Uri;
import android.os.Bundle;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDestination;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/internal/NavDestinationImpl;", "", "Landroidx/navigation/NavDestination;", "destination", "<init>", "(Landroidx/navigation/NavDestination;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavDestinationImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavDestination f18341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f18342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f18343c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f18345f;
    public Lazy g;

    public NavDestinationImpl(NavDestination navDestination) {
        navDestination.getClass();
        this.f18341a = navDestination;
        this.f18343c = new ArrayList();
        this.d = new LinkedHashMap();
    }

    public final NavDestination.DeepLinkMatch a(String str) {
        NavDeepLink navDeepLink;
        str.getClass();
        Lazy lazy = this.g;
        if (lazy == null || (navDeepLink = (NavDeepLink) lazy.getF71699b()) == null) {
            return null;
        }
        NavDestination.g.getClass();
        Uri uri = Uri.parse("android-app://androidx.navigation/".concat(str));
        uri.getClass();
        Bundle bundleD = navDeepLink.d(uri, this.d);
        if (bundleD == null) {
            return null;
        }
        return new NavDestination.DeepLinkMatch(this.f18341a, bundleD, navDeepLink.p, navDeepLink.b(uri), false, -1);
    }
}

package androidx.activity.compose.internal;

import androidx.activity.OnBackPressedDispatcher;
import androidx.navigationevent.NavigationEventDispatcher;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;", "", "Landroidx/navigationevent/NavigationEventDispatcher;", "navigationEventDispatcher", "Landroidx/activity/OnBackPressedDispatcher;", "onBackPressedDispatcher", "<init>", "(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BackHandlerDispatcherCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavigationEventDispatcher f727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnBackPressedDispatcher f728b;

    public BackHandlerDispatcherCompat(NavigationEventDispatcher navigationEventDispatcher, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.f727a = navigationEventDispatcher;
        this.f728b = onBackPressedDispatcher;
        if ((navigationEventDispatcher == null ? onBackPressedDispatcher : navigationEventDispatcher) != null) {
            return;
        }
        md.n("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }

    public final void a(BackHandlerCompat backHandlerCompat) {
        NavigationEventDispatcher navigationEventDispatcher = this.f727a;
        if (navigationEventDispatcher != null) {
            NavigationEventDispatcher.a(navigationEventDispatcher, backHandlerCompat.f725b);
            return;
        }
        OnBackPressedDispatcher onBackPressedDispatcher = this.f728b;
        if (onBackPressedDispatcher != null) {
            onBackPressedDispatcher.a(backHandlerCompat.f724a);
        } else {
            md.k("Unreachable");
        }
    }

    public final void b(BackHandlerCompat backHandlerCompat) throws Exception {
        if (this.f727a != null) {
            backHandlerCompat.f725b.h();
        } else if (this.f728b != null) {
            backHandlerCompat.f724a.e();
        } else {
            md.k("Unreachable");
        }
    }
}

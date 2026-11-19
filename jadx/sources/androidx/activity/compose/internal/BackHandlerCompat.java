package androidx.activity.compose.internal;

import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/compose/internal/BackHandlerCompat;", "", "Landroidx/navigationevent/NavigationEventInfo;", "info", "<init>", "(Landroidx/navigationevent/NavigationEventInfo;)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BackHandlerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BackHandlerCompat$onBackPressedCallback$1 f724a = new OnBackPressedCallback() { // from class: androidx.activity.compose.internal.BackHandlerCompat$onBackPressedCallback$1
        {
            super(false);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void a() {
            this.d.b();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void b() {
            this.d.c();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void c(BackEventCompat backEventCompat) {
            this.d.d(backEventCompat);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void d(BackEventCompat backEventCompat) {
            this.d.e();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BackHandlerCompat$navigationEventHandler$1 f725b;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.compose.internal.BackHandlerCompat$onBackPressedCallback$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1] */
    public BackHandlerCompat(final NavigationEventInfo navigationEventInfo) {
        this.f725b = new NavigationEventHandler<NavigationEventInfo>(navigationEventInfo) { // from class: androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1
            @Override // androidx.navigationevent.NavigationEventHandler
            public final void c() {
                this.f726h.b();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void d() {
                this.f726h.c();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void e(NavigationEvent navigationEvent) {
                this.f726h.d(new BackEventCompat(navigationEvent));
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void f(NavigationEvent navigationEvent) {
                new BackEventCompat(navigationEvent);
                this.f726h.e();
            }
        };
    }

    public boolean a() {
        return this.f724a.f671b && a();
    }

    public void b() {
    }

    public abstract void c();

    public void d(BackEventCompat backEventCompat) {
    }

    public void e() {
    }
}

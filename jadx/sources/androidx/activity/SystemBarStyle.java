package androidx.activity;

import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.l01;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/activity/SystemBarStyle;", "", "Companion", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemBarStyle {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f684e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f687c;
    public final Function1 d;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/SystemBarStyle$Companion;", "", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SystemBarStyle a() {
            return new SystemBarStyle(0, 0, 2, new l01(25), null);
        }

        public static SystemBarStyle b(int i2, int i3) {
            return new SystemBarStyle(i2, i3, 1, new l01(24), null);
        }
    }

    public SystemBarStyle(int i2, int i3, int i4, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f685a = i2;
        this.f686b = i3;
        this.f687c = i4;
        this.d = function1;
    }

    public final int a(boolean z) {
        if (this.f687c == 0) {
            return 0;
        }
        return z ? this.f686b : this.f685a;
    }
}

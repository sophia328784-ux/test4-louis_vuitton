package androidx.navigationevent.compose;

import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventTransitionState;
import defpackage.no;
import defpackage.oo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigationevent/compose/ComposeNavigationEventHandler;", "Landroidx/navigationevent/NavigationEventInfo;", "T", "Landroidx/navigationevent/NavigationEventHandler;", "initialInfo", "Lkotlin/Function1;", "Landroidx/navigationevent/NavigationEventTransitionState;", "", "onTransitionStateChanged", "<init>", "(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V", "navigationevent-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposeNavigationEventHandler<T extends NavigationEventInfo> extends NavigationEventHandler<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function1 f18492h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Function0 f18493i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Function0 f18494j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Function0 f18495k;
    public Function0 l;

    public ComposeNavigationEventHandler(T t, Function1<? super NavigationEventTransitionState, Unit> function1) {
        super(t, false, false);
        this.f18492h = function1;
        this.f18493i = new oo(21);
        this.f18494j = new oo(22);
        this.f18495k = new oo(23);
        this.l = new oo(24);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void c() {
        this.f18492h.invoke(this.d);
        this.f18495k.mo47invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void d() {
        this.f18492h.invoke(this.d);
        this.l.mo47invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void e(NavigationEvent navigationEvent) {
        this.f18492h.invoke(this.d);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void f(NavigationEvent navigationEvent) {
        this.f18492h.invoke(this.d);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void g() {
        this.f18492h.invoke(this.d);
        this.f18493i.mo47invoke();
    }

    public /* synthetic */ ComposeNavigationEventHandler(NavigationEventInfo navigationEventInfo, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(navigationEventInfo, (i2 & 2) != 0 ? new no(29) : function1);
    }
}

package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/focus/FocusPropertiesImpl;", "Landroidx/compose/ui/focus/FocusProperties;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusPropertiesImpl implements FocusProperties {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f8764b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FocusRequester f8765c;
    public FocusRequester d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FocusRequester f8766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FocusRequester f8767f;
    public final FocusRequester g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FocusRequester f8768h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FocusRequester f8769i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FocusRequester f8770j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Function1 f8771k;
    public Function1 l;
    public Rect m;

    public FocusPropertiesImpl() {
        FocusRequester.Companion companion = FocusRequester.f8775b;
        companion.getClass();
        FocusRequester focusRequester = FocusRequester.f8776c;
        this.f8765c = focusRequester;
        companion.getClass();
        this.d = focusRequester;
        companion.getClass();
        this.f8766e = focusRequester;
        companion.getClass();
        this.f8767f = focusRequester;
        companion.getClass();
        this.g = focusRequester;
        companion.getClass();
        this.f8768h = focusRequester;
        companion.getClass();
        this.f8769i = focusRequester;
        companion.getClass();
        this.f8770j = focusRequester;
        this.f8771k = FocusPropertiesImpl$onEnter$1.f8772c;
        this.l = FocusPropertiesImpl$onExit$1.f8773c;
        FocusProperties.f8760a.getClass();
        this.m = FocusProperties.Companion.f8762b;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void a(FocusRequester focusRequester) {
        this.f8766e = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void b(boolean z) {
        this.f8764b = z;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void c(Function1 function1) {
        this.f8771k = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF8764b() {
        return this.f8764b;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void e(Function1 function1) {
        this.l = function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void f(FocusRequester focusRequester) {
        this.d = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void g(FocusRequester focusRequester) {
        this.f8765c = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void h(Rect rect) {
        this.m = rect;
    }
}

package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/focus/FocusProperties;", "", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FocusProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8760a = Companion.f8761a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/focus/FocusProperties$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f8761a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Rect f8762b = new Rect(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    default void a(FocusRequester focusRequester) {
    }

    void b(boolean z);

    default void c(Function1 function1) {
    }

    boolean d();

    default void e(Function1 function1) {
    }

    default void f(FocusRequester focusRequester) {
    }

    default void g(FocusRequester focusRequester) {
    }

    default void h(Rect rect) {
    }
}

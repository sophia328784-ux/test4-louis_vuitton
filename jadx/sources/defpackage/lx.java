package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverSuccessScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lx implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76109c;
    public final /* synthetic */ LazyListState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f76110e;

    public /* synthetic */ lx(boolean z, LazyListState lazyListState, Function1 function1, int i2) {
        this.f76108b = i2;
        this.f76109c = z;
        this.d = lazyListState;
        this.f76110e = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76108b;
        Function1 function1 = this.f76110e;
        LazyListState lazyListState = this.d;
        boolean z = this.f76109c;
        Boolean bool = (Boolean) obj;
        switch (i2) {
            case 0:
                boolean zBooleanValue = bool.booleanValue();
                if (!z) {
                    if (zBooleanValue || !FeedDiscoverSuccessScreenKt.b(lazyListState)) {
                        function1.invoke(bool);
                    }
                }
                break;
            default:
                boolean zBooleanValue2 = bool.booleanValue();
                if (!z) {
                    if (zBooleanValue2 || !FeedDiscoverSuccessScreenKt.b(lazyListState)) {
                        function1.invoke(bool);
                    }
                }
                break;
        }
        return Unit.f71739a;
    }
}

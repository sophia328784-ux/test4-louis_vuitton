package androidx.compose.material3;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.RecomposeScope;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7459c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(Object obj, Object obj2, int i2) {
        this.f7458b = i2;
        this.f7459c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f7458b;
        Object obj = this.d;
        Object obj2 = this.f7459c;
        switch (i2) {
            case 0:
                float f2 = DatePickerKt.f6780a;
                BuildersKt.c((CoroutineScope) obj2, null, null, new DatePickerKt$DatePickerContent$2$1$1$1((LazyListState) obj, null), 3);
                break;
            case 1:
                float f3 = DatePickerKt.f6780a;
                BuildersKt.c((CoroutineScope) obj2, null, null, new DatePickerKt$DatePickerContent$2$2$1$1((LazyListState) obj, null), 3);
                break;
            default:
                SnackbarData snackbarData = (SnackbarData) obj2;
                FadeInFadeOutState fadeInFadeOutState = (FadeInFadeOutState) obj;
                if (!Intrinsics.c(snackbarData, fadeInFadeOutState.f6962a)) {
                    CollectionsKt.a0(fadeInFadeOutState.f6963b, new o(snackbarData, 1));
                    RecomposeScope recomposeScope = fadeInFadeOutState.f6964c;
                    if (recomposeScope != null) {
                        recomposeScope.invalidate();
                    }
                }
                break;
        }
        return Unit.f71739a;
    }
}

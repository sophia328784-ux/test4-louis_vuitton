package androidx.compose.material3;

import androidx.compose.runtime.DisposableEffectResult;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7702c;

    public /* synthetic */ o(Object obj, int i2) {
        this.f7701b = i2;
        this.f7702c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f7701b;
        Object obj2 = this.f7702c;
        switch (i2) {
            case 0:
                final ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper = (ModalBottomSheetDialogWrapper) obj2;
                modalBottomSheetDialogWrapper.show();
                return new DisposableEffectResult() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetDialog_sW7UJKQ$lambda$8$lambda$7$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper2 = modalBottomSheetDialogWrapper;
                        modalBottomSheetDialogWrapper2.dismiss();
                        modalBottomSheetDialogWrapper2.g.e();
                    }
                };
            default:
                return Boolean.valueOf(Intrinsics.c(((FadeInFadeOutAnimationItem) obj).f6960a, (SnackbarData) obj2));
        }
    }
}

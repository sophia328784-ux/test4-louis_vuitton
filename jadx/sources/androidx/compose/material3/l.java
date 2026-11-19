package androidx.compose.material3;

import defpackage.cd0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SheetState f7694c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f7695e;

    public /* synthetic */ l(SheetState sheetState, Function0 function0, CoroutineScope coroutineScope) {
        this.f7693b = 1;
        this.f7694c = sheetState;
        this.d = function0;
        this.f7695e = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f7693b;
        Object obj = this.d;
        CoroutineScope coroutineScope = this.f7695e;
        SheetState sheetState = this.f7694c;
        switch (i2) {
            case 0:
                Function0 function0 = (Function0) obj;
                float f2 = ModalBottomSheetKt.f7058a;
                if (((Boolean) sheetState.f7211e.d.invoke(SheetValue.Hidden)).booleanValue()) {
                    BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1(sheetState, null), 3).invokeOnCompletion(new cd0(sheetState, function0, 0));
                }
                return Unit.f71739a;
            case 1:
                Function0 function1 = (Function0) obj;
                int i3 = ModalBottomSheetKt$ModalBottomSheetContent$7$2$1.WhenMappings.f7103a[sheetState.c().ordinal()];
                if (i3 == 1) {
                    function1.mo47invoke();
                } else if (i3 != 2) {
                    BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2(sheetState, null), 3);
                } else {
                    BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$1(sheetState, null), 3);
                }
                return Unit.f71739a;
            default:
                SheetState sheetState2 = (SheetState) obj;
                if (((Boolean) sheetState.f7211e.d.invoke(SheetValue.Expanded)).booleanValue()) {
                    BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$2$1$1$2$1(sheetState2, null), 3);
                }
                return Boolean.TRUE;
        }
    }

    public /* synthetic */ l(SheetState sheetState, CoroutineScope coroutineScope, Object obj, int i2) {
        this.f7693b = i2;
        this.f7694c = sheetState;
        this.f7695e = coroutineScope;
        this.d = obj;
    }
}

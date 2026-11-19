package androidx.compose.material3;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f7457c;
    public final /* synthetic */ SheetState d;

    public /* synthetic */ b(SheetState sheetState, CoroutineScope coroutineScope, int i2) {
        this.f7456b = i2;
        this.d = sheetState;
        this.f7457c = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f7456b;
        CoroutineScope coroutineScope = this.f7457c;
        SheetState sheetState = this.d;
        switch (i2) {
            case 0:
                int i3 = BottomSheetScaffoldKt$StandardBottomSheet$3$1$1.WhenMappings.f6625a[sheetState.c().ordinal()];
                if (i3 == 1) {
                    BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1(sheetState, null), 3);
                } else if (i3 != 2) {
                    BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$3(sheetState, null), 3);
                } else {
                    BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$2(sheetState, null), 3);
                }
                return Unit.f71739a;
            case 1:
                BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$1$1(sheetState, null), 3);
                break;
            case 2:
                BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$2$1(sheetState, null), 3);
                break;
            case 3:
                BuildersKt.c(coroutineScope, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$2$1$1$3$1(sheetState, null), 3);
                break;
            default:
                if (((Boolean) sheetState.f7211e.d.invoke(SheetValue.PartiallyExpanded)).booleanValue()) {
                    BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$2$1$1$3$1(sheetState, null), 3);
                }
                return Boolean.TRUE;
        }
        return Boolean.TRUE;
    }

    public /* synthetic */ b(CoroutineScope coroutineScope, SheetState sheetState, int i2) {
        this.f7456b = i2;
        this.f7457c = coroutineScope;
        this.d = sheetState;
    }
}

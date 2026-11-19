package defpackage;

import androidx.compose.material3.BottomSheetScaffoldState;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lh implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BottomSheetScaffoldState f76029c;

    public /* synthetic */ lh(BottomSheetScaffoldState bottomSheetScaffoldState, int i2) {
        this.f76028b = i2;
        this.f76029c = bottomSheetScaffoldState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76028b;
        BottomSheetScaffoldState bottomSheetScaffoldState = this.f76029c;
        switch (i2) {
            case 0:
                return Float.valueOf(bottomSheetScaffoldState.f6629a.f7211e.g());
            default:
                return bottomSheetScaffoldState.f6629a.c();
        }
    }
}

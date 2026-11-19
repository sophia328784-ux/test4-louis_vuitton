package defpackage;

import androidx.compose.foundation.text.modifiers.SelectionController;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yu0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SelectionController f81445c;

    public /* synthetic */ yu0(SelectionController selectionController, int i2) {
        this.f81444b = i2;
        this.f81445c = selectionController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81444b;
        SelectionController selectionController = this.f81445c;
        switch (i2) {
            case 0:
                return selectionController.f6301e.f6314a;
            case 1:
                return selectionController.f6301e.f6315b;
            default:
                return selectionController.f6301e.f6314a;
        }
    }
}

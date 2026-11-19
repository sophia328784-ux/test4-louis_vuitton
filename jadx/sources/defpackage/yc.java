package defpackage;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yc implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SelectionRegistrar f81342c;

    public /* synthetic */ yc(SelectionRegistrar selectionRegistrar, int i2) {
        this.f81341b = i2;
        this.f81342c = selectionRegistrar;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        long jB;
        int i2 = this.f81341b;
        SelectionRegistrar selectionRegistrar = this.f81342c;
        switch (i2) {
            case 0:
                jB = selectionRegistrar.b();
                break;
            default:
                jB = selectionRegistrar.b();
                break;
        }
        return Long.valueOf(jB);
    }
}

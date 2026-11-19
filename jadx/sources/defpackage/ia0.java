package defpackage;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ia0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextDragObserver f69929c;

    public /* synthetic */ ia0(TextDragObserver textDragObserver, int i2) {
        this.f69928b = i2;
        this.f69929c = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69928b;
        TextDragObserver textDragObserver = this.f69929c;
        switch (i2) {
            case 0:
                textDragObserver.b(((Offset) obj).f8808a, SelectionAdjustment.Companion.f6397a);
                break;
            case 1:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                textDragObserver.d(PointerEventKt.f(pointerInputChange, false));
                pointerInputChange.a();
                break;
            default:
                PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
                textDragObserver.d(PointerEventKt.f(pointerInputChange2, false));
                pointerInputChange2.a();
                break;
        }
        return Unit.f71739a;
    }
}

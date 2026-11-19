package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zc implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextLinkScope f81595c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ zc(TextLinkScope textLinkScope, Function1 function1, int i2) {
        this.f81594b = i2;
        this.f81595c = textLinkScope;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81594b;
        final Function1 function1 = this.d;
        final TextLinkScope textLinkScope = this.f81595c;
        switch (i2) {
            case 0:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                if (textLinkScope != null) {
                    ((SnapshotMutableStateImpl) textLinkScope.f6014a).setValue(textLayoutResult);
                }
                if (function1 != null) {
                    function1.invoke(textLayoutResult);
                }
                return Unit.f71739a;
            default:
                textLinkScope.f6016c.add(function1);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextLinkScope$StyleAnnotation$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        textLinkScope.f6016c.remove(function1);
                    }
                };
        }
    }
}

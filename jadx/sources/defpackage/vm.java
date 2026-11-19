package defpackage;

import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f80606c;
    public final /* synthetic */ ComposableLambdaImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80607e;

    public /* synthetic */ vm(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f80605b = i3;
        this.f80606c = textFieldSelectionManager;
        this.d = composableLambdaImpl;
        this.f80607e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80605b;
        int i3 = this.f80607e;
        ComposableLambdaImpl composableLambdaImpl = this.d;
        TextFieldSelectionManager textFieldSelectionManager = this.f80606c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CommonContextMenuAreaKt.a(textFieldSelectionManager, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ContextMenu_androidKt.a(textFieldSelectionManager, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}

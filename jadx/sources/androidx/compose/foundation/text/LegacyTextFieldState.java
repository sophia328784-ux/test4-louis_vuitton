package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.unit.Dp;
import defpackage.lq;
import defpackage.n60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/LegacyTextFieldState;", "", "Landroidx/compose/foundation/text/TextDelegate;", "textDelegate", "Landroidx/compose/runtime/RecomposeScope;", "recomposeScope", "Landroidx/compose/ui/platform/SoftwareKeyboardController;", "keyboardController", "<init>", "(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegacyTextFieldState {
    public final MutableState A;
    public final MutableState B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextDelegate f5925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecomposeScope f5926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SoftwareKeyboardController f5927c;
    public final EditProcessor d = new EditProcessor();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextInputSession f5928e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f5929f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LayoutCoordinates f5930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f5931i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AnnotatedString f5932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f5933k;
    public final MutableState l;
    public final MutableState m;
    public final MutableState n;
    public final MutableState o;
    public boolean p;
    public final MutableState q;
    public final KeyboardActionRunner r;
    public final MutableState s;
    public final MutableState t;
    public Function1 u;
    public final lq v;
    public final lq w;
    public final lq x;
    public final AndroidPaint y;
    public long z;

    public LegacyTextFieldState(TextDelegate textDelegate, RecomposeScope recomposeScope, SoftwareKeyboardController softwareKeyboardController) {
        this.f5925a = textDelegate;
        this.f5926b = recomposeScope;
        this.f5927c = softwareKeyboardController;
        Boolean bool = Boolean.FALSE;
        this.f5929f = SnapshotStateKt.g(bool);
        this.g = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        this.f5931i = SnapshotStateKt.g(null);
        this.f5933k = SnapshotStateKt.g(HandleState.None);
        this.l = SnapshotStateKt.g(bool);
        this.m = SnapshotStateKt.g(bool);
        this.n = SnapshotStateKt.g(bool);
        this.o = SnapshotStateKt.g(bool);
        this.p = true;
        this.q = SnapshotStateKt.g(Boolean.TRUE);
        this.r = new KeyboardActionRunner(softwareKeyboardController);
        this.s = SnapshotStateKt.g(bool);
        this.t = SnapshotStateKt.g(bool);
        this.u = new n60(26);
        this.v = new lq(this, 1);
        this.w = new lq(this, 2);
        this.x = new lq(this, 3);
        this.y = new AndroidPaint();
        Color.f8866b.getClass();
        this.z = Color.f8871i;
        TextRange.f10564b.getClass();
        long j2 = TextRange.f10565c;
        this.A = SnapshotStateKt.g(new TextRange(j2));
        this.B = SnapshotStateKt.g(new TextRange(j2));
    }

    public final HandleState a() {
        return (HandleState) ((SnapshotMutableStateImpl) this.f5933k).getF10755b();
    }

    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f5929f).getF10755b()).booleanValue();
    }

    public final LayoutCoordinates c() {
        LayoutCoordinates layoutCoordinates = this.f5930h;
        if (layoutCoordinates == null || !layoutCoordinates.c()) {
            return null;
        }
        return layoutCoordinates;
    }

    public final TextLayoutResultProxy d() {
        return (TextLayoutResultProxy) ((SnapshotMutableStateImpl) this.f5931i).getF10755b();
    }

    public final void e(long j2) {
        ((SnapshotMutableStateImpl) this.B).setValue(new TextRange(j2));
    }

    public final void f(long j2) {
        ((SnapshotMutableStateImpl) this.A).setValue(new TextRange(j2));
    }
}

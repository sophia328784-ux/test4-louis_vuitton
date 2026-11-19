package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/InputMethodSession;", "", "Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;", "request", "Lkotlin/Function0;", "", "onAllConnectionsClosed", "<init>", "(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lkotlin/jvm/functions/Function0;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class InputMethodSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlatformTextInputMethodRequest f10095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f10096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f10097c = new Object();
    public final MutableVector d = new MutableVector(new WeakReference[16], 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10098e;

    public InputMethodSession(PlatformTextInputMethodRequest platformTextInputMethodRequest, Function0<Unit> function0) {
        this.f10095a = platformTextInputMethodRequest;
        this.f10096b = function0;
    }
}

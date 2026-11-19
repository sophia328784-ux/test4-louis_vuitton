package androidx.compose.ui.viewinterop;

import android.os.Handler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class AndroidViewHolder$Companion$OnCommitAffectingUpdate$1 extends Lambda implements Function1<AndroidViewHolder, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidViewHolder$Companion$OnCommitAffectingUpdate$1 f11046c = new AndroidViewHolder$Companion$OnCommitAffectingUpdate$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AndroidViewHolder androidViewHolder = (AndroidViewHolder) obj;
        Handler handler = androidViewHolder.getHandler();
        final Function0 function0 = androidViewHolder.s;
        handler.post(new Runnable() { // from class: androidx.compose.ui.viewinterop.a
            @Override // java.lang.Runnable
            public final void run() {
                AndroidViewHolder$Companion$OnCommitAffectingUpdate$1 androidViewHolder$Companion$OnCommitAffectingUpdate$1 = AndroidViewHolder$Companion$OnCommitAffectingUpdate$1.f11046c;
                function0.mo47invoke();
            }
        });
        return Unit.f71739a;
    }
}

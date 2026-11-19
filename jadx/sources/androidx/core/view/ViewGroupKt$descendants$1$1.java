package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class ViewGroupKt$descendants$1$1 implements Function1<View, Iterator<? extends View>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ViewGroupKt$descendants$1$1 f12212b = new ViewGroupKt$descendants$1$1();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null) {
            return new ViewGroupKt$children$1(viewGroup).iterator();
        }
        return null;
    }
}

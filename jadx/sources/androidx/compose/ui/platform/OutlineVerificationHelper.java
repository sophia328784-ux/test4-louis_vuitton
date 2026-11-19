package androidx.compose.ui.platform;

import android.graphics.Outline;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Path;
import defpackage.mt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/OutlineVerificationHelper;", "", "Landroid/graphics/Outline;", "outline", "Landroidx/compose/ui/graphics/Path;", "path", "", "a", "(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OutlineVerificationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OutlineVerificationHelper f10139a = new OutlineVerificationHelper();

    public final void a(Outline outline, Path path) {
        if (path instanceof AndroidPath) {
            outline.setPath(((AndroidPath) path).f8841a);
        } else {
            mt.i("Unable to obtain android.graphics.Path");
        }
    }
}

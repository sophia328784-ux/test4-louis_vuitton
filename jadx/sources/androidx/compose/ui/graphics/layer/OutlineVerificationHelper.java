package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Path;
import defpackage.mt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/layer/OutlineVerificationHelper;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OutlineVerificationHelper {
    public static void a(Outline outline, Path path) {
        if (path instanceof AndroidPath) {
            outline.setPath(((AndroidPath) path).f8841a);
        } else {
            mt.i("Unable to obtain android.graphics.Path");
        }
    }
}

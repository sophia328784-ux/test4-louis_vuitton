package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "a", "(Landroid/content/Context;)I", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FontWeightAdjustmentHelperApi31 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FontWeightAdjustmentHelperApi31 f10735a = new FontWeightAdjustmentHelperApi31();

    public final int a(Context context) {
        return context.getResources().getConfiguration().fontWeightAdjustment;
    }
}

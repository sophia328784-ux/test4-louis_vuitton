package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.view.View;
import android.view.autofill.AutofillValue;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\ba\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/autofill/PlatformAutofillManager;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PlatformAutofillManager {
    void a(View view, int i2, AutofillValue autofillValue);

    void b(int i2, View view);

    void c(View view, int i2, Rect rect);

    void commit();

    void d(View view, int i2, boolean z);

    void e(View view, int i2, Rect rect);
}

package androidx.compose.ui.autofill;

import android.view.autofill.AutofillValue;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/autofill/AutofillApi26Helper;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AutofillApi26Helper {
    public static AutofillValue a(String str) {
        if (str.length() >= 5000) {
            str = (Character.isHighSurrogate(str.charAt(4999)) && Character.isLowSurrogate(str.charAt(5000))) ? StringsKt.V(4999, str) : StringsKt.V(5000, str);
        }
        return AutofillValue.forText(str);
    }
}

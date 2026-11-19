package androidx.compose.ui.text;

import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.platform.AndroidStringDelegate;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StringKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidStringDelegate f10535a = new AndroidStringDelegate();

    public static final String a(String str, Locale locale) {
        f10535a.getClass();
        String upperCase = str.toUpperCase(locale.f10871a);
        upperCase.getClass();
        return upperCase;
    }
}

package androidx.compose.ui.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.ResourceFont;
import defpackage.az;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidFontResourceLoader;", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidFontResourceLoader implements Font.ResourceLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f9946a;

    public AndroidFontResourceLoader(Context context) {
        this.f9946a = context;
    }

    @Override // androidx.compose.ui.text.font.Font.ResourceLoader
    public final Typeface a(Font font) {
        if (font instanceof ResourceFont) {
            return this.f9946a.getResources().getFont(((ResourceFont) font).f10743a);
        }
        az.m(font, "Unknown font type: ");
        return null;
    }
}

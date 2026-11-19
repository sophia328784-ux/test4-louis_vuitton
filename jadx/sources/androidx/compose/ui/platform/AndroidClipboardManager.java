package androidx.compose.ui.platform;

import android.content.Context;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/AndroidClipboardManager;", "Landroidx/compose/ui/platform/ClipboardManager;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidClipboardManager implements ClipboardManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f9861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.ClipboardManager f9862b;

    public AndroidClipboardManager(Context context) {
        this.f9861a = context;
    }

    public final android.content.ClipboardManager a() {
        android.content.ClipboardManager clipboardManager = this.f9862b;
        if (clipboardManager != null) {
            return clipboardManager;
        }
        Object systemService = this.f9861a.getSystemService("clipboard");
        systemService.getClass();
        android.content.ClipboardManager clipboardManager2 = (android.content.ClipboardManager) systemService;
        this.f9862b = clipboardManager2;
        return clipboardManager2;
    }
}

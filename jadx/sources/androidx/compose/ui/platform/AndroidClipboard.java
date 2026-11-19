package androidx.compose.ui.platform;

import android.content.ClipData;
import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidClipboard;", "Landroidx/compose/ui/platform/Clipboard;", "Landroidx/compose/ui/platform/AndroidClipboardManager;", "androidClipboardManager", "<init>", "(Landroidx/compose/ui/platform/AndroidClipboardManager;)V", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "(Landroid/content/Context;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidClipboard implements Clipboard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AndroidClipboardManager f9860a;

    public AndroidClipboard(Context context) {
        this(new AndroidClipboardManager(context));
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public final ClipEntry a() {
        ClipData primaryClip = this.f9860a.a().getPrimaryClip();
        if (primaryClip != null) {
            return new ClipEntry(primaryClip);
        }
        return null;
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public final android.content.ClipboardManager b() {
        return this.f9860a.a();
    }

    @Override // androidx.compose.ui.platform.Clipboard
    public final Unit c(ClipEntry clipEntry) {
        AndroidClipboardManager androidClipboardManager = this.f9860a;
        if (clipEntry == null) {
            androidClipboardManager.a().clearPrimaryClip();
        } else {
            androidClipboardManager.a().setPrimaryClip(clipEntry.f10004a);
        }
        return Unit.f71739a;
    }

    public AndroidClipboard(AndroidClipboardManager androidClipboardManager) {
        this.f9860a = androidClipboardManager;
    }
}

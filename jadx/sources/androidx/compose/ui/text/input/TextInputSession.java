package androidx.compose.ui.text.input;

import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/input/TextInputSession;", "", "Landroidx/compose/ui/text/input/TextInputService;", "textInputService", "Landroidx/compose/ui/text/input/PlatformTextInputService;", "platformTextInputService", "<init>", "(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextInputSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputService f10861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlatformTextInputService f10862b;

    public TextInputSession(TextInputService textInputService, PlatformTextInputService platformTextInputService) {
        this.f10861a = textInputService;
        this.f10862b = platformTextInputService;
    }
}

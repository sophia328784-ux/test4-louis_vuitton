package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;", "Landroidx/compose/ui/platform/SoftwareKeyboardController;", "Landroidx/compose/ui/text/input/TextInputService;", "textInputService", "<init>", "(Landroidx/compose/ui/text/input/TextInputService;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputService f10062a;

    public DelegatingSoftwareKeyboardController(TextInputService textInputService) {
        this.f10062a = textInputService;
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public final void a() {
        TextInputService textInputService = this.f10062a;
        if (((TextInputSession) textInputService.f10844b.get()) != null) {
            textInputService.f10843a.f();
        }
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public final void b() {
        this.f10062a.f10843a.d();
    }
}

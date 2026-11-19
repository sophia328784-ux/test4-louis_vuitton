package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.view.View;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/platform/ComposeClickableSpan;", "Landroid/text/style/ClickableSpan;", "Landroidx/compose/ui/text/LinkAnnotation;", "link", "<init>", "(Landroidx/compose/ui/text/LinkAnnotation;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposeClickableSpan extends ClickableSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkAnnotation f10895b;

    public ComposeClickableSpan(LinkAnnotation linkAnnotation) {
        this.f10895b = linkAnnotation;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        LinkAnnotation linkAnnotation = this.f10895b;
        LinkInteractionListener f10460c = linkAnnotation.getF10460c();
        if (f10460c != null) {
            f10460c.a(linkAnnotation);
        }
    }
}

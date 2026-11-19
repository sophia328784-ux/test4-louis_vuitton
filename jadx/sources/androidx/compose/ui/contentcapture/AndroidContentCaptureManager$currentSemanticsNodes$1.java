package androidx.compose.ui.contentcapture;

import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/semantics/SemanticsNode;", "invoke", "(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Boolean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AndroidContentCaptureManager$currentSemanticsNodes$1 extends Lambda implements Function1<SemanticsNode, Boolean> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidContentCaptureManager$currentSemanticsNodes$1 f8673c = new AndroidContentCaptureManager$currentSemanticsNodes$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SemanticsConfiguration semanticsConfigurationK = ((SemanticsNode) obj).k();
        return Boolean.valueOf(semanticsConfigurationK.f10312b.c(SemanticsProperties.B));
    }
}

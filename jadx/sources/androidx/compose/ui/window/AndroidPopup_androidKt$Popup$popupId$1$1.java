package androidx.compose.ui.window;

import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/util/UUID;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AndroidPopup_androidKt$Popup$popupId$1$1 extends Lambda implements Function0<UUID> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AndroidPopup_androidKt$Popup$popupId$1$1 f11145c = new AndroidPopup_androidKt$Popup$popupId$1$1(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return UUID.randomUUID();
    }
}

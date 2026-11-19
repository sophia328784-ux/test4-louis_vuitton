package androidx.compose.ui.text.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.emoji2.text.EmojiCompat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/platform/DefaultImpl;", "Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultImpl implements EmojiCompatStatusDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public State f10896a;

    public DefaultImpl() {
        this.f10896a = EmojiCompat.g() ? a() : null;
    }

    public final State a() {
        EmojiCompat emojiCompatA = EmojiCompat.a();
        if (emojiCompatA.d() == 1) {
            return new ImmutableBool(true);
        }
        final MutableState mutableStateG = SnapshotStateKt.g(Boolean.FALSE);
        emojiCompatA.k(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onFailed(Throwable th) {
                this.f10896a = EmojiCompatStatus_androidKt.f10901a;
            }

            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onInitialized() {
                ((SnapshotMutableStateImpl) mutableStateG).setValue(Boolean.TRUE);
                this.f10896a = new ImmutableBool(true);
            }
        });
        return mutableStateG;
    }
}

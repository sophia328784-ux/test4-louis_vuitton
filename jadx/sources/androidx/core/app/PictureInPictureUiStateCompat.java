package androidx.core.app;

import android.app.PictureInPictureUiState;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/core/app/PictureInPictureUiStateCompat;", "", "", "isStashed", "isTransitioningToPip", "<init>", "(ZZ)V", "Companion", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureUiStateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f11986a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/app/PictureInPictureUiStateCompat$Companion;", "", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static PictureInPictureUiStateCompat a(PictureInPictureUiState pictureInPictureUiState) {
            pictureInPictureUiState.getClass();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 35) {
                return new PictureInPictureUiStateCompat(pictureInPictureUiState.isStashed(), pictureInPictureUiState.isTransitioningToPip());
            }
            return i2 >= 31 ? new PictureInPictureUiStateCompat(pictureInPictureUiState.isStashed(), false) : new PictureInPictureUiStateCompat(false, false);
        }
    }

    public PictureInPictureUiStateCompat(boolean z, boolean z2) {
    }
}

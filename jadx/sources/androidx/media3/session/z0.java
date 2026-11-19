package androidx.media3.session;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.common.util.Log;
import androidx.media3.datasource.BitmapUtil;
import com.google.common.base.Function;
import com.google.common.primitives.ImmutableIntArray;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17953c;

    public /* synthetic */ z0(Object obj, int i2) {
        this.f17952b = i2;
        this.f17953c = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        int i2 = this.f17952b;
        Object obj2 = this.f17953c;
        switch (i2) {
            case 0:
                return MediaLibrarySessionImpl.y((MediaLibraryService$LibraryParams) obj2, (MediaSession.MediaItemsWithStartPosition) obj);
            case 1:
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = (MediaLibraryService$LibraryParams) obj2;
                int i3 = MediaLibrarySessionImpl.L;
                Log.e("Failed fetching recent media item at boot time.", (Throwable) obj);
                return new LibraryResult(-1, SystemClock.elapsedRealtime(), mediaLibraryService$LibraryParams, new SessionError(-1, "no error message provided", Bundle.EMPTY), null, 4);
            default:
                Bitmap bitmap = (Bitmap) obj;
                int height = bitmap.getHeight();
                int width = bitmap.getWidth();
                ImmutableIntArray immutableIntArray = ((SizeAvoidingBitmapLoader) obj2).f17588b;
                if (!immutableIntArray.a(Math.max(height, width))) {
                    return bitmap;
                }
                if (immutableIntArray.a(height)) {
                    height--;
                }
                if (immutableIntArray.a(width)) {
                    width--;
                }
                return BitmapUtil.b(Bitmap.createScaledBitmap(bitmap, width, height, true));
        }
    }
}

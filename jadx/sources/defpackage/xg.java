package defpackage;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class xg {
    public static /* synthetic */ BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, BoringLayout.Metrics metrics, boolean z, TextUtils.TruncateAt truncateAt, int i3, boolean z2) {
        return new BoringLayout(charSequence, textPaint, i2, alignment, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, metrics, z, truncateAt, i3, z2);
    }
}

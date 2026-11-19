package defpackage;

import coil3.graphics.ExifOrientationStrategy;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lw implements ExifOrientationStrategy {
    @Override // coil3.graphics.ExifOrientationStrategy
    public final boolean a(String str) {
        if (str != null) {
            return str.equals("image/jpeg") || str.equals("image/webp") || str.equals("image/heic") || str.equals("image/heif");
        }
        return false;
    }
}

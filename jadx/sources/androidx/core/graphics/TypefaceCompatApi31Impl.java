package androidx.core.graphics;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class TypefaceCompatApi31Impl extends TypefaceCompatApi29Impl {
    @Override // androidx.core.graphics.TypefaceCompatApi29Impl
    public final Font d(FontsContractCompat.FontInfo fontInfo) {
        Font fontF;
        Uri uri = fontInfo.f12108a;
        boolean zEquals = Objects.equals(uri.getScheme(), "systemfont");
        String str = fontInfo.f12111e;
        String authority = zEquals ? uri.getAuthority() : null;
        if (authority != null) {
            Typeface typefaceCreate = Typeface.create(authority, 0);
            Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
            if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                typefaceCreate = null;
            }
            if (typefaceCreate != null && (fontF = TypefaceCompat.f(typefaceCreate)) != null) {
                if (TextUtils.isEmpty(str)) {
                    return fontF;
                }
                try {
                    return new Font.Builder(fontF).setFontVariationSettings(str).build();
                } catch (IOException unused) {
                }
            }
        }
        return null;
    }
}

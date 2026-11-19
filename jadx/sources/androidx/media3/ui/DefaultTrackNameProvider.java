package androidx.media3.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import com.vuitton.android.R;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTrackNameProvider implements TrackNameProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f17978a;

    public DefaultTrackNameProvider(Resources resources) {
        resources.getClass();
        this.f17978a = resources;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002b  */
    public final String a(Format format) {
        String displayName;
        String str = format.d;
        String str2 = format.f13756b;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            displayName = "";
        } else {
            Locale localeForLanguageTag = Locale.forLanguageTag(str);
            String str3 = Util.f14242a;
            Locale locale = Locale.getDefault(Locale.Category.DISPLAY);
            displayName = localeForLanguageTag.getDisplayName(locale);
            if (TextUtils.isEmpty(displayName)) {
                displayName = "";
            } else {
                try {
                    int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
                    displayName = displayName.substring(0, iOffsetByCodePoints).toUpperCase(locale) + displayName.substring(iOffsetByCodePoints);
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
        String strC = c(displayName, b(format));
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        return str2;
    }

    public final String b(Format format) {
        int i2 = format.f13759f;
        int i3 = i2 & 2;
        Resources resources = this.f17978a;
        String string = i3 != 0 ? resources.getString(R.string.exo_track_role_alternate) : "";
        if ((i2 & 4) != 0) {
            string = c(string, resources.getString(R.string.exo_track_role_supplementary));
        }
        if ((i2 & 8) != 0) {
            string = c(string, resources.getString(R.string.exo_track_role_commentary));
        }
        return (i2 & 1088) != 0 ? c(string, resources.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    public final String c(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (!str.isEmpty()) {
                string = TextUtils.isEmpty(string) ? str : this.f17978a.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }
}

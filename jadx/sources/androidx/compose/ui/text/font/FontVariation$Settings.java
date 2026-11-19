package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"androidx/compose/ui/text/font/FontVariation$Settings", "", "", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "settings", "<init>", "([Landroidx/compose/ui/text/font/FontVariation$Setting;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FontVariation$Settings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f10726a;

    public FontVariation$Settings(FontVariation$Setting... fontVariation$SettingArr) {
        for (FontVariation$Setting fontVariation$Setting : fontVariation$SettingArr) {
            String strB = fontVariation$Setting.b();
            int i2 = 0;
            for (FontVariation$Setting fontVariation$Setting2 : fontVariation$SettingArr) {
                if (Intrinsics.c(fontVariation$Setting2.b(), strB)) {
                    i2++;
                }
            }
            if (i2 != 1) {
                StringBuilder sbR = pq0.r("'", strB, "' must be unique. Actual [");
                ArrayList arrayList = new ArrayList();
                for (FontVariation$Setting fontVariation$Setting3 : fontVariation$SettingArr) {
                    if (Intrinsics.c(fontVariation$Setting3.b(), strB)) {
                        arrayList.add(fontVariation$Setting3);
                    }
                }
                sbR.append(arrayList);
                sbR.append(']');
                InlineClassHelperKt.a(sbR.toString());
            }
        }
        this.f10726a = ArraysKt.W(fontVariation$SettingArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FontVariation$Settings) {
            return Intrinsics.c(this.f10726a, ((FontVariation$Settings) obj).f10726a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10726a.hashCode();
    }
}

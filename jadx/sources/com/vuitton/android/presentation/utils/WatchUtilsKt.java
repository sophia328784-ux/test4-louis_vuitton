package com.vuitton.android.presentation.utils;

import android.content.Context;
import com.vuitton.android.R;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WatchUtilsKt {
    public static final String a(Context context, String str, Profile profile) {
        context.getClass();
        str.getClass();
        profile.getClass();
        String string = context.getString(R.string.watch_email, "flight.", (String) StringsKt__StringsKt.split$default(profile.g, new String[]{"@"}, false, 0, 6, null).get(0), str.substring(str.length() - 4));
        string.getClass();
        return string;
    }

    public static final String b(Context context, String str, Profile profile) {
        context.getClass();
        str.getClass();
        profile.getClass();
        String string = context.getString(R.string.watch_email, "travel.", (String) StringsKt__StringsKt.split$default(profile.g, new String[]{"@"}, false, 0, 6, null).get(0), str.substring(str.length() - 6));
        string.getClass();
        return string;
    }
}

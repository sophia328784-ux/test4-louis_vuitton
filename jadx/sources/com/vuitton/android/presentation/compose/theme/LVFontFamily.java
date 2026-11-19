package com.vuitton.android.presentation.compose.theme;

import androidx.compose.ui.text.font.FontKt;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontWeight;
import com.vuitton.android.R;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/compose/theme/LVFontFamily;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVFontFamily {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FontListFontFamily f51086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FontListFontFamily f51087b;

    static {
        List listAsList = Arrays.asList(FontKt.a(R.font.louisvuitton_light, null, 14));
        listAsList.getClass();
        new FontListFontFamily(listAsList);
        List listAsList2 = Arrays.asList(FontKt.a(R.font.louisvuitton_anglaisef_regular, null, 14));
        listAsList2.getClass();
        f51086a = new FontListFontFamily(listAsList2);
        FontWeight.f10727c.getClass();
        List listAsList3 = Arrays.asList(FontKt.a(R.font.louisvuitton_cond_regular, FontWeight.f10730h, 12), FontKt.a(R.font.louisvuitton_cond_medium, FontWeight.f10731i, 12), FontKt.a(R.font.louisvuitton_cond_light, FontWeight.g, 12), FontKt.a(R.font.louisvuitton_cond_bold, FontWeight.f10733k, 12));
        listAsList3.getClass();
        f51087b = new FontListFontFamily(listAsList3);
    }
}

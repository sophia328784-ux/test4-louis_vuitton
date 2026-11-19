package com.vuitton.android.designkit.ui.theme;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.font.FontKt;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontWeight;
import com.vuitton.android.R;
import defpackage.b51;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TypographyKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FontListFontFamily f48438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f48439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48440c;

    static {
        FontWeight.f10727c.getClass();
        List listAsList = Arrays.asList(FontKt.a(R.font.louisvuitton_regular, FontWeight.f10730h, 12), FontKt.a(R.font.louisvuitton_medium, FontWeight.f10731i, 12), FontKt.a(R.font.louisvuitton_light, FontWeight.g, 12));
        listAsList.getClass();
        f48438a = new FontListFontFamily(listAsList);
        f48439b = LazyKt.b(new b51(3));
        f48440c = new StaticProvidableCompositionLocal(new b51(5));
    }
}

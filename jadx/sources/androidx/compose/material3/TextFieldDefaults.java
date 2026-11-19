package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/TextFieldDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextFieldDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f7372a = 0;

    static {
        Dp.Companion companion = Dp.f11004c;
    }

    public static PaddingValuesImpl a() {
        float f2 = TextFieldImplKt.f7647a;
        float f3 = TextFieldImplKt.d;
        Dp.Companion companion = Dp.f11004c;
        return PaddingKt.d(f2, f3, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}

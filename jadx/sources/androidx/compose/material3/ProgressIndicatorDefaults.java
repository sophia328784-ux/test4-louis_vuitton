package androidx.compose.material3;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.material3.tokens.CircularProgressIndicatorTokens;
import androidx.compose.material3.tokens.LinearProgressIndicatorTokens;
import androidx.compose.ui.graphics.StrokeCap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/ProgressIndicatorDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ProgressIndicatorDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f7149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f7150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7151c;

    static {
        float f2 = CircularProgressIndicatorTokens.f7749c;
        StrokeCap.f8932a.getClass();
        int i2 = StrokeCap.f8933b;
        f7149a = i2;
        f7150b = i2;
        float f3 = LinearProgressIndicatorTokens.f7797b;
        float f4 = LinearProgressIndicatorTokens.f7798c;
        f7151c = CircularProgressIndicatorTokens.f7748b;
        new SpringSpec(1.0f, 50.0f, Float.valueOf(0.001f));
    }
}

package com.vuitton.android.designkit.ui.theme;

import android.content.res.Configuration;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.os.LocaleListCompat;
import defpackage.f41;
import defpackage.l31;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThemeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48435a = new StaticProvidableCompositionLocal(new l31(7));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48436b = new StaticProvidableCompositionLocal(new l31(8));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48437a;

        static {
            int[] iArr = new int[LvTheme.values().length];
            try {
                iArr[LvTheme.Default.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f48437a = iArr;
        }
    }

    public static final void a(String str, Function2 function2, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(250476487);
        int i3 = i2 | 2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                Locale localeB = LocaleListCompat.f(((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).getLocales()).b(0);
                str = localeB != null ? localeB.getLanguage() : null;
                if (str == null) {
                    str = "";
                }
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.a(OpacityKt.f48431a.c(new LVOpacity(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, CertificateBody.profileType, null)), ComposableLambdaKt.b(1521658631, new f41(str, function2), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f41(i2, str, function2);
        }
    }
}

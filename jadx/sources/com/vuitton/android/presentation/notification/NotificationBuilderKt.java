package com.vuitton.android.presentation.notification;

import android.content.Context;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarConfiguration;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import dagger.hilt.EntryPoints;
import defpackage.mg0;
import defpackage.v40;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationBuilderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static NotificationBuilder f51837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f51838b = LazyKt.b(new mg0(2));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f51840b;

        static {
            int[] iArr = new int[NotificationDuration.values().length];
            try {
                iArr[NotificationDuration.SHORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationDuration.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NotificationDuration.INDEFINITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51839a = iArr;
            int[] iArr2 = new int[LVColorScheme.values().length];
            try {
                iArr2[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f51840b = iArr2;
        }
    }

    public static final NotificationBuilder a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zBooleanValue = ((Boolean) composer.k(InspectionModeKt.f10102a)).booleanValue();
        if (zBooleanValue || f51837a != null) {
            composer.L(739771845);
            composer.F();
        } else {
            composer.L(739564269);
            f51837a = ((NotificationBuilderEntryPoint) EntryPoints.a(NotificationBuilderEntryPoint.class, ((Context) composer.k(AndroidCompositionLocals_androidKt.f9936b)).getApplicationContext())).f();
            composer.F();
        }
        if (zBooleanValue) {
            return (NotificationBuilder) f51838b.getF71699b();
        }
        NotificationBuilder notificationBuilder = f51837a;
        if (notificationBuilder != null) {
            return notificationBuilder;
        }
        Intrinsics.h("notificationBuilder");
        throw null;
    }

    public static final LVSnackbarVisuals b(NotificationUiModel notificationUiModel, Context context, LVColorScheme lVColorScheme) {
        SnackbarDuration snackbarDuration;
        LVSnackbarConfiguration lVSnackbarConfiguration;
        notificationUiModel.getClass();
        context.getClass();
        lVColorScheme.getClass();
        StringResourceUiModel stringResourceUiModel = notificationUiModel.f51841a;
        boolean z = notificationUiModel.d;
        String strA = StringResourceUiModelKt.a(stringResourceUiModel, context);
        StringResourceUiModel stringResourceUiModel2 = notificationUiModel.g.f51834a;
        String strA2 = stringResourceUiModel2 != null ? StringResourceUiModelKt.a(stringResourceUiModel2, context) : null;
        if (notificationUiModel.f51842b) {
            snackbarDuration = SnackbarDuration.Indefinite;
        } else {
            int i2 = WhenMappings.f51839a[notificationUiModel.f51843c.ordinal()];
            if (i2 == 1) {
                snackbarDuration = SnackbarDuration.Short;
            } else if (i2 == 2) {
                snackbarDuration = SnackbarDuration.Long;
            } else {
                if (i2 != 3) {
                    v40.g();
                    return null;
                }
                snackbarDuration = SnackbarDuration.Indefinite;
            }
        }
        boolean z2 = notificationUiModel.f51845f;
        boolean z3 = notificationUiModel.f51844e;
        int i3 = WhenMappings.f51840b[lVColorScheme.ordinal()];
        if (i3 == 1) {
            lVSnackbarConfiguration = z ? LVSnackbarConfiguration.SUCCESS : LVSnackbarConfiguration.ERROR;
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            lVSnackbarConfiguration = z ? LVSnackbarConfiguration.SUCCESS_INVERT : LVSnackbarConfiguration.ERROR_INVERT;
        }
        return new LVSnackbarVisuals(strA, snackbarDuration, z2, strA2, z3, lVSnackbarConfiguration);
    }
}

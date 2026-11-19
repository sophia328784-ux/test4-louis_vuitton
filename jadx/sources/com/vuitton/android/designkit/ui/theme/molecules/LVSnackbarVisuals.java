package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.material3.SnackbarDuration;
import androidx.compose.material3.SnackbarVisuals;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;", "Landroidx/compose/material3/SnackbarVisuals;", "", "message", "Landroidx/compose/material3/SnackbarDuration;", "duration", "", "withDismissAction", "actionLabel", "haptic", "Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;", "configuration", "<init>", "(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVSnackbarVisuals implements SnackbarVisuals {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f48673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnackbarDuration f48674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f48675c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f48676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LVSnackbarConfiguration f48677f;

    public /* synthetic */ LVSnackbarVisuals(String str, SnackbarDuration snackbarDuration, boolean z, String str2, boolean z2, LVSnackbarConfiguration lVSnackbarConfiguration, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? SnackbarDuration.Short : snackbarDuration, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? LVSnackbarConfiguration.SUCCESS : lVSnackbarConfiguration);
    }

    @Override // androidx.compose.material3.SnackbarVisuals
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF48673a() {
        return this.f48673a;
    }

    @Override // androidx.compose.material3.SnackbarVisuals
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getD() {
        return this.d;
    }

    @Override // androidx.compose.material3.SnackbarVisuals
    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF48675c() {
        return this.f48675c;
    }

    @Override // androidx.compose.material3.SnackbarVisuals
    /* JADX INFO: renamed from: getDuration, reason: from getter */
    public final SnackbarDuration getF48674b() {
        return this.f48674b;
    }

    public LVSnackbarVisuals(String str, SnackbarDuration snackbarDuration, boolean z, String str2, boolean z2, LVSnackbarConfiguration lVSnackbarConfiguration) {
        str.getClass();
        snackbarDuration.getClass();
        lVSnackbarConfiguration.getClass();
        this.f48673a = str;
        this.f48674b = snackbarDuration;
        this.f48675c = z;
        this.d = str2;
        this.f48676e = z2;
        this.f48677f = lVSnackbarConfiguration;
    }
}

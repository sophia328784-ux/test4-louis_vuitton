package com.vuitton.android.presentation.screen.options.settings.models;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SettingsTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(String str, boolean z) {
        return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/mysettings/contactPreferences", tr.h(str, "_", z ? "enabled" : "disabled"), "MyLV", "click", null, null, 97, null);
    }
}

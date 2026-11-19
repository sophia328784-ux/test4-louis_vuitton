package com.sightcall.advancedannotations.domain.settings;

import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"pointerSetting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "getPointerSetting", "()Lcom/sightcall/advancedannotations/domain/settings/Setting;", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SettingKt {
    private static final Setting pointerSetting = new Setting(EmptyList.f71768b, 0.5f, 0.5f, 100, 100, null);

    public static final Setting getPointerSetting() {
        return pointerSetting;
    }
}

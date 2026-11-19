package com.google.android.gms.location;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f31402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature f31403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Feature[] f31404c;

    static {
        Feature feature = new Feature("name_ulr_private", 1L, true);
        Feature feature2 = new Feature("name_sleep_segment_request", 1L, true);
        Feature feature3 = new Feature("get_last_activity_feature_id", 1L, true);
        Feature feature4 = new Feature("support_context_feature_id", 1L, true);
        Feature feature5 = new Feature("get_current_location", 2L, true);
        Feature feature6 = new Feature("get_last_location_with_request", 1L, true);
        f31402a = feature6;
        Feature feature7 = new Feature("set_mock_mode_with_callback", 1L, true);
        Feature feature8 = new Feature("set_mock_location_with_callback", 1L, true);
        Feature feature9 = new Feature("inject_location_with_callback", 1L, true);
        Feature feature10 = new Feature("location_updates_with_callback", 1L, true);
        f31403b = feature10;
        f31404c = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, new Feature("use_safe_parcelable_in_intents", 1L, false), new Feature("flp_debug_updates", 1L, true), new Feature("google_location_accuracy_enabled", 1L, true), new Feature("geofences_with_callback", 1L, true), new Feature("location_enabled", 1L, true)};
    }
}

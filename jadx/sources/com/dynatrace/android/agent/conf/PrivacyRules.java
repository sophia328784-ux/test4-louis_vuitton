package com.dynatrace.android.agent.conf;

import com.dynatrace.android.agent.EventType;

/* JADX INFO: loaded from: classes2.dex */
public class PrivacyRules {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrivacyRules f27382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UserPrivacyOptions f27383c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserPrivacyOptions f27384a;

    static {
        UserPrivacyOptions.Builder builder = new UserPrivacyOptions.Builder();
        builder.a(DataCollectionLevel.USER_BEHAVIOR);
        builder.f27440b = true;
        if (builder.d == null) {
            builder.f27441c = false;
        }
        builder.d = null;
        f27382b = new PrivacyRules(new UserPrivacyOptions(builder));
        UserPrivacyOptions.Builder builder2 = new UserPrivacyOptions.Builder();
        builder2.a(DataCollectionLevel.OFF);
        f27383c = new UserPrivacyOptions(builder2);
    }

    public PrivacyRules(UserPrivacyOptions userPrivacyOptions) {
        this.f27384a = userPrivacyOptions;
    }

    public final boolean a(EventType eventType) {
        EventType eventType2 = EventType.CRASH;
        UserPrivacyOptions userPrivacyOptions = this.f27384a;
        if (eventType == eventType2) {
            return userPrivacyOptions.f27437b;
        }
        if (eventType == EventType.ACTION_AUTO_LOADING_APP) {
            return userPrivacyOptions.f27436a == DataCollectionLevel.OFF;
        }
        return eventType.a().ordinal() <= userPrivacyOptions.f27436a.ordinal();
    }
}

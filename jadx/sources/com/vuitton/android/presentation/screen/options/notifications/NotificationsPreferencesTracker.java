package com.vuitton.android.presentation.screen.options.notifications;

import com.batch.android.Batch;
import com.batch.android.BatchProfileAttributeEditor;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import defpackage.v40;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsPreferencesTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f59870a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker$Companion;", "", "", "COLLECTION_THEMATIC_OPTINS", "Ljava/lang/String;", "TAG_BRAND_COMMUNICATION", "TAG_PRODUCT_ORIENTED_COMMUNICATION", "TAG_NOTIFY_ME", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59871a;

        static {
            int[] iArr = new int[NotificationPreferenceType.values().length];
            try {
                iArr[NotificationPreferenceType.BRAND_COMMUNICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NotificationPreferenceType.NOTIFY_ME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f59871a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public NotificationsPreferencesTracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f59870a = analyticsTracker;
    }

    public static void a(Map map) {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            int i2 = WhenMappings.f59871a[((NotificationPreferenceType) entry.getKey()).ordinal()];
            if (i2 == 1) {
                str = "brand_communications";
            } else if (i2 == 2) {
                str = "product_oriented_communication";
            } else {
                if (i2 != 3) {
                    v40.g();
                    return;
                }
                str = "notify_me";
            }
            linkedHashMap.put(str, entry.getValue());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            if (((CharSequence) entry2.getKey()).length() > 0) {
                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        BatchProfileAttributeEditor batchProfileAttributeEditorEditor = Batch.Profile.editor();
        for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
            boolean zBooleanValue = ((Boolean) entry3.getValue()).booleanValue();
            if (zBooleanValue) {
                batchProfileAttributeEditorEditor.addToArray("thematic_optins", (String) entry3.getKey());
            } else {
                if (zBooleanValue) {
                    v40.g();
                    return;
                }
                batchProfileAttributeEditorEditor.removeFromArray("thematic_optins", (String) entry3.getKey());
            }
        }
        batchProfileAttributeEditorEditor.save();
    }
}

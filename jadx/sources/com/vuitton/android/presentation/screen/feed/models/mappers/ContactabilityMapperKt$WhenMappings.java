package com.vuitton.android.presentation.screen.feed.models.mappers;

import com.vuitton.foundation.model.domain.model.account.notifications.Contactability;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ContactabilityMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f57932a;

    static {
        int[] iArr = new int[Contactability.values().length];
        try {
            iArr[Contactability.PREFERENCE_CENTER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Contactability.PREFERENCE_CENTER_WITH_NOTIFICATION.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[Contactability.SYSTEM_NOTIFICATION.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[Contactability.PERSONALIZATION.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[Contactability.EVERYTHING.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[Contactability.NO_ACTION_REQUIRED.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f57932a = iArr;
    }
}

package com.vuitton.android.presentation.screen.connectivity.faq.models;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FaqTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56020a;

        static {
            int[] iArr = new int[FaqType.values().length];
            try {
                iArr[FaqType.WATCH_FAQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FaqType.WATCH_V3_FAQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FaqType.LIGHT_UP_SNEAKERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FaqType.LIGHT_UP_KEEP_ALL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FaqType.TRUNK_SPEAKERS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f56020a = iArr;
        }
    }

    public static final String a(FaqType faqType, String str) {
        int i2 = faqType == null ? -1 : WhenMappings.f56020a[faqType.ordinal()];
        if (i2 == 1) {
            return "LVPass/IoT/Watch/Dashboard/MoreServices/Faq";
        }
        if (i2 == 2) {
            return "";
        }
        if (i2 == 3) {
            return tr.g("LVPass/IoT/Sneakers/FAQ/", str);
        }
        if (i2 != 4) {
            return i2 != 5 ? tr.g("LVPass/IoT/Earphones/FAQ/", str) : tr.g("LVPass/IoT/TrunkSpeaker/FAQ/", str);
        }
        return tr.g("LVPass/IoT/Keepall/FAQ/", str);
    }
}

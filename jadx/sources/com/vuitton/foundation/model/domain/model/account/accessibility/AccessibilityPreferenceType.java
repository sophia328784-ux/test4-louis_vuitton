package com.vuitton.foundation.model.domain.model.account.accessibility;

import defpackage.v;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;", "", "Companion", "SIMPLIFY_NAVIGATION", "DISABLE_AUTOPLAY", "ENHANCED_CONTRAST", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class AccessibilityPreferenceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AccessibilityPreferenceType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AccessibilityPreferenceType DISABLE_AUTOPLAY;
    public static final AccessibilityPreferenceType ENHANCED_CONTRAST;
    public static final AccessibilityPreferenceType SIMPLIFY_NAVIGATION;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AccessibilityPreferenceType> serializer() {
            return (KSerializer) AccessibilityPreferenceType.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        AccessibilityPreferenceType accessibilityPreferenceType = new AccessibilityPreferenceType("SIMPLIFY_NAVIGATION", 0);
        SIMPLIFY_NAVIGATION = accessibilityPreferenceType;
        AccessibilityPreferenceType accessibilityPreferenceType2 = new AccessibilityPreferenceType("DISABLE_AUTOPLAY", 1);
        DISABLE_AUTOPLAY = accessibilityPreferenceType2;
        AccessibilityPreferenceType accessibilityPreferenceType3 = new AccessibilityPreferenceType("ENHANCED_CONTRAST", 2);
        ENHANCED_CONTRAST = accessibilityPreferenceType3;
        AccessibilityPreferenceType[] accessibilityPreferenceTypeArr = {accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3};
        $VALUES = accessibilityPreferenceTypeArr;
        $ENTRIES = EnumEntriesKt.a(accessibilityPreferenceTypeArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(12));
    }

    public static AccessibilityPreferenceType valueOf(String str) {
        return (AccessibilityPreferenceType) Enum.valueOf(AccessibilityPreferenceType.class, str);
    }

    public static AccessibilityPreferenceType[] values() {
        return (AccessibilityPreferenceType[]) $VALUES.clone();
    }
}

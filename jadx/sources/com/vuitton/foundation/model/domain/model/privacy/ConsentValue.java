package com.vuitton.foundation.model.domain.model.privacy;

import defpackage.lp;
import defpackage.v40;
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
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "", "Companion", "GIVEN", "REFUSED", "UNSET", "MANDATORY", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class ConsentValue {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConsentValue[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ConsentValue GIVEN;
    public static final ConsentValue MANDATORY;
    public static final ConsentValue REFUSED;
    public static final ConsentValue UNSET;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConsentValue> serializer() {
            return (KSerializer) ConsentValue.$cachedSerializer$delegate.getF71699b();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67895a;

        static {
            int[] iArr = new int[ConsentValue.values().length];
            try {
                iArr[ConsentValue.GIVEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConsentValue.MANDATORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConsentValue.REFUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConsentValue.UNSET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f67895a = iArr;
        }
    }

    static {
        ConsentValue consentValue = new ConsentValue("GIVEN", 0);
        GIVEN = consentValue;
        ConsentValue consentValue2 = new ConsentValue("REFUSED", 1);
        REFUSED = consentValue2;
        ConsentValue consentValue3 = new ConsentValue("UNSET", 2);
        UNSET = consentValue3;
        ConsentValue consentValue4 = new ConsentValue("MANDATORY", 3);
        MANDATORY = consentValue4;
        ConsentValue[] consentValueArr = {consentValue, consentValue2, consentValue3, consentValue4};
        $VALUES = consentValueArr;
        $ENTRIES = EnumEntriesKt.a(consentValueArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lp(20));
    }

    public static ConsentValue valueOf(String str) {
        return (ConsentValue) Enum.valueOf(ConsentValue.class, str);
    }

    public static ConsentValue[] values() {
        return (ConsentValue[]) $VALUES.clone();
    }

    public final boolean b() {
        int i2 = WhenMappings.f67895a[ordinal()];
        if (i2 == 1 || i2 == 2) {
            return true;
        }
        if (i2 == 3 || i2 == 4) {
            return false;
        }
        v40.g();
        return false;
    }
}

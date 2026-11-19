package com.vuitton.foundation.model.domain.model.chat;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SERVICES' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;", "", "Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;", "origin", "Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;", "a", "()Lcom/vuitton/foundation/model/domain/model/chat/ScreenOrigin;", "", "screen", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "FEED", "SERVICES", "CART", "DISTANT_CARE", "CHECKOUT", "CERTIFICATES", "OTHER", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScreenType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ScreenType[] $VALUES;
    public static final ScreenType CART;
    public static final ScreenType CERTIFICATES;
    public static final ScreenType CHECKOUT;
    public static final ScreenType DISTANT_CARE;
    public static final ScreenType FEED;
    public static final ScreenType OTHER;
    public static final ScreenType SERVICES;
    private final ScreenOrigin origin;
    private final String screen;

    static {
        ScreenType screenType = new ScreenType("FEED", 0, ScreenOrigin.HOME, "Feed");
        FEED = screenType;
        ScreenOrigin screenOrigin = ScreenOrigin.OTHER;
        ScreenType screenType2 = new ScreenType("SERVICES", 1, screenOrigin, "Services");
        SERVICES = screenType2;
        ScreenType screenType3 = new ScreenType("CART", 2, screenOrigin, "Cart");
        CART = screenType3;
        ScreenType screenType4 = new ScreenType("DISTANT_CARE", 3, screenOrigin, "Distant Care");
        DISTANT_CARE = screenType4;
        ScreenType screenType5 = new ScreenType("CHECKOUT", 4, ScreenOrigin.CHECKOUT, "Checkout");
        CHECKOUT = screenType5;
        ScreenType screenType6 = new ScreenType("CERTIFICATES", 5, screenOrigin, "Certificates");
        CERTIFICATES = screenType6;
        ScreenType screenType7 = new ScreenType("OTHER", 6, screenOrigin, "Other");
        OTHER = screenType7;
        ScreenType[] screenTypeArr = {screenType, screenType2, screenType3, screenType4, screenType5, screenType6, screenType7};
        $VALUES = screenTypeArr;
        $ENTRIES = EnumEntriesKt.a(screenTypeArr);
    }

    public ScreenType(String str, int i2, ScreenOrigin screenOrigin, String str2) {
        super(str, i2);
        this.origin = screenOrigin;
        this.screen = str2;
    }

    public static ScreenType valueOf(String str) {
        return (ScreenType) Enum.valueOf(ScreenType.class, str);
    }

    public static ScreenType[] values() {
        return (ScreenType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final ScreenOrigin getOrigin() {
        return this.origin;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getScreen() {
        return this.screen;
    }
}

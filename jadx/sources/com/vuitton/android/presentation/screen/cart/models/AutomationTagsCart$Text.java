package com.vuitton.android.presentation.screen.cart.models;

import defpackage.fc;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"com/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text", "", "TextType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AutomationTagsCart$Text {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$TextType;", "", "TITLE", "DESCRIPTION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TextType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TextType[] $VALUES;
        public static final TextType DESCRIPTION;
        public static final TextType TITLE;

        static {
            TextType textType = new TextType("TITLE", 0);
            TITLE = textType;
            TextType textType2 = new TextType("DESCRIPTION", 1);
            DESCRIPTION = textType2;
            TextType[] textTypeArr = {textType, textType2};
            $VALUES = textTypeArr;
            $ENTRIES = EnumEntriesKt.a(textTypeArr);
        }

        public static TextType valueOf(String str) {
            return (TextType) Enum.valueOf(TextType.class, str);
        }

        public static TextType[] values() {
            return (TextType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f55135b;

        static {
            int[] iArr = new int[AutomationTagsCart$CardType.values().length];
            try {
                iArr[AutomationTagsCart$CardType.PACKAGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AutomationTagsCart$CardType.GIFT_MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AutomationTagsCart$CardType.SHOPPING_BAG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AutomationTagsCart$CardType.SAMPLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f55134a = iArr;
            int[] iArr2 = new int[TextType.values().length];
            try {
                iArr2[TextType.TITLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TextType.DESCRIPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f55135b = iArr2;
        }
    }

    public static String a(AutomationTagsCart$CardType automationTagsCart$CardType, TextType textType) {
        String str;
        String str2;
        automationTagsCart$CardType.getClass();
        textType.getClass();
        int i2 = WhenMappings.f55134a[automationTagsCart$CardType.ordinal()];
        if (i2 == 1) {
            str = "artOfGiftingPackaging";
        } else if (i2 == 2) {
            str = "artOfGiftingGiftMessage";
        } else if (i2 == 3) {
            str = "artOfGiftingShoppingBag";
        } else {
            if (i2 != 4) {
                v40.g();
                return null;
            }
            str = "sample";
        }
        int i3 = WhenMappings.f55135b[textType.ordinal()];
        if (i3 == 1) {
            str2 = "Title";
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            str2 = "Description";
        }
        String str3 = automationTagsCart$CardType != AutomationTagsCart$CardType.SHOPPING_BAG ? str2 : null;
        if (str3 == null) {
            str3 = "";
        }
        return fc.i("cart_", str, str3, "_text");
    }
}

package com.vuitton.android.presentation.screen.main.navigation;

import defpackage.fj;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;", "", "Companion", "STORE_MODE", "CATALOG_SKU_LIST", "CATALOG_PRODUCT", "CATALOG_SECTION", "CATALOG_PLP", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class CatalogDeepLinkType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CatalogDeepLinkType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final CatalogDeepLinkType CATALOG_PLP;
    public static final CatalogDeepLinkType CATALOG_PRODUCT;
    public static final CatalogDeepLinkType CATALOG_SECTION;
    public static final CatalogDeepLinkType CATALOG_SKU_LIST;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CatalogDeepLinkType STORE_MODE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CatalogDeepLinkType> serializer() {
            return (KSerializer) CatalogDeepLinkType.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        CatalogDeepLinkType catalogDeepLinkType = new CatalogDeepLinkType("STORE_MODE", 0);
        STORE_MODE = catalogDeepLinkType;
        CatalogDeepLinkType catalogDeepLinkType2 = new CatalogDeepLinkType("CATALOG_SKU_LIST", 1);
        CATALOG_SKU_LIST = catalogDeepLinkType2;
        CatalogDeepLinkType catalogDeepLinkType3 = new CatalogDeepLinkType("CATALOG_PRODUCT", 2);
        CATALOG_PRODUCT = catalogDeepLinkType3;
        CatalogDeepLinkType catalogDeepLinkType4 = new CatalogDeepLinkType("CATALOG_SECTION", 3);
        CATALOG_SECTION = catalogDeepLinkType4;
        CatalogDeepLinkType catalogDeepLinkType5 = new CatalogDeepLinkType("CATALOG_PLP", 4);
        CATALOG_PLP = catalogDeepLinkType5;
        CatalogDeepLinkType[] catalogDeepLinkTypeArr = {catalogDeepLinkType, catalogDeepLinkType2, catalogDeepLinkType3, catalogDeepLinkType4, catalogDeepLinkType5};
        $VALUES = catalogDeepLinkTypeArr;
        $ENTRIES = EnumEntriesKt.a(catalogDeepLinkTypeArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(13));
    }

    public static CatalogDeepLinkType valueOf(String str) {
        return (CatalogDeepLinkType) Enum.valueOf(CatalogDeepLinkType.class, str);
    }

    public static CatalogDeepLinkType[] values() {
        return (CatalogDeepLinkType[]) $VALUES.clone();
    }
}

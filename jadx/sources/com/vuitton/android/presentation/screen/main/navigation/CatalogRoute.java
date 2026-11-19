package com.vuitton.android.presentation.screen.main.navigation;

import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import defpackage.cj;
import defpackage.fj;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aB\u009b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0013\u0010\u0014B\u0097\u0001\b\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0013\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;", "", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;", "catalogDeepLinkType", "", "rmsCode", "storeModeToken", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;", "storeModeLaunchMode", "", "skuList", "sku", "", "isFromNativeShare", "plpId", "section", "category", "subCategory", "themeId", "<init>", "(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CatalogRoute {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogDeepLinkType f59151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f59152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f59153c;
    public final StoreModeLaunchMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f59154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f59155f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f59156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f59157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f59158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f59159k;
    public final String l;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CatalogRoute> serializer() {
            return CatalogRoute$$serializer.f59160a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59161a;

        static {
            int[] iArr = new int[CatalogDeepLinkType.values().length];
            try {
                iArr[CatalogDeepLinkType.CATALOG_PRODUCT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CatalogDeepLinkType.CATALOG_SKU_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CatalogDeepLinkType.CATALOG_PLP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CatalogDeepLinkType.CATALOG_SECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CatalogDeepLinkType.STORE_MODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f59161a = iArr;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        m = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new fj(16)), null, null, LazyKt.a(lazyThreadSafetyMode, new fj(17)), LazyKt.a(lazyThreadSafetyMode, new fj(18)), null, null, null, null, null, null, null};
    }

    public /* synthetic */ CatalogRoute(int i2, CatalogDeepLinkType catalogDeepLinkType, String str, String str2, StoreModeLaunchMode storeModeLaunchMode, List list, String str3, boolean z, String str4, String str5, String str6, String str7, String str8, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f59151a = null;
        } else {
            this.f59151a = catalogDeepLinkType;
        }
        if ((i2 & 2) == 0) {
            this.f59152b = null;
        } else {
            this.f59152b = str;
        }
        if ((i2 & 4) == 0) {
            this.f59153c = null;
        } else {
            this.f59153c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = storeModeLaunchMode;
        }
        if ((i2 & 16) == 0) {
            this.f59154e = null;
        } else {
            this.f59154e = list;
        }
        if ((i2 & 32) == 0) {
            this.f59155f = null;
        } else {
            this.f59155f = str3;
        }
        if ((i2 & 64) == 0) {
            this.g = false;
        } else {
            this.g = z;
        }
        if ((i2 & 128) == 0) {
            this.f59156h = null;
        } else {
            this.f59156h = str4;
        }
        if ((i2 & 256) == 0) {
            this.f59157i = null;
        } else {
            this.f59157i = str5;
        }
        if ((i2 & 512) == 0) {
            this.f59158j = null;
        } else {
            this.f59158j = str6;
        }
        if ((i2 & 1024) == 0) {
            this.f59159k = null;
        } else {
            this.f59159k = str7;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str8;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CatalogRoute)) {
            return false;
        }
        CatalogRoute catalogRoute = (CatalogRoute) obj;
        return this.f59151a == catalogRoute.f59151a && Intrinsics.c(this.f59152b, catalogRoute.f59152b) && Intrinsics.c(this.f59153c, catalogRoute.f59153c) && this.d == catalogRoute.d && Intrinsics.c(this.f59154e, catalogRoute.f59154e) && Intrinsics.c(this.f59155f, catalogRoute.f59155f) && this.g == catalogRoute.g && Intrinsics.c(this.f59156h, catalogRoute.f59156h) && Intrinsics.c(this.f59157i, catalogRoute.f59157i) && Intrinsics.c(this.f59158j, catalogRoute.f59158j) && Intrinsics.c(this.f59159k, catalogRoute.f59159k) && Intrinsics.c(this.l, catalogRoute.l);
    }

    public final int hashCode() {
        CatalogDeepLinkType catalogDeepLinkType = this.f59151a;
        int iHashCode = (catalogDeepLinkType == null ? 0 : catalogDeepLinkType.hashCode()) * 31;
        String str = this.f59152b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f59153c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        StoreModeLaunchMode storeModeLaunchMode = this.d;
        int iHashCode4 = (iHashCode3 + (storeModeLaunchMode == null ? 0 : storeModeLaunchMode.hashCode())) * 31;
        List list = this.f59154e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.f59155f;
        int iB = o60.b((iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.g);
        String str4 = this.f59156h;
        int iHashCode6 = (iB + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f59157i;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f59158j;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f59159k;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.l;
        return iHashCode9 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CatalogRoute(catalogDeepLinkType=");
        sb.append(this.f59151a);
        sb.append(", rmsCode=");
        sb.append(this.f59152b);
        sb.append(", storeModeToken=");
        sb.append(this.f59153c);
        sb.append(", storeModeLaunchMode=");
        sb.append(this.d);
        sb.append(", skuList=");
        o60.B(", sku=", this.f59155f, ", isFromNativeShare=", sb, this.f59154e);
        cj.A(", plpId=", this.f59156h, ", section=", sb, this.g);
        cj.C(sb, this.f59157i, ", category=", this.f59158j, ", subCategory=");
        return tr.l(sb, this.f59159k, ", themeId=", this.l, ")");
    }

    public CatalogRoute() {
        this((CatalogDeepLinkType) null, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4095, (DefaultConstructorMarker) null);
    }

    public CatalogRoute(CatalogDeepLinkType catalogDeepLinkType, String str, String str2, StoreModeLaunchMode storeModeLaunchMode, List<String> list, String str3, boolean z, String str4, String str5, String str6, String str7, String str8) {
        this.f59151a = catalogDeepLinkType;
        this.f59152b = str;
        this.f59153c = str2;
        this.d = storeModeLaunchMode;
        this.f59154e = list;
        this.f59155f = str3;
        this.g = z;
        this.f59156h = str4;
        this.f59157i = str5;
        this.f59158j = str6;
        this.f59159k = str7;
        this.l = str8;
    }

    public /* synthetic */ CatalogRoute(CatalogDeepLinkType catalogDeepLinkType, String str, String str2, StoreModeLaunchMode storeModeLaunchMode, List list, String str3, boolean z, String str4, String str5, String str6, String str7, String str8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : catalogDeepLinkType, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : storeModeLaunchMode, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : str3, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? null : str4, (i2 & 256) != 0 ? null : str5, (i2 & 512) != 0 ? null : str6, (i2 & 1024) != 0 ? null : str7, (i2 & 2048) != 0 ? null : str8);
    }
}

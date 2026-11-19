package com.vuitton.android.presentation.screen.catalog.components;

import defpackage.cj;
import defpackage.fc;
import defpackage.fj;
import defpackage.n00;
import defpackage.tr;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "", "Category", "Subcategory", "Plp", "ThematicPlp", "SkuList", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Category extends CatalogRoutes {
        public static final Category INSTANCE = new Category(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f55282a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(19));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Category);
        }

        public final int hashCode() {
            return 410120813;
        }

        public final KSerializer<Category> serializer() {
            return (KSerializer) f55282a.getF71699b();
        }

        public final String toString() {
            return "Category";
        }
    }

    public CatalogRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "", "plpListSku", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SkuList extends CatalogRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55287a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SkuList> serializer() {
                return CatalogRoutes$SkuList$$serializer.f55288a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SkuList(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CatalogRoutes$SkuList$$serializer.f55288a.getF19838b());
                throw null;
            }
            this.f55287a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SkuList) && Intrinsics.c(this.f55287a, ((SkuList) obj).f55287a);
        }

        public final int hashCode() {
            return this.f55287a.hashCode();
        }

        public final String toString() {
            return fc.h("SkuList(plpListSku=", this.f55287a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SkuList(String str) {
            super(null);
            str.getClass();
            this.f55287a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Subcategory extends CatalogRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55289a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Subcategory> serializer() {
                return CatalogRoutes$Subcategory$$serializer.f55290a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Subcategory(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CatalogRoutes$Subcategory$$serializer.f55290a.getF19838b());
                throw null;
            }
            this.f55289a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Subcategory) && Intrinsics.c(this.f55289a, ((Subcategory) obj).f55289a);
        }

        public final int hashCode() {
            return this.f55289a.hashCode();
        }

        public final String toString() {
            return fc.h("Subcategory(categoryId=", this.f55289a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Subcategory(String str) {
            super(null);
            str.getClass();
            this.f55289a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "", "categoryId", "subcategoryId", "plpId", "plpTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Plp extends CatalogRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55283a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55284b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55285c;
        public final String d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Plp> serializer() {
                return CatalogRoutes$Plp$$serializer.f55286a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Plp(int i2, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (15 != (i2 & 15)) {
                PluginExceptionsKt.b(i2, 15, CatalogRoutes$Plp$$serializer.f55286a.getF19838b());
                throw null;
            }
            this.f55283a = str;
            this.f55284b = str2;
            this.f55285c = str3;
            this.d = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Plp)) {
                return false;
            }
            Plp plp = (Plp) obj;
            return Intrinsics.c(this.f55283a, plp.f55283a) && Intrinsics.c(this.f55284b, plp.f55284b) && Intrinsics.c(this.f55285c, plp.f55285c) && Intrinsics.c(this.d, plp.d);
        }

        public final int hashCode() {
            int iHashCode = this.f55283a.hashCode() * 31;
            String str = this.f55284b;
            return this.d.hashCode() + fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f55285c);
        }

        public final String toString() {
            return tr.l(fc.s("Plp(categoryId=", this.f55283a, ", subcategoryId=", this.f55284b, ", plpId="), this.f55285c, ", plpTitle=", this.d, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Plp(String str, String str2, String str3, String str4) {
            super(null);
            cj.z(str, str3, str4);
            this.f55283a = str;
            this.f55284b = str2;
            this.f55285c = str3;
            this.d = str4;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes;", "", "categoryId", "subcategoryId", "plpTitle", "plpId", "themeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ThematicPlp extends CatalogRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55293c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f55294e;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ThematicPlp> serializer() {
                return CatalogRoutes$ThematicPlp$$serializer.f55295a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ThematicPlp(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, CatalogRoutes$ThematicPlp$$serializer.f55295a.getF19838b());
                throw null;
            }
            this.f55291a = str;
            this.f55292b = str2;
            this.f55293c = str3;
            if ((i2 & 8) == 0) {
                this.d = null;
            } else {
                this.d = str4;
            }
            if ((i2 & 16) == 0) {
                this.f55294e = null;
            } else {
                this.f55294e = str5;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ThematicPlp)) {
                return false;
            }
            ThematicPlp thematicPlp = (ThematicPlp) obj;
            return Intrinsics.c(this.f55291a, thematicPlp.f55291a) && Intrinsics.c(this.f55292b, thematicPlp.f55292b) && Intrinsics.c(this.f55293c, thematicPlp.f55293c) && Intrinsics.c(this.d, thematicPlp.d) && Intrinsics.c(this.f55294e, thematicPlp.f55294e);
        }

        public final int hashCode() {
            int iHashCode = this.f55291a.hashCode() * 31;
            String str = this.f55292b;
            int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f55293c);
            String str2 = this.d;
            int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f55294e;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ThematicPlp(categoryId=", this.f55291a, ", subcategoryId=", this.f55292b, ", plpTitle=");
            cj.C(sbS, this.f55293c, ", plpId=", this.d, ", themeId=");
            return n00.r(this.f55294e, ")", sbS);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThematicPlp(String str, String str2, String str3, String str4, String str5) {
            super(null);
            str.getClass();
            str3.getClass();
            this.f55291a = str;
            this.f55292b = str2;
            this.f55293c = str3;
            this.d = str4;
            this.f55294e = str5;
        }

        public /* synthetic */ ThematicPlp(String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5);
        }
    }
}

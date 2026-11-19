package com.vuitton.foundation.model.domain.model.environment;

import defpackage.fc;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0082\u0001\u000e\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "", "Preprod", "I1", "Staging1", "Staging2", "Staging3", "DevEphemeral", "Dev", "PreviewDev", "PreviewPrp", "PreviewProd", "Nrt", "Prod", "HiddenProd", "HiddenProdPreview", "Companion", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Environment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67568b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f67569c = MapsKt.i(new Pair("Preprod", "preproduction"), new Pair("Staging 1", "staging1"), new Pair("Staging 2", "staging2"), new Pair("Staging 3", "staging3"), new Pair("Dev", "dev"), new Pair("DEV", "dev"), new Pair("Dev Preview", "previewDev"), new Pair("PRP Preview", "previewPreproduction"), new Pair("PROD Preview", "previewProduction"), new Pair("NRT", "nrt"), new Pair("Production", "production"), new Pair("Hidden Production", "hiddenProduction"), new Pair("Hidden Production Preview", "previewHiddenProduction"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67570a;

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;", "", "", "", "legacyTitleMigrationMap", "Ljava/util/Map;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Environment a(String str) {
            str.getClass();
            String str2 = (String) Environment.f67569c.get(str);
            if (str2 != null) {
                str = str2;
            }
            Object obj = null;
            for (Object obj2 : CollectionsKt.P(Preprod.d, I1.d, Staging1.d, Staging2.d, Staging3.d, Dev.d, new DevEphemeral(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0), PreviewDev.d, PreviewPrp.d, PreviewProd.d, Nrt.d, Prod.d, HiddenProd.d, HiddenProdPreview.d)) {
                if (Intrinsics.c(((Environment) obj2).f67570a, str)) {
                    obj = obj2;
                    break;
                }
            }
            return (Environment) obj;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Dev extends Environment {
        public static final Dev d = new Dev("dev", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Dev);
        }

        public final int hashCode() {
            return 1333567870;
        }

        public final String toString() {
            return "Dev";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HiddenProd extends Environment {
        public static final HiddenProd d = new HiddenProd("hiddenProduction", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HiddenProd);
        }

        public final int hashCode() {
            return 2079292056;
        }

        public final String toString() {
            return "HiddenProd";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HiddenProdPreview extends Environment {
        public static final HiddenProdPreview d = new HiddenProdPreview("previewHiddenProduction", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HiddenProdPreview);
        }

        public final int hashCode() {
            return 1451714064;
        }

        public final String toString() {
            return "HiddenProdPreview";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class I1 extends Environment {
        public static final I1 d = new I1("i1", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof I1);
        }

        public final int hashCode() {
            return 1567039071;
        }

        public final String toString() {
            return "I1";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Nrt extends Environment {
        public static final Nrt d = new Nrt("nrt", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Nrt);
        }

        public final int hashCode() {
            return 1333577881;
        }

        public final String toString() {
            return "Nrt";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Preprod extends Environment {
        public static final Preprod d = new Preprod("preproduction", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Preprod);
        }

        public final int hashCode() {
            return -1519219357;
        }

        public final String toString() {
            return "Preprod";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreviewDev extends Environment {
        public static final PreviewDev d = new PreviewDev("previewDev", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreviewDev);
        }

        public final int hashCode() {
            return 2065292708;
        }

        public final String toString() {
            return "PreviewDev";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreviewProd extends Environment {
        public static final PreviewProd d = new PreviewProd("previewProduction", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreviewProd);
        }

        public final int hashCode() {
            return -400065624;
        }

        public final String toString() {
            return "PreviewProd";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreviewPrp extends Environment {
        public static final PreviewPrp d = new PreviewPrp("previewPreproduction", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreviewPrp);
        }

        public final int hashCode() {
            return 2065304637;
        }

        public final String toString() {
            return "PreviewPrp";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Prod extends Environment {
        public static final Prod d = new Prod("production", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Prod);
        }

        public final int hashCode() {
            return -1608699122;
        }

        public final String toString() {
            return "Prod";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Staging1 extends Environment {
        public static final Staging1 d = new Staging1("staging1", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Staging1);
        }

        public final int hashCode() {
            return -1560753267;
        }

        public final String toString() {
            return "Staging1";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Staging2 extends Environment {
        public static final Staging2 d = new Staging2("staging2", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Staging2);
        }

        public final int hashCode() {
            return -1560753266;
        }

        public final String toString() {
            return "Staging2";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Staging3 extends Environment {
        public static final Staging3 d = new Staging3("staging3", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Staging3);
        }

        public final int hashCode() {
            return -1560753265;
        }

        public final String toString() {
            return "Staging3";
        }
    }

    public Environment(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f67570a = str;
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "", "currentEphemeral", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DevEphemeral extends Environment {
        public final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DevEphemeral(String str) {
            super("Dev Ephemeral", null);
            str.getClass();
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DevEphemeral) && Intrinsics.c(this.d, ((DevEphemeral) obj).d);
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return fc.h("DevEphemeral(currentEphemeral=", this.d, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public DevEphemeral() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ DevEphemeral(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str);
        }
    }
}

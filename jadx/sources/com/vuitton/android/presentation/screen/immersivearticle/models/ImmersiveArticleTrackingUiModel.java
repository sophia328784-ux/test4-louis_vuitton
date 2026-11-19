package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u0082\u0001\u001b\u001d\u001e\u001f !\"#$%&'()*+,-./01234567¨\u00068À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "ImmersiveArticleScreen", "ModuleVideoClickEvent", "ModuleLookClickEvent", "ModuleDeeplinkClickEvent", "ModuleWallpaperClickEvent", "CtaListClickEvent", "ProductClickEvent", "StickyBannerCtaClickEvent", "ProductsTabsTabClickedEvent", "On3DTouchedEvent", "On3DZoomEvent", "ExpansionListToggleEvent", "OnClickSliderEvent", "OnSwipeSliderEvent", "ProductAddWishlistClickEvent", "ProductDeleteWishlistClickEvent", "NotifyMeClickEvent", "NotifyMeSuccessEvent", "NotifyMeAlreadyNotifiedEvent", "ScreenshotTakenEvent", "ShareOnScreenshotEvent", "OnExpandedPlayerOpenEvent", "OnCollapsedPlayerPlayEvent", "OnExpandedPlayerPlayEvent", "OnPlusOrLessButtonClickEvent", "ScrollPercentageReachedEvent", "ShareButtonClickEvent", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerPlayEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnPlusOrLessButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ImmersiveArticleTrackingUiModel {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "ctaLabel", "", "index", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CtaListClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58720a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmersiveArticleType f58722c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f58723e;

        public CtaListClickEvent(String str, String str2, ImmersiveArticleType immersiveArticleType, String str3, int i2) {
            str.getClass();
            immersiveArticleType.getClass();
            str3.getClass();
            this.f58720a = str;
            this.f58721b = str2;
            this.f58722c = immersiveArticleType;
            this.d = str3;
            this.f58723e = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CtaListClickEvent)) {
                return false;
            }
            CtaListClickEvent ctaListClickEvent = (CtaListClickEvent) obj;
            return Intrinsics.c(this.f58720a, ctaListClickEvent.f58720a) && Intrinsics.c(this.f58721b, ctaListClickEvent.f58721b) && this.f58722c == ctaListClickEvent.f58722c && Intrinsics.c(this.d, ctaListClickEvent.d) && this.f58723e == ctaListClickEvent.f58723e;
        }

        public final int hashCode() {
            int iHashCode = this.f58720a.hashCode() * 31;
            String str = this.f58721b;
            return Integer.hashCode(this.f58723e) + fc.b((this.f58722c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.d);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("CtaListClickEvent(articleKey=", this.f58720a, ", moduleKey=", this.f58721b, ", articleType=");
            sbS.append(this.f58722c);
            sbS.append(", ctaLabel=");
            sbS.append(this.d);
            sbS.append(", index=");
            return a.i(this.f58723e, ")", sbS);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "sectionKey", "", "index", "", "isExpanded", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;IZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExpansionListToggleEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58725b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58726c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f58727e;

        public ExpansionListToggleEvent(String str, ImmersiveArticleType immersiveArticleType, String str2, int i2, boolean z) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58724a = str;
            this.f58725b = immersiveArticleType;
            this.f58726c = str2;
            this.d = i2;
            this.f58727e = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExpansionListToggleEvent)) {
                return false;
            }
            ExpansionListToggleEvent expansionListToggleEvent = (ExpansionListToggleEvent) obj;
            return Intrinsics.c(this.f58724a, expansionListToggleEvent.f58724a) && this.f58725b == expansionListToggleEvent.f58725b && Intrinsics.c(this.f58726c, expansionListToggleEvent.f58726c) && this.d == expansionListToggleEvent.d && this.f58727e == expansionListToggleEvent.f58727e;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f58727e) + tr.b(this.d, fc.b((this.f58725b.hashCode() + (this.f58724a.hashCode() * 31)) * 31, 31, this.f58726c), 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ExpansionListToggleEvent(articleKey=");
            sb.append(this.f58724a);
            sb.append(", articleType=");
            sb.append(this.f58725b);
            sb.append(", sectionKey=");
            sb.append(this.f58726c);
            sb.append(", index=");
            sb.append(this.d);
            sb.append(", isExpanded=");
            return a.p(sb, this.f58727e, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ImmersiveArticleScreen implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58728a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58729b;

        public ImmersiveArticleScreen(String str, ImmersiveArticleType immersiveArticleType) {
            immersiveArticleType.getClass();
            this.f58728a = str;
            this.f58729b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImmersiveArticleScreen)) {
                return false;
            }
            ImmersiveArticleScreen immersiveArticleScreen = (ImmersiveArticleScreen) obj;
            return Intrinsics.c(this.f58728a, immersiveArticleScreen.f58728a) && this.f58729b == immersiveArticleScreen.f58729b;
        }

        public final int hashCode() {
            String str = this.f58728a;
            return this.f58729b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "ImmersiveArticleScreen(articleKey=" + this.f58728a + ", articleType=" + this.f58729b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModuleDeeplinkClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58731b;

        public ModuleDeeplinkClickEvent(String str, ImmersiveArticleType immersiveArticleType) {
            immersiveArticleType.getClass();
            this.f58730a = str;
            this.f58731b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModuleDeeplinkClickEvent)) {
                return false;
            }
            ModuleDeeplinkClickEvent moduleDeeplinkClickEvent = (ModuleDeeplinkClickEvent) obj;
            return Intrinsics.c(this.f58730a, moduleDeeplinkClickEvent.f58730a) && this.f58731b == moduleDeeplinkClickEvent.f58731b;
        }

        public final int hashCode() {
            String str = this.f58730a;
            return this.f58731b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "ModuleDeeplinkClickEvent(articleKey=" + this.f58730a + ", articleType=" + this.f58731b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModuleLookClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmersiveArticleType f58734c;

        public ModuleLookClickEvent(String str, String str2, ImmersiveArticleType immersiveArticleType) {
            immersiveArticleType.getClass();
            this.f58732a = str;
            this.f58733b = str2;
            this.f58734c = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModuleLookClickEvent)) {
                return false;
            }
            ModuleLookClickEvent moduleLookClickEvent = (ModuleLookClickEvent) obj;
            return Intrinsics.c(this.f58732a, moduleLookClickEvent.f58732a) && Intrinsics.c(this.f58733b, moduleLookClickEvent.f58733b) && this.f58734c == moduleLookClickEvent.f58734c;
        }

        public final int hashCode() {
            String str = this.f58732a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f58733b;
            return this.f58734c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ModuleLookClickEvent(articleKey=", this.f58732a, ", moduleKey=", this.f58733b, ", articleType=");
            sbS.append(this.f58734c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModuleVideoClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmersiveArticleType f58737c;

        public ModuleVideoClickEvent(String str, String str2, ImmersiveArticleType immersiveArticleType) {
            immersiveArticleType.getClass();
            this.f58735a = str;
            this.f58736b = str2;
            this.f58737c = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModuleVideoClickEvent)) {
                return false;
            }
            ModuleVideoClickEvent moduleVideoClickEvent = (ModuleVideoClickEvent) obj;
            return Intrinsics.c(this.f58735a, moduleVideoClickEvent.f58735a) && Intrinsics.c(this.f58736b, moduleVideoClickEvent.f58736b) && this.f58737c == moduleVideoClickEvent.f58737c;
        }

        public final int hashCode() {
            String str = this.f58735a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f58736b;
            return this.f58737c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ModuleVideoClickEvent(articleKey=", this.f58735a, ", moduleKey=", this.f58736b, ", articleType=");
            sbS.append(this.f58737c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModuleWallpaperClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58739b;

        public ModuleWallpaperClickEvent(String str, ImmersiveArticleType immersiveArticleType) {
            immersiveArticleType.getClass();
            this.f58738a = str;
            this.f58739b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModuleWallpaperClickEvent)) {
                return false;
            }
            ModuleWallpaperClickEvent moduleWallpaperClickEvent = (ModuleWallpaperClickEvent) obj;
            return Intrinsics.c(this.f58738a, moduleWallpaperClickEvent.f58738a) && this.f58739b == moduleWallpaperClickEvent.f58739b;
        }

        public final int hashCode() {
            String str = this.f58738a;
            return this.f58739b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "ModuleWallpaperClickEvent(articleKey=" + this.f58738a + ", articleType=" + this.f58739b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "sectionId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeAlreadyNotifiedEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58742c;

        public NotifyMeAlreadyNotifiedEvent(String str, ImmersiveArticleType immersiveArticleType, String str2) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58740a = str;
            this.f58741b = immersiveArticleType;
            this.f58742c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotifyMeAlreadyNotifiedEvent)) {
                return false;
            }
            NotifyMeAlreadyNotifiedEvent notifyMeAlreadyNotifiedEvent = (NotifyMeAlreadyNotifiedEvent) obj;
            return Intrinsics.c(this.f58740a, notifyMeAlreadyNotifiedEvent.f58740a) && this.f58741b == notifyMeAlreadyNotifiedEvent.f58741b && Intrinsics.c(this.f58742c, notifyMeAlreadyNotifiedEvent.f58742c);
        }

        public final int hashCode() {
            return this.f58742c.hashCode() + ((this.f58741b.hashCode() + (this.f58740a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NotifyMeAlreadyNotifiedEvent(articleKey=");
            sb.append(this.f58740a);
            sb.append(", articleType=");
            sb.append(this.f58741b);
            sb.append(", sectionId=");
            return n00.r(this.f58742c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "sectionId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58745c;

        public NotifyMeClickEvent(String str, ImmersiveArticleType immersiveArticleType, String str2) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58743a = str;
            this.f58744b = immersiveArticleType;
            this.f58745c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotifyMeClickEvent)) {
                return false;
            }
            NotifyMeClickEvent notifyMeClickEvent = (NotifyMeClickEvent) obj;
            return Intrinsics.c(this.f58743a, notifyMeClickEvent.f58743a) && this.f58744b == notifyMeClickEvent.f58744b && Intrinsics.c(this.f58745c, notifyMeClickEvent.f58745c);
        }

        public final int hashCode() {
            return this.f58745c.hashCode() + ((this.f58744b.hashCode() + (this.f58743a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NotifyMeClickEvent(articleKey=");
            sb.append(this.f58743a);
            sb.append(", articleType=");
            sb.append(this.f58744b);
            sb.append(", sectionId=");
            return n00.r(this.f58745c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeSuccessEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58747b;

        public NotifyMeSuccessEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58746a = str;
            this.f58747b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotifyMeSuccessEvent)) {
                return false;
            }
            NotifyMeSuccessEvent notifyMeSuccessEvent = (NotifyMeSuccessEvent) obj;
            return Intrinsics.c(this.f58746a, notifyMeSuccessEvent.f58746a) && this.f58747b == notifyMeSuccessEvent.f58747b;
        }

        public final int hashCode() {
            return this.f58747b.hashCode() + (this.f58746a.hashCode() * 31);
        }

        public final String toString() {
            return "NotifyMeSuccessEvent(articleKey=" + this.f58746a + ", articleType=" + this.f58747b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class On3DTouchedEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58749b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58750c;

        public On3DTouchedEvent(String str, ImmersiveArticleType immersiveArticleType, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58748a = str;
            this.f58749b = immersiveArticleType;
            this.f58750c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof On3DTouchedEvent)) {
                return false;
            }
            On3DTouchedEvent on3DTouchedEvent = (On3DTouchedEvent) obj;
            if (!this.f58748a.equals(on3DTouchedEvent.f58748a) || this.f58749b != on3DTouchedEvent.f58749b) {
                return false;
            }
            String str = on3DTouchedEvent.f58750c;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58750c.equals(str);
        }

        public final int hashCode() {
            int iHashCode = (this.f58749b.hashCode() + (this.f58748a.hashCode() * 31)) * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58750c.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sb = new StringBuilder("On3DTouchedEvent(articleKey=");
            sb.append(this.f58748a);
            sb.append(", articleType=");
            sb.append(this.f58749b);
            sb.append(", sku=");
            return n00.r(this.f58750c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class On3DZoomEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58753c;

        public On3DZoomEvent(String str, ImmersiveArticleType immersiveArticleType, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58751a = str;
            this.f58752b = immersiveArticleType;
            this.f58753c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof On3DZoomEvent)) {
                return false;
            }
            On3DZoomEvent on3DZoomEvent = (On3DZoomEvent) obj;
            if (!this.f58751a.equals(on3DZoomEvent.f58751a) || this.f58752b != on3DZoomEvent.f58752b) {
                return false;
            }
            String str = on3DZoomEvent.f58753c;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58753c.equals(str);
        }

        public final int hashCode() {
            int iHashCode = (this.f58752b.hashCode() + (this.f58751a.hashCode() * 31)) * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58753c.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sb = new StringBuilder("On3DZoomEvent(articleKey=");
            sb.append(this.f58751a);
            sb.append(", articleType=");
            sb.append(this.f58752b);
            sb.append(", sku=");
            return n00.r(this.f58753c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "", "trackingName", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClickSliderEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmersiveArticleType f58754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58755b;

        public OnClickSliderEvent(ImmersiveArticleType immersiveArticleType, String str) {
            immersiveArticleType.getClass();
            str.getClass();
            this.f58754a = immersiveArticleType;
            this.f58755b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnClickSliderEvent)) {
                return false;
            }
            OnClickSliderEvent onClickSliderEvent = (OnClickSliderEvent) obj;
            return this.f58754a == onClickSliderEvent.f58754a && Intrinsics.c(this.f58755b, onClickSliderEvent.f58755b);
        }

        public final int hashCode() {
            return this.f58755b.hashCode() + (this.f58754a.hashCode() * 31);
        }

        public final String toString() {
            return "OnClickSliderEvent(articleType=" + this.f58754a + ", trackingName=" + this.f58755b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCollapsedPlayerPlayEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58757b;

        public OnCollapsedPlayerPlayEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58756a = str;
            this.f58757b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCollapsedPlayerPlayEvent)) {
                return false;
            }
            OnCollapsedPlayerPlayEvent onCollapsedPlayerPlayEvent = (OnCollapsedPlayerPlayEvent) obj;
            return Intrinsics.c(this.f58756a, onCollapsedPlayerPlayEvent.f58756a) && this.f58757b == onCollapsedPlayerPlayEvent.f58757b;
        }

        public final int hashCode() {
            return this.f58757b.hashCode() + (this.f58756a.hashCode() * 31);
        }

        public final String toString() {
            return "OnCollapsedPlayerPlayEvent(articleKey=" + this.f58756a + ", articleType=" + this.f58757b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnExpandedPlayerOpenEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58759b;

        public OnExpandedPlayerOpenEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58758a = str;
            this.f58759b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnExpandedPlayerOpenEvent)) {
                return false;
            }
            OnExpandedPlayerOpenEvent onExpandedPlayerOpenEvent = (OnExpandedPlayerOpenEvent) obj;
            return Intrinsics.c(this.f58758a, onExpandedPlayerOpenEvent.f58758a) && this.f58759b == onExpandedPlayerOpenEvent.f58759b;
        }

        public final int hashCode() {
            return this.f58759b.hashCode() + (this.f58758a.hashCode() * 31);
        }

        public final String toString() {
            return "OnExpandedPlayerOpenEvent(articleKey=" + this.f58758a + ", articleType=" + this.f58759b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerPlayEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnExpandedPlayerPlayEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnExpandedPlayerPlayEvent f58760a = new OnExpandedPlayerPlayEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnExpandedPlayerPlayEvent);
        }

        public final int hashCode() {
            return -295360270;
        }

        public final String toString() {
            return "OnExpandedPlayerPlayEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnPlusOrLessButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SeekDirection;", "direction", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/SeekDirection;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPlusOrLessButtonClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SeekDirection f58761a;

        public OnPlusOrLessButtonClickEvent(SeekDirection seekDirection) {
            seekDirection.getClass();
            this.f58761a = seekDirection;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnPlusOrLessButtonClickEvent) && this.f58761a == ((OnPlusOrLessButtonClickEvent) obj).f58761a;
        }

        public final int hashCode() {
            return this.f58761a.hashCode();
        }

        public final String toString() {
            return "OnPlusOrLessButtonClickEvent(direction=" + this.f58761a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "", "index", "size", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeSliderEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmersiveArticleType f58762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58764c;

        public OnSwipeSliderEvent(ImmersiveArticleType immersiveArticleType, String str, String str2) {
            immersiveArticleType.getClass();
            str.getClass();
            str2.getClass();
            this.f58762a = immersiveArticleType;
            this.f58763b = str;
            this.f58764c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSwipeSliderEvent)) {
                return false;
            }
            OnSwipeSliderEvent onSwipeSliderEvent = (OnSwipeSliderEvent) obj;
            return this.f58762a == onSwipeSliderEvent.f58762a && Intrinsics.c(this.f58763b, onSwipeSliderEvent.f58763b) && Intrinsics.c(this.f58764c, onSwipeSliderEvent.f58764c);
        }

        public final int hashCode() {
            return this.f58764c.hashCode() + fc.b(this.f58762a.hashCode() * 31, 31, this.f58763b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnSwipeSliderEvent(articleType=");
            sb.append(this.f58762a);
            sb.append(", index=");
            sb.append(this.f58763b);
            sb.append(", size=");
            return n00.r(this.f58764c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "price", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductAddWishlistClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58767c;
        public final String d;

        public ProductAddWishlistClickEvent(String str, ImmersiveArticleType immersiveArticleType, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58765a = str;
            this.f58766b = immersiveArticleType;
            this.f58767c = str2;
            this.d = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductAddWishlistClickEvent)) {
                return false;
            }
            ProductAddWishlistClickEvent productAddWishlistClickEvent = (ProductAddWishlistClickEvent) obj;
            if (!this.f58765a.equals(productAddWishlistClickEvent.f58765a) || this.f58766b != productAddWishlistClickEvent.f58766b) {
                return false;
            }
            String str = productAddWishlistClickEvent.f58767c;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58767c.equals(str) && Intrinsics.c(this.d, productAddWishlistClickEvent.d);
        }

        public final int hashCode() {
            int iHashCode = (this.f58766b.hashCode() + (this.f58765a.hashCode() * 31)) * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            int iB = fc.b(iHashCode, 31, this.f58767c);
            String str = this.d;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sb = new StringBuilder("ProductAddWishlistClickEvent(articleKey=");
            sb.append(this.f58765a);
            sb.append(", articleType=");
            sb.append(this.f58766b);
            sb.append(", sku=");
            return tr.l(sb, this.f58767c, ", price=", this.d, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmersiveArticleType f58770c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f58771e;

        public ProductClickEvent(String str, String str2, ImmersiveArticleType immersiveArticleType, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            immersiveArticleType.getClass();
            str3.getClass();
            this.f58768a = str;
            this.f58769b = str2;
            this.f58770c = immersiveArticleType;
            this.d = str3;
            this.f58771e = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductClickEvent)) {
                return false;
            }
            ProductClickEvent productClickEvent = (ProductClickEvent) obj;
            if (!this.f58768a.equals(productClickEvent.f58768a) || !Intrinsics.c(this.f58769b, productClickEvent.f58769b) || this.f58770c != productClickEvent.f58770c) {
                return false;
            }
            String str = productClickEvent.d;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.d.equals(str) && Intrinsics.c(this.f58771e, productClickEvent.f58771e);
        }

        public final int hashCode() {
            int iHashCode = this.f58768a.hashCode() * 31;
            String str = this.f58769b;
            int iHashCode2 = (this.f58770c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            int iB = fc.b(iHashCode2, 31, this.d);
            String str2 = this.f58771e;
            return iB + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sbS = fc.s("ProductClickEvent(articleKey=", this.f58768a, ", moduleKey=", this.f58769b, ", articleType=");
            sbS.append(this.f58770c);
            sbS.append(", sku=");
            sbS.append(this.d);
            sbS.append(", price=");
            return n00.r(this.f58771e, ")", sbS);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "price", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductDeleteWishlistClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58773b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58774c;
        public final String d;

        public ProductDeleteWishlistClickEvent(String str, ImmersiveArticleType immersiveArticleType, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            immersiveArticleType.getClass();
            str2.getClass();
            this.f58772a = str;
            this.f58773b = immersiveArticleType;
            this.f58774c = str2;
            this.d = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductDeleteWishlistClickEvent)) {
                return false;
            }
            ProductDeleteWishlistClickEvent productDeleteWishlistClickEvent = (ProductDeleteWishlistClickEvent) obj;
            if (!this.f58772a.equals(productDeleteWishlistClickEvent.f58772a) || this.f58773b != productDeleteWishlistClickEvent.f58773b) {
                return false;
            }
            String str = productDeleteWishlistClickEvent.f58774c;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f58774c.equals(str) && Intrinsics.c(this.d, productDeleteWishlistClickEvent.d);
        }

        public final int hashCode() {
            int iHashCode = (this.f58773b.hashCode() + (this.f58772a.hashCode() * 31)) * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            int iB = fc.b(iHashCode, 31, this.f58774c);
            String str = this.d;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sb = new StringBuilder("ProductDeleteWishlistClickEvent(articleKey=");
            sb.append(this.f58772a);
            sb.append(", articleType=");
            sb.append(this.f58773b);
            sb.append(", sku=");
            return tr.l(sb, this.f58774c, ", price=", this.d, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "tabTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductsTabsTabClickedEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58776b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmersiveArticleType f58777c;
        public final String d;

        public ProductsTabsTabClickedEvent(String str, String str2, ImmersiveArticleType immersiveArticleType, String str3) {
            str.getClass();
            immersiveArticleType.getClass();
            str3.getClass();
            this.f58775a = str;
            this.f58776b = str2;
            this.f58777c = immersiveArticleType;
            this.d = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductsTabsTabClickedEvent)) {
                return false;
            }
            ProductsTabsTabClickedEvent productsTabsTabClickedEvent = (ProductsTabsTabClickedEvent) obj;
            return Intrinsics.c(this.f58775a, productsTabsTabClickedEvent.f58775a) && Intrinsics.c(this.f58776b, productsTabsTabClickedEvent.f58776b) && this.f58777c == productsTabsTabClickedEvent.f58777c && Intrinsics.c(this.d, productsTabsTabClickedEvent.d);
        }

        public final int hashCode() {
            int iHashCode = this.f58775a.hashCode() * 31;
            String str = this.f58776b;
            return this.d.hashCode() + ((this.f58777c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ProductsTabsTabClickedEvent(articleKey=", this.f58775a, ", moduleKey=", this.f58776b, ", articleType=");
            sbS.append(this.f58777c);
            sbS.append(", tabTitle=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScreenshotTakenEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58779b;

        public ScreenshotTakenEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58778a = str;
            this.f58779b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ScreenshotTakenEvent)) {
                return false;
            }
            ScreenshotTakenEvent screenshotTakenEvent = (ScreenshotTakenEvent) obj;
            return Intrinsics.c(this.f58778a, screenshotTakenEvent.f58778a) && this.f58779b == screenshotTakenEvent.f58779b;
        }

        public final int hashCode() {
            return this.f58779b.hashCode() + (this.f58778a.hashCode() * 31);
        }

        public final String toString() {
            return "ScreenshotTakenEvent(articleKey=" + this.f58778a + ", articleType=" + this.f58779b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "", "percentage", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScrollPercentageReachedEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f58782c;

        public ScrollPercentageReachedEvent(String str, ImmersiveArticleType immersiveArticleType, int i2) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58780a = str;
            this.f58781b = immersiveArticleType;
            this.f58782c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ScrollPercentageReachedEvent)) {
                return false;
            }
            ScrollPercentageReachedEvent scrollPercentageReachedEvent = (ScrollPercentageReachedEvent) obj;
            return Intrinsics.c(this.f58780a, scrollPercentageReachedEvent.f58780a) && this.f58781b == scrollPercentageReachedEvent.f58781b && this.f58782c == scrollPercentageReachedEvent.f58782c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f58782c) + ((this.f58781b.hashCode() + (this.f58780a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ScrollPercentageReachedEvent(articleKey=");
            sb.append(this.f58780a);
            sb.append(", articleType=");
            sb.append(this.f58781b);
            sb.append(", percentage=");
            return a.i(this.f58782c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareButtonClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58783a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58784b;

        public ShareButtonClickEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58783a = str;
            this.f58784b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareButtonClickEvent)) {
                return false;
            }
            ShareButtonClickEvent shareButtonClickEvent = (ShareButtonClickEvent) obj;
            return Intrinsics.c(this.f58783a, shareButtonClickEvent.f58783a) && this.f58784b == shareButtonClickEvent.f58784b;
        }

        public final int hashCode() {
            return this.f58784b.hashCode() + (this.f58783a.hashCode() * 31);
        }

        public final String toString() {
            return "ShareButtonClickEvent(articleKey=" + this.f58783a + ", articleType=" + this.f58784b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareOnScreenshotEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58786b;

        public ShareOnScreenshotEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58785a = str;
            this.f58786b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareOnScreenshotEvent)) {
                return false;
            }
            ShareOnScreenshotEvent shareOnScreenshotEvent = (ShareOnScreenshotEvent) obj;
            return Intrinsics.c(this.f58785a, shareOnScreenshotEvent.f58785a) && this.f58786b == shareOnScreenshotEvent.f58786b;
        }

        public final int hashCode() {
            return this.f58786b.hashCode() + (this.f58785a.hashCode() * 31);
        }

        public final String toString() {
            return "ShareOnScreenshotEvent(articleKey=" + this.f58785a + ", articleType=" + this.f58786b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;", "", "articleKey", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;", "articleType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StickyBannerCtaClickEvent implements ImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58787a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleType f58788b;

        public StickyBannerCtaClickEvent(String str, ImmersiveArticleType immersiveArticleType) {
            str.getClass();
            immersiveArticleType.getClass();
            this.f58787a = str;
            this.f58788b = immersiveArticleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StickyBannerCtaClickEvent)) {
                return false;
            }
            StickyBannerCtaClickEvent stickyBannerCtaClickEvent = (StickyBannerCtaClickEvent) obj;
            return Intrinsics.c(this.f58787a, stickyBannerCtaClickEvent.f58787a) && this.f58788b == stickyBannerCtaClickEvent.f58788b;
        }

        public final int hashCode() {
            return this.f58788b.hashCode() + (this.f58787a.hashCode() * 31);
        }

        public final String toString() {
            return "StickyBannerCtaClickEvent(articleKey=" + this.f58787a + ", articleType=" + this.f58788b + ")";
        }
    }
}

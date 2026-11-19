package com.vuitton.foundation.model.domain.model.contributionlink;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.iq;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u0000 \u001b2\u00020\u0001:\u001a\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u0082\u0001\u0019\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./01234¨\u00065À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "AICompanion", "Wishlist", "WishlistShared", "MyLv", "Category", "ExclusiveOffer", "ImmersiveArticle", "AppointmentCreate", "CareServiceCreate", "Generic", "Monogram", "NativeStory", "Other", "Portal", "Product", "ProductList", "PushNotification", "SeoLandingPage", "ShadeFinder", "Url", "Spotlight", "WebView", "BookingExperience", "AudioGuide", "Unknown", "Companion", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public interface ContributionLink {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.f67434a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AICompanion implements ContributionLink {
        public static final AICompanion INSTANCE = new AICompanion();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67424a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(1));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AICompanion);
        }

        public final int hashCode() {
            return 1102551971;
        }

        public final KSerializer<AICompanion> serializer() {
            return (KSerializer) f67424a.getF71699b();
        }

        public final String toString() {
            return "AICompanion";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CareServiceCreate implements ContributionLink {
        public static final CareServiceCreate INSTANCE = new CareServiceCreate();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67431a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(2));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CareServiceCreate);
        }

        public final int hashCode() {
            return 440221951;
        }

        public final KSerializer<CareServiceCreate> serializer() {
            return (KSerializer) f67431a.getF71699b();
        }

        public final String toString() {
            return "CareServiceCreate";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f67434a = new Companion();

        public final KSerializer<ContributionLink> serializer() {
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            return new SealedClassSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink", reflectionFactory.b(ContributionLink.class), new KClass[]{reflectionFactory.b(AICompanion.class), reflectionFactory.b(AppointmentCreate.class), reflectionFactory.b(AudioGuide.class), reflectionFactory.b(BookingExperience.class), reflectionFactory.b(CareServiceCreate.class), reflectionFactory.b(Category.class), reflectionFactory.b(ExclusiveOffer.class), reflectionFactory.b(Generic.class), reflectionFactory.b(ImmersiveArticle.class), reflectionFactory.b(Monogram.class), reflectionFactory.b(MyLv.class), reflectionFactory.b(NativeStory.class), reflectionFactory.b(Other.class), reflectionFactory.b(Portal.class), reflectionFactory.b(Product.class), reflectionFactory.b(ProductList.class), reflectionFactory.b(PushNotification.class), reflectionFactory.b(SeoLandingPage.class), reflectionFactory.b(ShadeFinder.class), reflectionFactory.b(Spotlight.class), reflectionFactory.b(Unknown.class), reflectionFactory.b(Url.class), reflectionFactory.b(WebView.class), reflectionFactory.b(Wishlist.class), reflectionFactory.b(WishlistShared.class)}, new KSerializer[]{new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.AICompanion", AICompanion.INSTANCE, new Annotation[0]), ContributionLink$AppointmentCreate$$serializer.f67426a, ContributionLink$AudioGuide$$serializer.f67428a, ContributionLink$BookingExperience$$serializer.f67430a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.CareServiceCreate", CareServiceCreate.INSTANCE, new Annotation[0]), ContributionLink$Category$$serializer.f67433a, ContributionLink$ExclusiveOffer$$serializer.f67436a, ContributionLink$Generic$$serializer.f67438a, ContributionLink$ImmersiveArticle$$serializer.f67440a, ContributionLink$Monogram$$serializer.f67443a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.MyLv", MyLv.INSTANCE, new Annotation[0]), ContributionLink$NativeStory$$serializer.f67446a, ContributionLink$Other$$serializer.f67448a, ContributionLink$Portal$$serializer.f67450a, ContributionLink$Product$$serializer.f67453a, ContributionLink$ProductList$$serializer.f67456a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.PushNotification", PushNotification.INSTANCE, new Annotation[0]), ContributionLink$SeoLandingPage$$serializer.f67459a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.ShadeFinder", ShadeFinder.INSTANCE, new Annotation[0]), ContributionLink$Spotlight$$serializer.f67462a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Unknown", Unknown.INSTANCE, new Annotation[0]), ContributionLink$Url$$serializer.f67465a, ContributionLink$WebView$$serializer.f67467a, new ObjectSerializer("com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Wishlist", Wishlist.INSTANCE, new Annotation[0]), ContributionLink$WishlistShared$$serializer.f67472a}, new Annotation[0]);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class MyLv implements ContributionLink {
        public static final MyLv INSTANCE = new MyLv();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67444a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(3));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyLv);
        }

        public final int hashCode() {
            return 783214967;
        }

        public final KSerializer<MyLv> serializer() {
            return (KSerializer) f67444a.getF71699b();
        }

        public final String toString() {
            return "MyLv";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class PushNotification implements ContributionLink {
        public static final PushNotification INSTANCE = new PushNotification();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67457a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(5));

        public final KSerializer<PushNotification> serializer() {
            return (KSerializer) f67457a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class ShadeFinder implements ContributionLink {
        public static final ShadeFinder INSTANCE = new ShadeFinder();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67460a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(6));

        public final KSerializer<ShadeFinder> serializer() {
            return (KSerializer) f67460a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Unknown implements ContributionLink {
        public static final Unknown INSTANCE = new Unknown();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67463a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(7));

        public final KSerializer<Unknown> serializer() {
            return (KSerializer) f67463a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Wishlist implements ContributionLink {
        public static final Wishlist INSTANCE = new Wishlist();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f67468a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(8));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Wishlist);
        }

        public final int hashCode() {
            return 67226214;
        }

        public final KSerializer<Wishlist> serializer() {
            return (KSerializer) f67468a.getF71699b();
        }

        public final String toString() {
            return "Wishlist";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "reason", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AppointmentCreate implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67425a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AppointmentCreate> serializer() {
                return ContributionLink$AppointmentCreate$$serializer.f67426a;
            }
        }

        public /* synthetic */ AppointmentCreate(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67425a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$AppointmentCreate$$serializer.f67426a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AppointmentCreate) && Intrinsics.c(this.f67425a, ((AppointmentCreate) obj).f67425a);
        }

        public final int hashCode() {
            String str = this.f67425a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("AppointmentCreate(reason=", this.f67425a, ")");
        }

        public AppointmentCreate(String str) {
            this.f67425a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AudioGuide implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67427a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AudioGuide> serializer() {
                return ContributionLink$AudioGuide$$serializer.f67428a;
            }
        }

        public /* synthetic */ AudioGuide(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67427a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$AudioGuide$$serializer.f67428a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AudioGuide) && Intrinsics.c(this.f67427a, ((AudioGuide) obj).f67427a);
        }

        public final int hashCode() {
            return this.f67427a.hashCode();
        }

        public final String toString() {
            return fc.h("AudioGuide(id=", this.f67427a, ")");
        }

        public AudioGuide(String str) {
            str.getClass();
            this.f67427a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class BookingExperience implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67429a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<BookingExperience> serializer() {
                return ContributionLink$BookingExperience$$serializer.f67430a;
            }
        }

        public /* synthetic */ BookingExperience(int i2, String str, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67429a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$BookingExperience$$serializer.f67430a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BookingExperience)) {
                return false;
            }
            String str = ((BookingExperience) obj).f67429a;
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            return Intrinsics.c(this.f67429a, str);
        }

        public final int hashCode() {
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            return this.f67429a.hashCode();
        }

        public final String toString() {
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            return fc.h("BookingExperience(experienceId=", this.f67429a, ")");
        }

        public BookingExperience(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f67429a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Category implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67432a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Category> serializer() {
                return ContributionLink$Category$$serializer.f67433a;
            }
        }

        public /* synthetic */ Category(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67432a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Category$$serializer.f67433a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Category) && Intrinsics.c(this.f67432a, ((Category) obj).f67432a);
        }

        public final int hashCode() {
            return this.f67432a.hashCode();
        }

        public final String toString() {
            return fc.h("Category(dimId=", this.f67432a, ")");
        }

        public Category(String str) {
            str.getClass();
            this.f67432a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ExclusiveOffer implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67435a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ExclusiveOffer> serializer() {
                return ContributionLink$ExclusiveOffer$$serializer.f67436a;
            }
        }

        public /* synthetic */ ExclusiveOffer(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67435a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$ExclusiveOffer$$serializer.f67436a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveOffer) && Intrinsics.c(this.f67435a, ((ExclusiveOffer) obj).f67435a);
        }

        public final int hashCode() {
            return this.f67435a.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveOffer(dimId=", this.f67435a, ")");
        }

        public ExclusiveOffer(String str) {
            str.getClass();
            this.f67435a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", ConfigurationName.KEY, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Generic implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67437a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Generic> serializer() {
                return ContributionLink$Generic$$serializer.f67438a;
            }
        }

        public /* synthetic */ Generic(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67437a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Generic$$serializer.f67438a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Generic) && Intrinsics.c(this.f67437a, ((Generic) obj).f67437a);
        }

        public final int hashCode() {
            return this.f67437a.hashCode();
        }

        public final String toString() {
            return fc.h("Generic(key=", this.f67437a, ")");
        }

        public Generic(String str) {
            str.getClass();
            this.f67437a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "articleId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ImmersiveArticle implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67439a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ImmersiveArticle> serializer() {
                return ContributionLink$ImmersiveArticle$$serializer.f67440a;
            }
        }

        public /* synthetic */ ImmersiveArticle(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67439a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$ImmersiveArticle$$serializer.f67440a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImmersiveArticle) && Intrinsics.c(this.f67439a, ((ImmersiveArticle) obj).f67439a);
        }

        public final int hashCode() {
            return this.f67439a.hashCode();
        }

        public final String toString() {
            return fc.h("ImmersiveArticle(articleId=", this.f67439a, ")");
        }

        public ImmersiveArticle(String str) {
            str.getClass();
            this.f67439a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class NativeStory implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67445a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<NativeStory> serializer() {
                return ContributionLink$NativeStory$$serializer.f67446a;
            }
        }

        public /* synthetic */ NativeStory(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67445a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$NativeStory$$serializer.f67446a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NativeStory) && Intrinsics.c(this.f67445a, ((NativeStory) obj).f67445a);
        }

        public final int hashCode() {
            return this.f67445a.hashCode();
        }

        public final String toString() {
            return fc.h("NativeStory(id=", this.f67445a, ")");
        }

        public NativeStory(String str) {
            str.getClass();
            this.f67445a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Other implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67447a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Other> serializer() {
                return ContributionLink$Other$$serializer.f67448a;
            }
        }

        public /* synthetic */ Other(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67447a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Other$$serializer.f67448a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Other) && Intrinsics.c(this.f67447a, ((Other) obj).f67447a);
        }

        public final int hashCode() {
            return this.f67447a.hashCode();
        }

        public final String toString() {
            return fc.h("Other(url=", this.f67447a, ")");
        }

        public Other(String str) {
            str.getClass();
            this.f67447a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Portal implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67449a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Portal> serializer() {
                return ContributionLink$Portal$$serializer.f67450a;
            }
        }

        public /* synthetic */ Portal(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67449a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Portal$$serializer.f67450a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Portal) && Intrinsics.c(this.f67449a, ((Portal) obj).f67449a);
        }

        public final int hashCode() {
            return this.f67449a.hashCode();
        }

        public final String toString() {
            return fc.h("Portal(id=", this.f67449a, ")");
        }

        public Portal(String str) {
            str.getClass();
            this.f67449a = str;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuIds", "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductList implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Lazy[] f67454b = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(4))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f67455a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductList> serializer() {
                return ContributionLink$ProductList$$serializer.f67456a;
            }
        }

        public /* synthetic */ ProductList(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67455a = list;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$ProductList$$serializer.f67456a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductList) && Intrinsics.c(this.f67455a, ((ProductList) obj).f67455a);
        }

        public final int hashCode() {
            return this.f67455a.hashCode();
        }

        public final String toString() {
            return d21.o("ProductList(skuIds=", ")", this.f67455a);
        }

        public ProductList(List<SkuId> list) {
            list.getClass();
            this.f67455a = list;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SeoLandingPage implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67458a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SeoLandingPage> serializer() {
                return ContributionLink$SeoLandingPage$$serializer.f67459a;
            }
        }

        public /* synthetic */ SeoLandingPage(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67458a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$SeoLandingPage$$serializer.f67459a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SeoLandingPage) && Intrinsics.c(this.f67458a, ((SeoLandingPage) obj).f67458a);
        }

        public final int hashCode() {
            return this.f67458a.hashCode();
        }

        public final String toString() {
            return fc.h("SeoLandingPage(id=", this.f67458a, ")");
        }

        public SeoLandingPage(String str) {
            str.getClass();
            this.f67458a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Spotlight implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67461a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Spotlight> serializer() {
                return ContributionLink$Spotlight$$serializer.f67462a;
            }
        }

        public /* synthetic */ Spotlight(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67461a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Spotlight$$serializer.f67462a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Spotlight) && Intrinsics.c(this.f67461a, ((Spotlight) obj).f67461a);
        }

        public final int hashCode() {
            return this.f67461a.hashCode();
        }

        public final String toString() {
            return fc.h("Spotlight(id=", this.f67461a, ")");
        }

        public Spotlight(String str) {
            str.getClass();
            this.f67461a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Url implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67464a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Url> serializer() {
                return ContributionLink$Url$$serializer.f67465a;
            }
        }

        public /* synthetic */ Url(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67464a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$Url$$serializer.f67465a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Url) && Intrinsics.c(this.f67464a, ((Url) obj).f67464a);
        }

        public final int hashCode() {
            return this.f67464a.hashCode();
        }

        public final String toString() {
            return fc.h("Url(url=", this.f67464a, ")");
        }

        public Url(String str) {
            str.getClass();
            this.f67464a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class WebView implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67466a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<WebView> serializer() {
                return ContributionLink$WebView$$serializer.f67467a;
            }
        }

        public /* synthetic */ WebView(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f67466a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ContributionLink$WebView$$serializer.f67467a.a());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WebView) && Intrinsics.c(this.f67466a, ((WebView) obj).f67466a);
        }

        public final int hashCode() {
            return this.f67466a.hashCode();
        }

        public final String toString() {
            return fc.h("WebView(url=", this.f67466a, ")");
        }

        public WebView(String str) {
            str.getClass();
            this.f67466a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "configuratorURL", "trackingName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Monogram implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67442b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Monogram> serializer() {
                return ContributionLink$Monogram$$serializer.f67443a;
            }
        }

        public /* synthetic */ Monogram(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ContributionLink$Monogram$$serializer.f67443a.a());
                throw null;
            }
            this.f67441a = str;
            this.f67442b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Monogram)) {
                return false;
            }
            Monogram monogram = (Monogram) obj;
            return Intrinsics.c(this.f67441a, monogram.f67441a) && Intrinsics.c(this.f67442b, monogram.f67442b);
        }

        public final int hashCode() {
            return this.f67442b.hashCode() + (this.f67441a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Monogram(configuratorURL=", this.f67441a, ", trackingName=", this.f67442b, ")");
        }

        public Monogram(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f67441a = str;
            this.f67442b = str2;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "isFromNativeShare", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Product implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f67452b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Product> serializer() {
                return ContributionLink$Product$$serializer.f67453a;
            }
        }

        public /* synthetic */ Product(int i2, String str, boolean z, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ContributionLink$Product$$serializer.f67453a.a());
                throw null;
            }
            this.f67451a = str;
            this.f67452b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            String str = product.f67451a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return Intrinsics.c(this.f67451a, str) && this.f67452b == product.f67452b;
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return Boolean.hashCode(this.f67452b) + (this.f67451a.hashCode() * 31);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return d21.m("Product(sku=", this.f67451a, ", isFromNativeShare=", ")", this.f67452b);
        }

        public Product(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f67451a = str;
            this.f67452b = z;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "", "date", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class WishlistShared implements ContributionLink {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f67469c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(9))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67471b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<WishlistShared> serializer() {
                return ContributionLink$WishlistShared$$serializer.f67472a;
            }
        }

        public /* synthetic */ WishlistShared(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ContributionLink$WishlistShared$$serializer.f67472a.a());
                throw null;
            }
            this.f67470a = str;
            this.f67471b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WishlistShared)) {
                return false;
            }
            WishlistShared wishlistShared = (WishlistShared) obj;
            return Intrinsics.c(this.f67470a, wishlistShared.f67470a) && Intrinsics.c(this.f67471b, wishlistShared.f67471b);
        }

        public final int hashCode() {
            return this.f67471b.hashCode() + (this.f67470a.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("WishlistShared(date=", this.f67470a, ", skus=", this.f67471b, ")");
        }

        public WishlistShared(String str, List<SkuId> list) {
            str.getClass();
            list.getClass();
            this.f67470a = str;
            this.f67471b = list;
        }
    }
}

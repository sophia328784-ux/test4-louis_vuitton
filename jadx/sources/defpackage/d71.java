package defpackage;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVWishlistLocalProviderKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistComposableKt;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.f71;
import java.time.format.FormatStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d71 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistActivity f68468c;
    public final /* synthetic */ String d;

    public /* synthetic */ d71(WishlistActivity wishlistActivity, String str, int i2) {
        this.f68467b = i2;
        this.f68468c = wishlistActivity;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68467b;
        String str = this.d;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                WishlistActivity.Companion companion = WishlistActivity.t;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-683880007, new d71(this.f68468c, str, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                WishlistActivity.Companion companion2 = WishlistActivity.t;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer);
                    final WishlistActivity wishlistActivity = this.f68468c;
                    final MutableState mutableStateB = SnapshotStateKt.b(wishlistActivity.I().getC(), composer);
                    boolean zK = composer.K(((WishlistViewState) mutableStateB.getF10755b()).f65757a);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        String strD = str != null ? DateTimeUtils.d(((WishlistViewState) mutableStateB.getF10755b()).f65757a.m, str, "yyyy-MM-dd", FormatStyle.SHORT) : null;
                        composer.q(strD);
                        objX = strD;
                    }
                    final String str2 = (String) objX;
                    boolean zY = composer.y(wishlistActivity);
                    Object objX2 = composer.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new f71(wishlistActivity, i3);
                        composer.q(objX2);
                    }
                    BackHandlerKt.a(false, (Function0) objX2, composer, 0, 1);
                    final int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b());
                    final int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD());
                    LVWishlistLocalProviderKt.a(ComposableLambdaKt.b(-1655207113, new Function2() { // from class: com.vuitton.android.presentation.screen.wishlist.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            WishlistActivity.Companion companion3 = WishlistActivity.t;
                            final int i4 = 0;
                            final int i5 = 1;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                boolean z = ((WishlistViewState) mutableStateB.getF10755b()).f65762h;
                                final WishlistActivity wishlistActivity2 = wishlistActivity;
                                final int i6 = iB;
                                final int i7 = iB2;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (z) {
                                    composer2.L(244595006);
                                    if (CollectionExtKt.a(wishlistActivity2.H())) {
                                        composer2.L(244592991);
                                        Unit unit = Unit.f71739a;
                                        boolean zY2 = composer2.y(wishlistActivity2);
                                        Object objX3 = composer2.x();
                                        if (zY2 || objX3 == composer$Companion$Empty$2) {
                                            objX3 = new WishlistActivity$onCreate$1$1$2$1$1(wishlistActivity2, null);
                                            composer2.q(objX3);
                                        }
                                        EffectsKt.e(composer2, unit, (Function2) objX3);
                                        WishlistViewModel wishlistViewModelI = wishlistActivity2.I();
                                        boolean zY3 = composer2.y(wishlistActivity2);
                                        Object objX4 = composer2.x();
                                        if (zY3 || objX4 == composer$Companion$Empty$2) {
                                            WishlistActivity$onCreate$1$1$2$2$1 wishlistActivity$onCreate$1$1$2$2$1 = new WishlistActivity$onCreate$1$1$2$2$1(0, wishlistActivity2, WishlistActivity.class, "finish", "finish()V", 0);
                                            composer2.q(wishlistActivity$onCreate$1$1$2$2$1);
                                            objX4 = wishlistActivity$onCreate$1$1$2$2$1;
                                        }
                                        Function0 function0 = (Function0) ((KFunction) objX4);
                                        boolean zY4 = composer2.y(wishlistActivity2);
                                        Object objX5 = composer2.x();
                                        if (zY4 || objX5 == composer$Companion$Empty$2) {
                                            WishlistActivity$onCreate$1$1$2$3$1 wishlistActivity$onCreate$1$1$2$3$1 = new WishlistActivity$onCreate$1$1$2$3$1(2, wishlistActivity2, WishlistActivity.class, "openSharedProductDetails", "openSharedProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                            composer2.q(wishlistActivity$onCreate$1$1$2$3$1);
                                            objX5 = wishlistActivity$onCreate$1$1$2$3$1;
                                        }
                                        Function2 function2 = (Function2) ((KFunction) objX5);
                                        boolean zY5 = composer2.y(wishlistActivity2) | composer2.d(i6) | composer2.d(i7);
                                        Object objX6 = composer2.x();
                                        if (zY5 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new Function1() { // from class: e71
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj5) {
                                                    switch (i5) {
                                                        case 0:
                                                            ContactUsMethod contactUsMethod = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion4 = WishlistActivity.t;
                                                            contactUsMethod.getClass();
                                                            WishlistActivity wishlistActivity3 = wishlistActivity2;
                                                            LinkHandler linkHandler = wishlistActivity3.q;
                                                            if (linkHandler == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable = wishlistActivity3.r;
                                                            if (chatAttachable != null) {
                                                                linkHandler.d(wishlistActivity3, contactUsMethod, i6, i7, chatAttachable);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                        case 1:
                                                            ContactUsMethod contactUsMethod2 = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion5 = WishlistActivity.t;
                                                            contactUsMethod2.getClass();
                                                            WishlistActivity wishlistActivity4 = wishlistActivity2;
                                                            LinkHandler linkHandler2 = wishlistActivity4.q;
                                                            if (linkHandler2 == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable2 = wishlistActivity4.r;
                                                            if (chatAttachable2 != null) {
                                                                linkHandler2.d(wishlistActivity4, contactUsMethod2, i6, i7, chatAttachable2);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                        default:
                                                            ContactUsMethod contactUsMethod3 = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion6 = WishlistActivity.t;
                                                            contactUsMethod3.getClass();
                                                            WishlistActivity wishlistActivity5 = wishlistActivity2;
                                                            LinkHandler linkHandler3 = wishlistActivity5.q;
                                                            if (linkHandler3 == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable3 = wishlistActivity5.r;
                                                            if (chatAttachable3 != null) {
                                                                linkHandler3.d(wishlistActivity5, contactUsMethod3, i6, i7, chatAttachable3);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                    }
                                                }
                                            };
                                            composer2.q(objX6);
                                        }
                                        Function1 function1 = (Function1) objX6;
                                        boolean zY6 = composer2.y(wishlistActivity2);
                                        Object objX7 = composer2.x();
                                        if (zY6 || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new f71(wishlistActivity2, 2);
                                            composer2.q(objX7);
                                        }
                                        SharedWishlistComposableKt.a(wishlistViewModelI, str2, function0, function2, function1, (Function0) objX7, composer2, 0);
                                        composer2.F();
                                    } else {
                                        composer2.L(246123275);
                                        Unit unit2 = Unit.f71739a;
                                        boolean zY7 = composer2.y(wishlistActivity2);
                                        Object objX8 = composer2.x();
                                        if (zY7 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new WishlistActivity$onCreate$1$1$2$6$1(wishlistActivity2, null);
                                            composer2.q(objX8);
                                        }
                                        EffectsKt.e(composer2, unit2, (Function2) objX8);
                                        WishlistViewModel wishlistViewModelI2 = wishlistActivity2.I();
                                        boolean booleanExtra = wishlistActivity2.getIntent().getBooleanExtra("IS_STORE_MODE_CONTEXT", false);
                                        boolean zY8 = composer2.y(wishlistActivity2);
                                        Object objX9 = composer2.x();
                                        if (zY8 || objX9 == composer$Companion$Empty$2) {
                                            WishlistActivity$onCreate$1$1$2$7$1 wishlistActivity$onCreate$1$1$2$7$1 = new WishlistActivity$onCreate$1$1$2$7$1(0, wishlistActivity2, WishlistActivity.class, "finish", "finish()V", 0);
                                            composer2.q(wishlistActivity$onCreate$1$1$2$7$1);
                                            objX9 = wishlistActivity$onCreate$1$1$2$7$1;
                                        }
                                        KFunction kFunction = (KFunction) objX9;
                                        boolean zY9 = composer2.y(wishlistActivity2);
                                        Object objX10 = composer2.x();
                                        if (zY9 || objX10 == composer$Companion$Empty$2) {
                                            objX10 = new WishlistActivity$onCreate$1$1$2$8$1(0, wishlistActivity2, WishlistActivity.class, "startWishlist", "startWishlist()V", 0);
                                            composer2.q(objX10);
                                        }
                                        KFunction kFunction2 = (KFunction) objX10;
                                        WishlistViewModel wishlistViewModelI3 = wishlistActivity2.I();
                                        boolean zY10 = composer2.y(wishlistViewModelI3);
                                        Object objX11 = composer2.x();
                                        if (zY10 || objX11 == composer$Companion$Empty$2) {
                                            objX11 = new WishlistActivity$onCreate$1$1$2$9$1(0, wishlistViewModelI3, WishlistViewModel.class, "nativeShareWishlist", "nativeShareWishlist()V", 0);
                                            composer2.q(objX11);
                                        }
                                        KFunction kFunction3 = (KFunction) objX11;
                                        boolean zY11 = composer2.y(wishlistActivity2);
                                        Object objX12 = composer2.x();
                                        if (zY11 || objX12 == composer$Companion$Empty$2) {
                                            WishlistActivity$onCreate$1$1$2$10$1 wishlistActivity$onCreate$1$1$2$10$1 = new WishlistActivity$onCreate$1$1$2$10$1(2, wishlistActivity2, WishlistActivity.class, "openProductDetails", "openProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                            composer2.q(wishlistActivity$onCreate$1$1$2$10$1);
                                            objX12 = wishlistActivity$onCreate$1$1$2$10$1;
                                        }
                                        KFunction kFunction4 = (KFunction) objX12;
                                        WishlistViewModel wishlistViewModelI4 = wishlistActivity2.I();
                                        boolean zY12 = composer2.y(wishlistViewModelI4);
                                        Object objX13 = composer2.x();
                                        if (zY12 || objX13 == composer$Companion$Empty$2) {
                                            objX13 = new WishlistActivity$onCreate$1$1$2$11$1(1, wishlistViewModelI4, WishlistViewModel.class, "deleteProduct", "deleteProduct-1Zqi3gk(Ljava/lang/String;)V", 0);
                                            composer2.q(objX13);
                                        }
                                        KFunction kFunction5 = (KFunction) objX13;
                                        WishlistViewModel wishlistViewModelI5 = wishlistActivity2.I();
                                        boolean zY13 = composer2.y(wishlistViewModelI5);
                                        Object objX14 = composer2.x();
                                        if (zY13 || objX14 == composer$Companion$Empty$2) {
                                            objX14 = new WishlistActivity$onCreate$1$1$2$12$1(2, wishlistViewModelI5, WishlistViewModel.class, "onItemExpanded", "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                            composer2.q(objX14);
                                        }
                                        KFunction kFunction6 = (KFunction) objX14;
                                        WishlistViewModel wishlistViewModelI6 = wishlistActivity2.I();
                                        boolean zY14 = composer2.y(wishlistViewModelI6);
                                        Object objX15 = composer2.x();
                                        if (zY14 || objX15 == composer$Companion$Empty$2) {
                                            objX15 = new WishlistActivity$onCreate$1$1$2$13$1(1, wishlistViewModelI6, WishlistViewModel.class, "onItemCollapsed", "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V", 0);
                                            composer2.q(objX15);
                                        }
                                        Function0 function3 = (Function0) kFunction;
                                        Function0 function4 = (Function0) kFunction2;
                                        Function0 function5 = (Function0) kFunction3;
                                        Function2 function6 = (Function2) kFunction6;
                                        Function1 function7 = (Function1) ((KFunction) objX15);
                                        Function1 function8 = (Function1) kFunction5;
                                        Function2 function9 = (Function2) kFunction4;
                                        boolean zY15 = composer2.y(wishlistActivity2);
                                        Object objX16 = composer2.x();
                                        if (zY15 || objX16 == composer$Companion$Empty$2) {
                                            objX16 = new f71(wishlistActivity2, 3);
                                            composer2.q(objX16);
                                        }
                                        Function0 function10 = (Function0) objX16;
                                        boolean zY16 = composer2.y(wishlistActivity2) | composer2.d(i6) | composer2.d(i7);
                                        Object objX17 = composer2.x();
                                        if (zY16 || objX17 == composer$Companion$Empty$2) {
                                            final int i8 = 2;
                                            objX17 = new Function1() { // from class: e71
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj5) {
                                                    switch (i8) {
                                                        case 0:
                                                            ContactUsMethod contactUsMethod = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion4 = WishlistActivity.t;
                                                            contactUsMethod.getClass();
                                                            WishlistActivity wishlistActivity3 = wishlistActivity2;
                                                            LinkHandler linkHandler = wishlistActivity3.q;
                                                            if (linkHandler == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable = wishlistActivity3.r;
                                                            if (chatAttachable != null) {
                                                                linkHandler.d(wishlistActivity3, contactUsMethod, i6, i7, chatAttachable);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                        case 1:
                                                            ContactUsMethod contactUsMethod2 = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion5 = WishlistActivity.t;
                                                            contactUsMethod2.getClass();
                                                            WishlistActivity wishlistActivity4 = wishlistActivity2;
                                                            LinkHandler linkHandler2 = wishlistActivity4.q;
                                                            if (linkHandler2 == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable2 = wishlistActivity4.r;
                                                            if (chatAttachable2 != null) {
                                                                linkHandler2.d(wishlistActivity4, contactUsMethod2, i6, i7, chatAttachable2);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                        default:
                                                            ContactUsMethod contactUsMethod3 = (ContactUsMethod) obj5;
                                                            WishlistActivity.Companion companion6 = WishlistActivity.t;
                                                            contactUsMethod3.getClass();
                                                            WishlistActivity wishlistActivity5 = wishlistActivity2;
                                                            LinkHandler linkHandler3 = wishlistActivity5.q;
                                                            if (linkHandler3 == null) {
                                                                Intrinsics.h("linkHandler");
                                                                throw null;
                                                            }
                                                            ChatAttachable chatAttachable3 = wishlistActivity5.r;
                                                            if (chatAttachable3 != null) {
                                                                linkHandler3.d(wishlistActivity5, contactUsMethod3, i6, i7, chatAttachable3);
                                                                return Unit.f71739a;
                                                            }
                                                            Intrinsics.h("chatAttachable");
                                                            throw null;
                                                    }
                                                }
                                            };
                                            composer2.q(objX17);
                                        }
                                        Function1 function11 = (Function1) objX17;
                                        boolean zY17 = composer2.y(wishlistActivity2);
                                        Object objX18 = composer2.x();
                                        if (zY17 || objX18 == composer$Companion$Empty$2) {
                                            objX18 = new f71(wishlistActivity2, 4);
                                            composer2.q(objX18);
                                        }
                                        WishlistComposableKt.a(wishlistViewModelI2, booleanExtra, false, function3, function4, function5, function6, function7, function8, function9, function10, function11, (Function0) objX18, composer2, KyberEngine.KyberPolyBytes, 0);
                                        composer2.F();
                                    }
                                    composer2.F();
                                } else {
                                    composer2.L(248302048);
                                    WishlistViewModel wishlistViewModelI7 = wishlistActivity2.I();
                                    boolean booleanExtra2 = wishlistActivity2.getIntent().getBooleanExtra("IS_STORE_MODE_CONTEXT", false);
                                    boolean zY18 = composer2.y(wishlistActivity2);
                                    Object objX19 = composer2.x();
                                    if (zY18 || objX19 == composer$Companion$Empty$2) {
                                        objX19 = new WishlistActivity$onCreate$1$1$2$17$1(0, wishlistActivity2, WishlistActivity.class, "finish", "finish()V", 0);
                                        composer2.q(objX19);
                                    }
                                    Function0 function12 = (Function0) ((KFunction) objX19);
                                    boolean zY19 = composer2.y(wishlistActivity2);
                                    Object objX20 = composer2.x();
                                    if (zY19 || objX20 == composer$Companion$Empty$2) {
                                        WishlistActivity$onCreate$1$1$2$18$1 wishlistActivity$onCreate$1$1$2$18$1 = new WishlistActivity$onCreate$1$1$2$18$1(0, wishlistActivity2, WishlistActivity.class, "startWishlist", "startWishlist()V", 0);
                                        composer2.q(wishlistActivity$onCreate$1$1$2$18$1);
                                        objX20 = wishlistActivity$onCreate$1$1$2$18$1;
                                    }
                                    Function0 function13 = (Function0) ((KFunction) objX20);
                                    boolean zY20 = composer2.y(wishlistActivity2);
                                    Object objX21 = composer2.x();
                                    if (zY20 || objX21 == composer$Companion$Empty$2) {
                                        WishlistActivity$onCreate$1$1$2$19$1 wishlistActivity$onCreate$1$1$2$19$1 = new WishlistActivity$onCreate$1$1$2$19$1(2, wishlistActivity2, WishlistActivity.class, "openProductDetails", "openProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                        composer2.q(wishlistActivity$onCreate$1$1$2$19$1);
                                        objX21 = wishlistActivity$onCreate$1$1$2$19$1;
                                    }
                                    Function2 function14 = (Function2) ((KFunction) objX21);
                                    WishlistViewModel wishlistViewModelI8 = wishlistActivity2.I();
                                    boolean zY21 = composer2.y(wishlistViewModelI8);
                                    Object objX22 = composer2.x();
                                    if (zY21 || objX22 == composer$Companion$Empty$2) {
                                        objX22 = new WishlistActivity$onCreate$1$1$2$20$1(1, wishlistViewModelI8, WishlistViewModel.class, "deleteProduct", "deleteProduct-1Zqi3gk(Ljava/lang/String;)V", 0);
                                        composer2.q(objX22);
                                    }
                                    Function1 function15 = (Function1) ((KFunction) objX22);
                                    boolean zY22 = composer2.y(wishlistActivity2);
                                    Object objX23 = composer2.x();
                                    if (zY22 || objX23 == composer$Companion$Empty$2) {
                                        objX23 = new f71(wishlistActivity2, 5);
                                        composer2.q(objX23);
                                    }
                                    Function0 function16 = (Function0) objX23;
                                    WishlistViewModel wishlistViewModelI9 = wishlistActivity2.I();
                                    boolean zY23 = composer2.y(wishlistViewModelI9);
                                    Object objX24 = composer2.x();
                                    if (zY23 || objX24 == composer$Companion$Empty$2) {
                                        objX24 = new WishlistActivity$onCreate$1$1$2$22$1(2, wishlistViewModelI9, WishlistViewModel.class, "onShareWishlistClicked", "onShareWishlistClicked(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                        composer2.q(objX24);
                                    }
                                    Function2 function17 = (Function2) ((KFunction) objX24);
                                    boolean zY24 = composer2.y(wishlistActivity2) | composer2.d(i6) | composer2.d(i7);
                                    Object objX25 = composer2.x();
                                    if (zY24 || objX25 == composer$Companion$Empty$2) {
                                        objX25 = new Function1() { // from class: e71
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                switch (i4) {
                                                    case 0:
                                                        ContactUsMethod contactUsMethod = (ContactUsMethod) obj5;
                                                        WishlistActivity.Companion companion4 = WishlistActivity.t;
                                                        contactUsMethod.getClass();
                                                        WishlistActivity wishlistActivity3 = wishlistActivity2;
                                                        LinkHandler linkHandler = wishlistActivity3.q;
                                                        if (linkHandler == null) {
                                                            Intrinsics.h("linkHandler");
                                                            throw null;
                                                        }
                                                        ChatAttachable chatAttachable = wishlistActivity3.r;
                                                        if (chatAttachable != null) {
                                                            linkHandler.d(wishlistActivity3, contactUsMethod, i6, i7, chatAttachable);
                                                            return Unit.f71739a;
                                                        }
                                                        Intrinsics.h("chatAttachable");
                                                        throw null;
                                                    case 1:
                                                        ContactUsMethod contactUsMethod2 = (ContactUsMethod) obj5;
                                                        WishlistActivity.Companion companion5 = WishlistActivity.t;
                                                        contactUsMethod2.getClass();
                                                        WishlistActivity wishlistActivity4 = wishlistActivity2;
                                                        LinkHandler linkHandler2 = wishlistActivity4.q;
                                                        if (linkHandler2 == null) {
                                                            Intrinsics.h("linkHandler");
                                                            throw null;
                                                        }
                                                        ChatAttachable chatAttachable2 = wishlistActivity4.r;
                                                        if (chatAttachable2 != null) {
                                                            linkHandler2.d(wishlistActivity4, contactUsMethod2, i6, i7, chatAttachable2);
                                                            return Unit.f71739a;
                                                        }
                                                        Intrinsics.h("chatAttachable");
                                                        throw null;
                                                    default:
                                                        ContactUsMethod contactUsMethod3 = (ContactUsMethod) obj5;
                                                        WishlistActivity.Companion companion6 = WishlistActivity.t;
                                                        contactUsMethod3.getClass();
                                                        WishlistActivity wishlistActivity5 = wishlistActivity2;
                                                        LinkHandler linkHandler3 = wishlistActivity5.q;
                                                        if (linkHandler3 == null) {
                                                            Intrinsics.h("linkHandler");
                                                            throw null;
                                                        }
                                                        ChatAttachable chatAttachable3 = wishlistActivity5.r;
                                                        if (chatAttachable3 != null) {
                                                            linkHandler3.d(wishlistActivity5, contactUsMethod3, i6, i7, chatAttachable3);
                                                            return Unit.f71739a;
                                                        }
                                                        Intrinsics.h("chatAttachable");
                                                        throw null;
                                                }
                                            }
                                        };
                                        composer2.q(objX25);
                                    }
                                    Function1 function18 = (Function1) objX25;
                                    boolean zY25 = composer2.y(wishlistActivity2);
                                    Object objX26 = composer2.x();
                                    if (zY25 || objX26 == composer$Companion$Empty$2) {
                                        objX26 = new f71(wishlistActivity2, 0);
                                        composer2.q(objX26);
                                    }
                                    WishlistNavHostKt.a(navHostControllerA, wishlistViewModelI7, booleanExtra2, function12, function13, function14, function15, function16, function17, function18, (Function0) objX26, composer2, 3072);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.main.models;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import com.batch.android.b.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.main.navigation.CartRoute;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import com.vuitton.android.presentation.screen.main.navigation.ServiceRoute;
import com.vuitton.android.presentation.screen.main.navigation.WishlistRoute;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'FEED' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u0017\u0010\u0018\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001d\u0010\u001bR\"\u0010\u001e\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0017\u0010$\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!R\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00140\f8\u0006¢\u0006\f\n\u0004\b&\u0010\u000f\u001a\u0004\b'\u0010\u0011R\u0017\u0010)\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0019\u0010-\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5¨\u00066"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "", "Lkotlin/reflect/KClass;", "route", "Lkotlin/reflect/KClass;", NBSSpanMetricUnit.Hour, "()Lkotlin/reflect/KClass;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "k", "()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "Landroidx/compose/runtime/MutableState;", "", "badgeCount", "Landroidx/compose/runtime/MutableState;", NBSSpanMetricUnit.Bit, "()Landroidx/compose/runtime/MutableState;", "setBadgeCount", "(Landroidx/compose/runtime/MutableState;)V", "", "isPreviousSelected", b.d, "setPreviousSelected", "openAnimation", "I", "g", "()I", "closeAnimation", NBSSpanMetricUnit.Day, "hasShownAnimation", "Z", "f", "()Z", "v", "(Z)V", "showSearchBar", "j", "showNavBar", "i", "", "automationTag", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "badgeSemanticsRes", "Ljava/lang/Integer;", "c", "()Ljava/lang/Integer;", "FEED", "CATALOG", "SERVICES", "WISHLIST", "CART", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MainTopLevelDestination {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MainTopLevelDestination[] $VALUES;
    public static final MainTopLevelDestination CART;
    public static final MainTopLevelDestination CATALOG;
    public static final MainTopLevelDestination FEED;
    public static final MainTopLevelDestination SERVICES;
    public static final MainTopLevelDestination WISHLIST;
    private final String automationTag;
    private MutableState<Integer> badgeCount;
    private final Integer badgeSemanticsRes;
    private final int closeAnimation;
    private boolean hasShownAnimation;
    private MutableState<Boolean> isPreviousSelected;
    private final int openAnimation;
    private final KClass<?> route;
    private final MutableState<Boolean> showNavBar;
    private final boolean showSearchBar;
    private final StringResourceUiModel title;

    static {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        MainTopLevelDestination mainTopLevelDestination = new MainTopLevelDestination("FEED", 0, reflectionFactory.b(FeedRoute.class), new StringResourceUiModel.ResId(R.string.homepage_menu_explore, null, 2, null), R.raw.animation_flower_open, R.raw.animation_flower_close, true, "bottomBar_explore_button", null, 1356);
        FEED = mainTopLevelDestination;
        MainTopLevelDestination mainTopLevelDestination2 = new MainTopLevelDestination("CATALOG", 1, reflectionFactory.b(CatalogRoute.class), new StringResourceUiModel.ResId(R.string.homepage_menu_shop, null, 2, null), R.raw.animation_rose_open, R.raw.animation_rose_close, true, "bottomBar_shop_button", null, 1356);
        CATALOG = mainTopLevelDestination2;
        MainTopLevelDestination mainTopLevelDestination3 = new MainTopLevelDestination("SERVICES", 2, reflectionFactory.b(ServiceRoute.class), new StringResourceUiModel.ResId(R.string.homepage_menu_services, null, 2, null), R.raw.animation_flower_open, R.raw.animation_flower_close, false, "bottomBar_services_button", null, 1356);
        SERVICES = mainTopLevelDestination3;
        MainTopLevelDestination mainTopLevelDestination4 = new MainTopLevelDestination("WISHLIST", 3, reflectionFactory.b(WishlistRoute.class), new StringResourceUiModel.ResId(R.string.tab_bar_wishlist, null, 2, null), R.raw.animation_rose_open, R.raw.animation_rose_close, false, "bottomBar_wishlist_button", null, 1356);
        WISHLIST = mainTopLevelDestination4;
        MainTopLevelDestination mainTopLevelDestination5 = new MainTopLevelDestination("CART", 4, reflectionFactory.b(CartRoute.class), new StringResourceUiModel.ResId(R.string.homepage_menu_cart, null, 2, null), R.raw.animation_flower_open, R.raw.animation_flower_close, false, "bottomBar_cart_button", Integer.valueOf(R.plurals.alt_cart_number_of_products), 332);
        CART = mainTopLevelDestination5;
        MainTopLevelDestination[] mainTopLevelDestinationArr = {mainTopLevelDestination, mainTopLevelDestination2, mainTopLevelDestination3, mainTopLevelDestination4, mainTopLevelDestination5};
        $VALUES = mainTopLevelDestinationArr;
        $ENTRIES = EnumEntriesKt.a(mainTopLevelDestinationArr);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainTopLevelDestination(String str, int i2, KClass kClass, StringResourceUiModel.ResId resId, int i3, int i4, boolean z, String str2, Integer num, int i5) {
        super(str, i2);
        MutableIntState mutableIntStateA = SnapshotIntStateKt.a(0);
        MutableState<Boolean> mutableStateG = SnapshotStateKt.g(Boolean.FALSE);
        MutableState<Boolean> mutableStateG2 = SnapshotStateKt.g(Boolean.TRUE);
        num = (i5 & 1024) != 0 ? null : num;
        this.route = kClass;
        this.title = resId;
        this.badgeCount = mutableIntStateA;
        this.isPreviousSelected = mutableStateG;
        this.openAnimation = i3;
        this.closeAnimation = i4;
        this.hasShownAnimation = false;
        this.showSearchBar = z;
        this.showNavBar = mutableStateG2;
        this.automationTag = str2;
        this.badgeSemanticsRes = num;
    }

    public static EnumEntries e() {
        return $ENTRIES;
    }

    public static MainTopLevelDestination valueOf(String str) {
        return (MainTopLevelDestination) Enum.valueOf(MainTopLevelDestination.class, str);
    }

    public static MainTopLevelDestination[] values() {
        return (MainTopLevelDestination[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAutomationTag() {
        return this.automationTag;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final MutableState getBadgeCount() {
        return this.badgeCount;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Integer getBadgeSemanticsRes() {
        return this.badgeSemanticsRes;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getCloseAnimation() {
        return this.closeAnimation;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getHasShownAnimation() {
        return this.hasShownAnimation;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final int getOpenAnimation() {
        return this.openAnimation;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final KClass getRoute() {
        return this.route;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final MutableState getShowNavBar() {
        return this.showNavBar;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getShowSearchBar() {
        return this.showSearchBar;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final StringResourceUiModel getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final MutableState getIsPreviousSelected() {
        return this.isPreviousSelected;
    }

    public final void v(boolean z) {
        this.hasShownAnimation = z;
    }
}

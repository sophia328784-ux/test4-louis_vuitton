package com.vuitton.android.presentation.model.onboarding;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.model.onboarding.IconLauncherType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.model.onboarding.IconLauncherType[]) from 0x00a6: INVOKE (r0v1 com.vuitton.android.presentation.model.onboarding.IconLauncherType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006R\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", "", "", "iconId", "Ljava/lang/String;", NBSSpanMetricUnit.Day, "()Ljava/lang/String;", "", "iconResource", "I", "e", "()I", "componentName", "a", "contentDescription", NBSSpanMetricUnit.Bit, "CLASSIC", "BAG", "MURAKAMI", "MURAKAMI_PATTERN", "COLOR_DAMIER", "MONOGRAM", "TWEED_DAMIER", "ARMY_DAMIER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IconLauncherType {
    CLASSIC("logoLv", "SplashScreenIcon1Activity", R.drawable.icon_lv, R.string.alt_app_icon_logolv),
    BAG("bag", "SplashScreenIcon2Activity", R.drawable.icon_bag, R.string.alt_app_icon_bag),
    MURAKAMI("murakami", "SplashScreenIcon3Activity", R.drawable.icon_murakami, R.string.alt_app_icon_murakami),
    MURAKAMI_PATTERN("murakamiPattern", "SplashScreenIcon4Activity", R.drawable.icon_murakami_pattern, R.string.alt_app_icon_murakamiblack),
    COLOR_DAMIER("colorDamier", "SplashScreenIcon5Activity", R.drawable.icon_damier_patternsquare, R.string.alt_app_icon_patternsquare),
    MONOGRAM("monogram", "SplashScreenIcon6Activity", R.drawable.icon_monogram, R.string.alt_app_icon_monogram),
    TWEED_DAMIER("tweedDamier", "SplashScreenIcon7Activity", R.drawable.icon_color_damier, R.string.alt_app_icon_coloreddamier),
    ARMY_DAMIER("armyDamier", "SplashScreenIcon8Activity", R.drawable.icon_army_damier, R.string.alt_app_icon_camo);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String componentName;
    private final int contentDescription;
    private final String iconId;
    private final int iconResource;

    static {
        $ENTRIES = EnumEntriesKt.a(iconLauncherTypeArr);
    }

    public IconLauncherType(String str, String str2, int i2, int i3) {
        super(str, i);
        this.iconId = str;
        this.iconResource = i2;
        this.componentName = str2;
        this.contentDescription = i3;
    }

    public static EnumEntries c() {
        return $ENTRIES;
    }

    public static IconLauncherType valueOf(String str) {
        return (IconLauncherType) Enum.valueOf(IconLauncherType.class, str);
    }

    public static IconLauncherType[] values() {
        return (IconLauncherType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getComponentName() {
        return this.componentName;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getContentDescription() {
        return this.contentDescription;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getIconId() {
        return this.iconId;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getIconResource() {
        return this.iconResource;
    }
}

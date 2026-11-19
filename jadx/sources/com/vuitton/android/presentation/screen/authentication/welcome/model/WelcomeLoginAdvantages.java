package com.vuitton.android.presentation.screen.authentication.welcome.model;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeLoginAdvantages[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeLoginAdvantages[]) from 0x0081: INVOKE (r0v1 com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeLoginAdvantages[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeLoginAdvantages;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", NBSSpanMetricUnit.Bit, "()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "description", "a", "Default", "ContentCuration", "PersonalWishList", "ExclusiveService", "MyLVAccount", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WelcomeLoginAdvantages {
    Default(null, new StringResourceUiModel.ResId(R.string.onboarding_connexion_description, null, 2, null)),
    ContentCuration(new StringResourceUiModel.ResId(R.string.mylv_native_authent_content_curation_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_authent_content_curation_description, null, 2, null)),
    PersonalWishList(new StringResourceUiModel.ResId(R.string.mylv_native_authent_personal_wishlist_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_authent_personal_wishlist_description, null, 2, null)),
    ExclusiveService(new StringResourceUiModel.ResId(R.string.mylv_native_authent_exclusive_services_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_authent_exclusive_services_description, null, 2, null)),
    MyLVAccount(new StringResourceUiModel.ResId(R.string.mylv_native_authent_mylv_account_title, null, 2, null), new StringResourceUiModel.ResId(R.string.mylv_native_authent_mylv_account_description, null, 2, null));

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final StringResourceUiModel description;
    private final StringResourceUiModel title;

    static {
        $ENTRIES = EnumEntriesKt.a(welcomeLoginAdvantagesArr);
    }

    public WelcomeLoginAdvantages(StringResourceUiModel.ResId resId, StringResourceUiModel.ResId resId2) {
        super(str, i);
        this.title = resId;
        this.description = resId2;
    }

    public static WelcomeLoginAdvantages valueOf(String str) {
        return (WelcomeLoginAdvantages) Enum.valueOf(WelcomeLoginAdvantages.class, str);
    }

    public static WelcomeLoginAdvantages[] values() {
        return (WelcomeLoginAdvantages[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final StringResourceUiModel getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final StringResourceUiModel getTitle() {
        return this.title;
    }
}

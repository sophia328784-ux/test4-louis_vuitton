package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContributionLinkNavigator f76138c;
    public final /* synthetic */ Context d;

    public /* synthetic */ m(ContributionLinkNavigator contributionLinkNavigator, Context context, int i2) {
        this.f76137b = i2;
        this.f76138c = contributionLinkNavigator;
        this.d = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76137b;
        Context context = this.d;
        switch (i2) {
            case 0:
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                if (contributionLinkUiModel != null) {
                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                    appCompatActivityB.getClass();
                    ContributionLinkNavigator.a(this.f76138c, appCompatActivityB, contributionLinkUiModel, null, null, null, 28);
                }
                break;
            case 1:
                String str = (String) obj;
                str.getClass();
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                appCompatActivityB2.getClass();
                ContributionLinkNavigator.a(this.f76138c, appCompatActivityB2, new ContributionLinkUiModel.ImmersiveArticle(str), null, null, null, 16);
                break;
            case 2:
                String str2 = (String) obj;
                str2.getClass();
                AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context);
                appCompatActivityB3.getClass();
                ContributionLinkNavigator.a(this.f76138c, appCompatActivityB3, new ContributionLinkUiModel.ImmersiveArticle(str2), null, null, null, 16);
                break;
            case 3:
                ContributionLinkUiModel contributionLinkUiModel2 = (ContributionLinkUiModel) obj;
                contributionLinkUiModel2.getClass();
                AppCompatActivity appCompatActivityB4 = ContextExtKt.b(context);
                appCompatActivityB4.getClass();
                ContributionLinkNavigator.a(this.f76138c, appCompatActivityB4, contributionLinkUiModel2, null, ContributionLinkNavigator.ContributionLinkNavigationAnimation.PUSH_LEFT, null, 20);
                break;
            default:
                ContributionLinkUiModel contributionLinkUiModel3 = (ContributionLinkUiModel) obj;
                contributionLinkUiModel3.getClass();
                AppCompatActivity appCompatActivityB5 = ContextExtKt.b(context);
                appCompatActivityB5.getClass();
                ContributionLinkNavigator.a(this.f76138c, appCompatActivityB5, contributionLinkUiModel3, null, null, null, 28);
                break;
        }
        return Unit.f71739a;
    }
}

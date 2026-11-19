package defpackage;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t31 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79958b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79959c;
    public final /* synthetic */ TheLookImmersiveArticleViewState d;

    public /* synthetic */ t31(TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, Function1 function1) {
        this.d = theLookImmersiveArticleViewState;
        this.f79959c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79958b;
        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = this.d;
        Function1 function1 = this.f79959c;
        switch (i2) {
            case 0:
                if (!theLookImmersiveArticleViewState.g) {
                    function1.invoke(Integer.valueOf(theLookImmersiveArticleViewState.f65396f));
                }
                break;
            default:
                function1.invoke(((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState.f65395e.get(theLookImmersiveArticleViewState.f65396f)).f58681a);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ t31(Function1 function1, TheLookImmersiveArticleViewState theLookImmersiveArticleViewState) {
        this.f79959c = function1;
        this.d = theLookImmersiveArticleViewState;
    }
}

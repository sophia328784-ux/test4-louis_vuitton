package defpackage;

import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionPromptSuggestionsKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f75916c;
    public final /* synthetic */ String d;

    public /* synthetic */ l1(int i2, String str, Function1 function1) {
        this.f75915b = i2;
        this.f75916c = function1;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75915b;
        String str = this.d;
        Function1 function1 = this.f75916c;
        switch (i2) {
            case 0:
                float f2 = AICompanionPromptSuggestionsKt.f52814a;
                function1.invoke(str);
                break;
            case 1:
                function1.invoke(str);
                break;
            case 2:
                function1.invoke(str);
                break;
            case 3:
                function1.invoke(str);
                break;
            case 4:
                function1.invoke(str);
                break;
            case 5:
                ProductUiModel.Companion companion = ProductUiModel.d1;
                function1.invoke(str);
                break;
            default:
                ProductUiModel.Companion companion2 = ProductUiModel.d1;
                function1.invoke(str);
                break;
        }
        return Unit.f71739a;
    }
}

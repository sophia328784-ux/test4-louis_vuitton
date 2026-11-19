package defpackage;

import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rm implements LinkInteractionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f79557b;

    public /* synthetic */ rm(Function1 function1, int i2) {
        this.f79556a = i2;
        this.f79557b = function1;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void a(LinkAnnotation linkAnnotation) {
        String str;
        int i2 = this.f79556a;
        Function1 function1 = this.f79557b;
        switch (i2) {
            case 0:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 1:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 2:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 3:
                float f2 = NativeCartBottomSheetsKt.f55062a;
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 4:
                linkAnnotation.getClass();
                LinkAnnotation.Url url = linkAnnotation instanceof LinkAnnotation.Url ? (LinkAnnotation.Url) linkAnnotation : null;
                if (url != null && (str = url.f10458a) != null) {
                    function1.invoke(str);
                    break;
                }
                break;
            case 5:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 6:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            case 7:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
            default:
                linkAnnotation.getClass();
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).f10458a);
                break;
        }
    }
}

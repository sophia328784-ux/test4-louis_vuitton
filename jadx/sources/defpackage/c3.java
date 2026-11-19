package defpackage;

import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c3 implements LinkInteractionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f21045b;

    public /* synthetic */ c3(Function0 function0, int i2) {
        this.f21044a = i2;
        this.f21045b = function0;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void a(LinkAnnotation linkAnnotation) {
        int i2 = this.f21044a;
        Function0 function0 = this.f21045b;
        switch (i2) {
            case 0:
                linkAnnotation.getClass();
                function0.mo47invoke();
                break;
            case 1:
                linkAnnotation.getClass();
                function0.mo47invoke();
                break;
            case 2:
                linkAnnotation.getClass();
                function0.mo47invoke();
                break;
            case 3:
                linkAnnotation.getClass();
                function0.mo47invoke();
                break;
            default:
                linkAnnotation.getClass();
                function0.mo47invoke();
                break;
        }
    }
}

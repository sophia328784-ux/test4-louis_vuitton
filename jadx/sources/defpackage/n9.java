package defpackage;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n9 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnnotatedString f76474c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ n9(AnnotatedString annotatedString, Function0 function0, int i2) {
        this.f76473b = i2;
        this.f76474c = annotatedString;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76473b;
        Function0 function0 = this.d;
        AnnotatedString annotatedString = this.f76474c;
        int iIntValue = ((Integer) obj).intValue();
        switch (i2) {
            case 0:
                if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iIntValue, iIntValue, "link"))) != null) {
                    function0.mo47invoke();
                }
                break;
            case 1:
                if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iIntValue, iIntValue, "link"))) != null) {
                    function0.mo47invoke();
                }
                break;
            case 2:
                if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iIntValue, iIntValue, "link"))) != null) {
                    function0.mo47invoke();
                }
                break;
            case 3:
                if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iIntValue, iIntValue, "link"))) != null) {
                    function0.mo47invoke();
                }
                break;
            default:
                if (((AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.c(iIntValue, iIntValue, "link"))) != null) {
                    function0.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}

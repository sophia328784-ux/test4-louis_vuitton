package androidx.compose.ui.platform.actionmodecallback;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u0001B}\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;", "", "Lkotlin/Function0;", "", "onActionModeDestroy", "Landroidx/compose/ui/geometry/Rect;", "rect", "onCopyRequested", "onPasteRequested", "onCutRequested", "onSelectAllRequested", "onAutofillRequested", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextActionModeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f10219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f10220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f10221c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f10222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function0 f10223f;

    /* JADX WARN: Illegal instructions before constructor call */
    public TextActionModeCallback(Function0 function0, Rect rect, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        function0 = (i2 & 1) != 0 ? null : function0;
        if ((i2 & 2) != 0) {
            Rect.f8809e.getClass();
            rect = Rect.f8810f;
        }
        this(function0, rect, (i2 & 4) != 0 ? null : function1, (i2 & 8) != 0 ? null : function2, (i2 & 16) != 0 ? null : function3, (i2 & 32) != 0 ? null : function4, (i2 & 64) != 0 ? null : function5);
    }

    public TextActionModeCallback(Function0<Unit> function0, Rect rect, Function0<Unit> function1, Function0<Unit> function2, Function0<Unit> function3, Function0<Unit> function4, Function0<Unit> function5) {
        this.f10219a = function0;
        this.f10220b = function1;
        this.f10221c = function2;
        this.d = function3;
        this.f10222e = function4;
        this.f10223f = function5;
    }

    public TextActionModeCallback() {
        this(null, null, null, null, null, null, null, CertificateBody.profileType, null);
    }
}

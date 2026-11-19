package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.ModalBottomSheetProperties;
import androidx.compose.material3.ModalBottomSheet_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.vuitton.android.designkit.components.components.LVFadingTextKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vr implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80642b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80643c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80645f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80646h;

    public /* synthetic */ vr(DatePickerDefaults datePickerDefaults, Long l, int i2, DatePickerFormatter datePickerFormatter, Modifier modifier, long j2, int i3) {
        this.f80645f = datePickerDefaults;
        this.g = l;
        this.f80644e = i2;
        this.f80646h = datePickerFormatter;
        this.f80643c = modifier;
        this.d = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80642b;
        Object obj3 = this.f80643c;
        Object obj4 = this.f80646h;
        Object obj5 = this.g;
        Object obj6 = this.f80645f;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                int iA = RecomposeScopeImplKt.a(199681);
                ((DatePickerDefaults) obj6).a((Long) obj5, this.f80644e, (DatePickerFormatter) obj4, (Modifier) obj3, this.d, composer, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(196609);
                LVFadingTextKt.a((Modifier) obj3, (String) obj6, (TextStyle) obj5, this.d, (TextAlign) obj4, (Composer) obj, iA2, this.f80644e);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(this.f80644e | 1);
                long j2 = this.d;
                ModalBottomSheet_androidKt.a((Function0) obj6, j2, (ModalBottomSheetProperties) obj5, (Animatable) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ vr(Modifier modifier, String str, TextStyle textStyle, long j2, TextAlign textAlign, int i2, int i3) {
        this.f80643c = modifier;
        this.f80645f = str;
        this.g = textStyle;
        this.d = j2;
        this.f80646h = textAlign;
        this.f80644e = i3;
    }

    public /* synthetic */ vr(Function0 function0, long j2, ModalBottomSheetProperties modalBottomSheetProperties, Animatable animatable, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f80645f = function0;
        this.d = j2;
        this.g = modalBottomSheetProperties;
        this.f80646h = animatable;
        this.f80643c = composableLambdaImpl;
        this.f80644e = i2;
    }
}

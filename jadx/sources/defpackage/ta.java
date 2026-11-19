package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.compose.components.TextWithTypingAnimationKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt;
import java.text.BreakIterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ta implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80019b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80020c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f80021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f80022f;
    public final /* synthetic */ long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f80023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80025j;

    public /* synthetic */ ta(Modifier modifier, String str, TextStyle textStyle, long j2, BreakIterator breakIterator, long j3, long j4, Function0 function0, int i2) {
        this.f80020c = modifier;
        this.d = str;
        this.f80024i = textStyle;
        this.f80021e = j2;
        this.f80025j = breakIterator;
        this.f80022f = j3;
        this.g = j4;
        this.f80023h = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80019b;
        Object obj3 = this.f80025j;
        Object obj4 = this.f80024i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                AudioGuideSwipeablePushCardKt.a(this.f80020c, this.d, (String) obj4, (String) obj3, this.f80021e, this.f80022f, this.g, this.f80023h, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                TextWithTypingAnimationKt.a(this.f80020c, this.d, (TextStyle) obj4, this.f80021e, (BreakIterator) obj3, this.f80022f, this.g, this.f80023h, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ta(Modifier modifier, String str, String str2, String str3, long j2, long j3, long j4, Function0 function0, int i2) {
        this.f80020c = modifier;
        this.d = str;
        this.f80024i = str2;
        this.f80025j = str3;
        this.f80021e = j2;
        this.f80022f = j3;
        this.g = j4;
        this.f80023h = function0;
    }
}

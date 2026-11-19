package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.unit.IntOffset;
import defpackage.cl0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6164b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6165c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g(TextLinkScope textLinkScope, AnnotatedString.Range range, LinkStateInteractionSourceObserver linkStateInteractionSourceObserver) {
        this.f6165c = range;
        this.d = linkStateInteractionSourceObserver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j2;
        TextLinkStyles f10459b;
        TextLinkStyles f10459b2;
        TextLinkStyles f10459b3;
        int i2 = this.f6164b;
        Object obj2 = this.d;
        Object obj3 = this.f6165c;
        switch (i2) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                ArrayList arrayListD = BasicTextKt.d((List) obj3, ((LinksTextMeasurePolicy) obj2).f5938a);
                if (arrayListD != null) {
                    int size = arrayListD.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        Pair pair = (Pair) arrayListD.get(i3);
                        Placeable placeable = (Placeable) pair.f71705b;
                        Function0 function0 = (Function0) pair.f71706c;
                        if (function0 != null) {
                            j2 = ((IntOffset) function0.mo47invoke()).f11014a;
                        } else {
                            IntOffset.f11012b.getClass();
                            j2 = 0;
                        }
                        Placeable.PlacementScope.u(placementScope, placeable, j2);
                    }
                }
                break;
            default:
                AnnotatedString.Range range = (AnnotatedString.Range) obj3;
                MutableIntState mutableIntState = ((LinkStateInteractionSourceObserver) obj2).f5935b;
                TextAnnotatorScope textAnnotatorScope = (TextAnnotatorScope) obj;
                LinkAnnotation linkAnnotation = (LinkAnnotation) range.f10428a;
                TextLinkStyles f10459b4 = linkAnnotation.getF10459b();
                SpanStyle spanStyleD = null;
                SpanStyle spanStyle = f10459b4 != null ? f10459b4.f10557a : null;
                SpanStyle spanStyleD2 = ((((SnapshotMutableIntStateImpl) mutableIntState).f() & 1) == 0 || (f10459b3 = linkAnnotation.getF10459b()) == null) ? null : f10459b3.f10558b;
                if (spanStyle != null) {
                    spanStyleD2 = spanStyle.d(spanStyleD2);
                }
                SpanStyle spanStyleD3 = ((((SnapshotMutableIntStateImpl) mutableIntState).f() & 2) == 0 || (f10459b2 = linkAnnotation.getF10459b()) == null) ? null : f10459b2.f10559c;
                if (spanStyleD2 != null) {
                    spanStyleD3 = spanStyleD2.d(spanStyleD3);
                }
                if ((((SnapshotMutableIntStateImpl) mutableIntState).f() & 4) != 0 && (f10459b = linkAnnotation.getF10459b()) != null) {
                    spanStyleD = f10459b.d;
                }
                if (spanStyleD3 != null) {
                    spanStyleD = spanStyleD3.d(spanStyleD);
                }
                textAnnotatorScope.getClass();
                textAnnotatorScope.f5949b = textAnnotatorScope.f5948a.e(new cl0(new Ref$BooleanRef(), range, spanStyleD, 16));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ g(List list, LinksTextMeasurePolicy linksTextMeasurePolicy) {
        this.f6165c = list;
        this.d = linksTextMeasurePolicy;
    }
}

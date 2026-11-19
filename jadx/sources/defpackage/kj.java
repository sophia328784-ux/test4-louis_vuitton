package defpackage;

import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.carousell.CarouselLMultipleKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import defpackage.bp;
import defpackage.md;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kj implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71660b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71661c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f71662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f71663f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f71665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f71666j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f71667k;

    public /* synthetic */ kj(TextFieldSelectionManager textFieldSelectionManager, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, Function1 function1, TextFieldValue textFieldValue, OffsetMapping offsetMapping, Density density, int i2) {
        this.g = textFieldSelectionManager;
        this.f71664h = legacyTextFieldState;
        this.f71661c = z;
        this.d = z2;
        this.f71662e = function1;
        this.f71665i = textFieldValue;
        this.f71666j = offsetMapping;
        this.f71667k = density;
        this.f71663f = i2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b8  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        int i2 = this.f71660b;
        Object obj3 = this.f71667k;
        Object obj4 = this.f71666j;
        Object obj5 = this.f71665i;
        Object obj6 = this.f71664h;
        Object obj7 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                CarouselLMultipleKt.b((Modifier) obj7, (CarouselItemTitlesUiModel) obj6, (List) obj5, (LVColorScheme) obj4, this.f71661c, this.d, this.f71662e, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1 | this.f71663f));
                return Unit.f71739a;
            default:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj7;
                final LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj6;
                final TextFieldValue textFieldValue = (TextFieldValue) obj5;
                final OffsetMapping offsetMapping = (OffsetMapping) obj4;
                final Density density = (Density) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    final Function1 function1 = this.f71662e;
                    final int i3 = this.f71663f;
                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                            LegacyTextFieldState legacyTextFieldState2 = legacyTextFieldState;
                            legacyTextFieldState2.f5925a.a(intrinsicMeasureScope.getF9495b());
                            MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState2.f5925a.f5957j;
                            if (multiParagraphIntrinsics != null) {
                                return TextDelegateKt.a(multiParagraphIntrinsics.b());
                            }
                            md.k("layoutIntrinsics must be called first");
                            return 0;
                        }

                        /* JADX WARN: Code duplicated, block: B:42:0x00ba  */
                        /* JADX WARN: Code duplicated, block: B:53:0x013b  */
                        /* JADX WARN: Code duplicated, block: B:55:0x0141  */
                        /* JADX WARN: Code duplicated, block: B:56:0x0146  */
                        /* JADX WARN: Code duplicated, block: B:61:0x0157  */
                        /* JADX WARN: Code duplicated, block: B:73:0x0207  */
                        /* JADX WARN: Code duplicated, block: B:75:0x020d  */
                        /* JADX WARN: Code duplicated, block: B:76:0x0211  */
                        /* JADX WARN: Code duplicated, block: B:78:0x0232  */
                        /* JADX WARN: Code duplicated, block: B:81:0x023a  */
                        /* JADX WARN: Code duplicated, block: B:82:0x0245  */
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r6v2 */
                        /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.ui.layout.LayoutCoordinates] */
                        /* JADX WARN: Type inference failed for: r6v5 */
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                            TextLayoutResult textLayoutResult;
                            TextLayoutResultProxy textLayoutResultProxy;
                            MeasureResult measureResult;
                            TextLayoutResult textLayoutResult2;
                            TextLayoutResult textLayoutResult3;
                            int i4;
                            CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                            int iA;
                            TextLayoutResultProxy textLayoutResultProxy2;
                            ?? r6;
                            int iH;
                            int i5;
                            Snapshot.Companion companion = Snapshot.f8462e;
                            LegacyTextFieldState legacyTextFieldState2 = legacyTextFieldState;
                            companion.getClass();
                            Snapshot snapshotA = Snapshot.Companion.a();
                            Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                            try {
                                TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState2.d();
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                TextLayoutResult textLayoutResult4 = textLayoutResultProxyD != null ? textLayoutResultProxyD.f6011a : null;
                                TextFieldDelegate.Companion companion2 = TextFieldDelegate.f5962a;
                                TextDelegate textDelegate = legacyTextFieldState2.f5925a;
                                LayoutDirection f9495b = measureScope.getF9495b();
                                companion2.getClass();
                                int i6 = textDelegate.f5954f;
                                boolean z2 = textDelegate.f5953e;
                                int i7 = textDelegate.f5952c;
                                if (textLayoutResult4 != null) {
                                    TextLayoutInput textLayoutInput = textLayoutResult4.f10552a;
                                    MultiParagraph multiParagraph = textLayoutResult4.f10553b;
                                    AnnotatedString annotatedString = textDelegate.f5950a;
                                    TextStyle textStyle = textDelegate.f5951b;
                                    List list2 = textDelegate.f5956i;
                                    Density density2 = textDelegate.g;
                                    measureResult = null;
                                    FontFamily.Resolver resolver = textDelegate.f5955h;
                                    TextLayoutResult textLayoutResult5 = textLayoutResult4;
                                    if (multiParagraph.f10461a.a()) {
                                        textLayoutResultProxy = textLayoutResultProxyD;
                                        textLayoutResult = textLayoutResult5;
                                    } else {
                                        AnnotatedString annotatedString2 = textLayoutInput.f10543a;
                                        long j3 = textLayoutInput.f10550j;
                                        if (Intrinsics.c(annotatedString2, annotatedString) && textLayoutInput.f10544b.c(textStyle) && Intrinsics.c(textLayoutInput.f10545c, list2) && textLayoutInput.d == i7 && textLayoutInput.f10546e == z2) {
                                            int i8 = textLayoutInput.f10547f;
                                            TextOverflow.Companion companion3 = TextOverflow.f10989a;
                                            if (i8 == i6 && Intrinsics.c(textLayoutInput.g, density2) && textLayoutInput.f10548h == f9495b && Intrinsics.c(textLayoutInput.f10549i, resolver) && Constraints.j(j2) == Constraints.j(j3)) {
                                                if (!z2) {
                                                    TextOverflow.f10989a.getClass();
                                                    if (i6 == TextOverflow.f10991c) {
                                                        if (Constraints.h(j2) == Constraints.h(j3) || Constraints.g(j2) != Constraints.g(j3)) {
                                                        }
                                                    }
                                                    textLayoutResult = textLayoutResult5;
                                                    textLayoutResultProxy = textLayoutResultProxyD;
                                                    TextLayoutInput textLayoutInput2 = new TextLayoutInput(textLayoutInput.f10543a, textDelegate.f5951b, textLayoutInput.f10545c, textLayoutInput.d, textLayoutInput.f10546e, textLayoutInput.f10547f, textLayoutInput.g, textLayoutInput.f10548h, textLayoutInput.f10549i, j2, (DefaultConstructorMarker) null);
                                                    long jA = (((long) TextDelegateKt.a(multiParagraph.d)) << 32) | (((long) TextDelegateKt.a(multiParagraph.f10464e)) & BodyPartID.bodyIdMax);
                                                    IntSize.Companion companion4 = IntSize.f11020b;
                                                    textLayoutResult2 = new TextLayoutResult(textLayoutInput2, textLayoutResult.f10553b, ConstraintsKt.d(j2, jA), null);
                                                } else if (Constraints.h(j2) == Constraints.h(j3)) {
                                                }
                                                long j4 = textLayoutResult2.f10554c;
                                                Triple triple = new Triple(Integer.valueOf((int) (j4 >> 32)), Integer.valueOf((int) (j4 & BodyPartID.bodyIdMax)), textLayoutResult2);
                                                int iIntValue2 = ((Number) triple.f71716b).intValue();
                                                int iIntValue3 = ((Number) triple.f71717c).intValue();
                                                textLayoutResult3 = (TextLayoutResult) triple.d;
                                                if (Intrinsics.c(textLayoutResult, textLayoutResult3)) {
                                                    i4 = 0;
                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                } else {
                                                    textLayoutResultProxy2 = textLayoutResultProxy;
                                                    if (textLayoutResultProxy2 != null) {
                                                        r6 = textLayoutResultProxy2.f6013c;
                                                    } else {
                                                        r6 = measureResult;
                                                    }
                                                    ((SnapshotMutableStateImpl) legacyTextFieldState2.f5931i).setValue(new TextLayoutResultProxy(textLayoutResult3, null, r6, 2, null));
                                                    i4 = 0;
                                                    legacyTextFieldState2.p = false;
                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                    function1.invoke(textLayoutResult3);
                                                    CoreTextFieldKt.f(legacyTextFieldState2, textFieldValue, offsetMapping);
                                                }
                                                if (i3 == 1) {
                                                    iA = TextDelegateKt.a(textLayoutResult3.f10553b.b(i4));
                                                } else {
                                                    iA = i4;
                                                }
                                                ((SnapshotMutableStateImpl) legacyTextFieldState2.g).setValue(new Dp(density.k1(iA)));
                                                return measureScope.V0(iIntValue2, iIntValue3, MapsKt.i(new Pair(AlignmentLineKt.f9416a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.f9417b, Integer.valueOf(Math.round(textLayoutResult3.f10555e)))), new bp(3));
                                            }
                                        }
                                        textLayoutResult = textLayoutResult5;
                                        textLayoutResultProxy = textLayoutResultProxyD;
                                        textDelegate = textDelegate;
                                    }
                                } else {
                                    textLayoutResult = textLayoutResult4;
                                    textLayoutResultProxy = textLayoutResultProxyD;
                                    measureResult = null;
                                }
                                textDelegate.a(f9495b);
                                int iJ = Constraints.j(j2);
                                if (!z2) {
                                    TextOverflow.f10989a.getClass();
                                    if (i6 != TextOverflow.f10991c) {
                                        iH = Integer.MAX_VALUE;
                                    } else if (Constraints.d(j2)) {
                                        iH = Constraints.h(j2);
                                    } else {
                                        iH = Integer.MAX_VALUE;
                                    }
                                } else if (Constraints.d(j2)) {
                                    iH = Constraints.h(j2);
                                } else {
                                    iH = Integer.MAX_VALUE;
                                }
                                if (z2) {
                                    i5 = i7;
                                } else {
                                    TextOverflow.f10989a.getClass();
                                    if (i6 == TextOverflow.f10991c) {
                                        i5 = 1;
                                    } else {
                                        i5 = i7;
                                    }
                                }
                                if (iJ != iH) {
                                    MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate.f5957j;
                                    if (multiParagraphIntrinsics == null) {
                                        md.k("layoutIntrinsics must be called first");
                                        return measureResult;
                                    }
                                    iH = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.b()), iJ, iH);
                                }
                                MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate.f5957j;
                                if (multiParagraphIntrinsics2 == null) {
                                    md.k("layoutIntrinsics must be called first");
                                    return measureResult;
                                }
                                Constraints.Companion companion5 = Constraints.f10998b;
                                int iG = Constraints.g(j2);
                                companion5.getClass();
                                MultiParagraph multiParagraph2 = new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, iH, 0, iG), i5, textDelegate.f5954f, (DefaultConstructorMarker) null);
                                long jA2 = (((long) TextDelegateKt.a(multiParagraph2.f10464e)) & BodyPartID.bodyIdMax) | (((long) TextDelegateKt.a(multiParagraph2.d)) << 32);
                                IntSize.Companion companion6 = IntSize.f11020b;
                                textLayoutResult2 = new TextLayoutResult(new TextLayoutInput(textDelegate.f5950a, textDelegate.f5951b, textDelegate.f5956i, textDelegate.f5952c, textDelegate.f5953e, textDelegate.f5954f, textDelegate.g, f9495b, textDelegate.f5955h, j2, (DefaultConstructorMarker) null), multiParagraph2, ConstraintsKt.d(j2, jA2), null);
                                long j5 = textLayoutResult2.f10554c;
                                Triple triple2 = new Triple(Integer.valueOf((int) (j5 >> 32)), Integer.valueOf((int) (j5 & BodyPartID.bodyIdMax)), textLayoutResult2);
                                int iIntValue4 = ((Number) triple2.f71716b).intValue();
                                int iIntValue5 = ((Number) triple2.f71717c).intValue();
                                textLayoutResult3 = (TextLayoutResult) triple2.d;
                                if (Intrinsics.c(textLayoutResult, textLayoutResult3)) {
                                    textLayoutResultProxy2 = textLayoutResultProxy;
                                    if (textLayoutResultProxy2 != null) {
                                        r6 = textLayoutResultProxy2.f6013c;
                                    } else {
                                        r6 = measureResult;
                                    }
                                    ((SnapshotMutableStateImpl) legacyTextFieldState2.f5931i).setValue(new TextLayoutResultProxy(textLayoutResult3, null, r6, 2, null));
                                    i4 = 0;
                                    legacyTextFieldState2.p = false;
                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                    function1.invoke(textLayoutResult3);
                                    CoreTextFieldKt.f(legacyTextFieldState2, textFieldValue, offsetMapping);
                                } else {
                                    i4 = 0;
                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                }
                                if (i3 == 1) {
                                    iA = TextDelegateKt.a(textLayoutResult3.f10553b.b(i4));
                                } else {
                                    iA = i4;
                                }
                                ((SnapshotMutableStateImpl) legacyTextFieldState2.g).setValue(new Dp(density.k1(iA)));
                                return measureScope.V0(iIntValue4, iIntValue5, MapsKt.i(new Pair(AlignmentLineKt.f9416a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.f9417b, Integer.valueOf(Math.round(textLayoutResult3.f10555e)))), new bp(3));
                            } catch (Throwable th) {
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                throw th;
                            }
                        }
                    };
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CoreTextField$lambda$22$0$1");
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicy, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    composer.r();
                    HandleState handleStateA = legacyTextFieldState.a();
                    HandleState handleState = HandleState.None;
                    boolean z2 = this.f71661c;
                    if (handleStateA != handleState && legacyTextFieldState.c() != null) {
                        LayoutCoordinates layoutCoordinatesC = legacyTextFieldState.c();
                        layoutCoordinatesC.getClass();
                        z = layoutCoordinatesC.c() && z2;
                    }
                    CoreTextFieldKt.c(textFieldSelectionManager, z, composer, 0);
                    if (legacyTextFieldState.a() == HandleState.Cursor && !this.d && z2) {
                        composer.L(-714666198);
                        CoreTextFieldKt.d(textFieldSelectionManager, composer, 0);
                        composer.F();
                    } else {
                        composer.L(-714589318);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ kj(Modifier modifier, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List list, LVColorScheme lVColorScheme, boolean z, boolean z2, Function1 function1, Function0 function0, int i2) {
        this.g = modifier;
        this.f71664h = carouselItemTitlesUiModel;
        this.f71665i = list;
        this.f71666j = lVColorScheme;
        this.f71661c = z;
        this.d = z2;
        this.f71662e = function1;
        this.f71667k = function0;
        this.f71663f = i2;
    }
}

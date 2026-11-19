package com.kizitonwose.calendar.compose;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnPlacedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.core.CalendarMonth;
import defpackage.bi;
import defpackage.k0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\u0007²\u0006'\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function1;", "Lcom/kizitonwose/calendar/compose/ItemCoordinates;", "Lkotlin/ParameterName;", "name", "itemCoordinates", "", "currentOnItemPlaced", "compose_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CalendarMonthsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComposableLambdaImpl f35923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableLambdaImpl f35924b;

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35925a;

        static {
            int[] iArr = new int[ContentHeightMode.values().length];
            try {
                iArr[ContentHeightMode.Wrap.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContentHeightMode.Fill.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f35925a = iArr;
        }
    }

    static {
        ComposableSingletons$CalendarMonthsKt.f35935a.getClass();
        f35923a = ComposableSingletons$CalendarMonthsKt.f35936b;
        f35924b = ComposableSingletons$CalendarMonthsKt.f35937c;
    }

    public static final void a(LazyListScope lazyListScope, int i2, final Function1 function1, final ContentHeightMode contentHeightMode, final ComposableLambdaImpl composableLambdaImpl, final Function4 function4, final Function1 function2) {
        lazyListScope.getClass();
        contentHeightMode.getClass();
        LazyListScope.j(lazyListScope, i2, new k0(function1, 5), null, new ComposableLambdaImpl(-868131948, true, new Function4() { // from class: com.kizitonwose.calendar.compose.b
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // kotlin.jvm.functions.Function4
            public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                int i3;
                boolean z;
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Integer num = (Integer) obj2;
                int iIntValue = num.intValue();
                Composer composer = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                ComposableLambdaImpl composableLambdaImpl2 = CalendarMonthsKt.f35923a;
                lazyItemScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                } else {
                    i3 = iIntValue2;
                }
                if ((iIntValue2 & 48) == 0) {
                    i3 |= composer.d(iIntValue) ? 32 : 16;
                }
                int i4 = i3;
                boolean z2 = false;
                if (composer.p(i4 & 1, (i4 & 147) != 146)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    CalendarMonth calendarMonth = (CalendarMonth) function1.invoke(num);
                    int i5 = CalendarMonthsKt.WhenMappings.f35925a[contentHeightMode.ordinal()];
                    if (i5 == 1) {
                        z = false;
                    } else {
                        if (i5 != 2) {
                            v40.g();
                            return null;
                        }
                        z = true;
                    }
                    MutableState mutableStateL = SnapshotStateKt.l(function2, composer);
                    boolean zK = composer.K(calendarMonth.f35957b);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new ItemCoordinatesStore((Function1) mutableStateL.getF10755b());
                        composer.q(objX);
                    }
                    ItemCoordinatesStore itemCoordinatesStore = (ItemCoordinatesStore) objX;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CalendarMonths$lambda$1");
                    boolean zK2 = composer.K(itemCoordinatesStore);
                    Object objX2 = composer.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        CalendarMonthsKt$CalendarMonths$2$1$1 calendarMonthsKt$CalendarMonths$2$1$1 = new CalendarMonthsKt$CalendarMonths$2$1$1(1, itemCoordinatesStore, ItemCoordinatesStore.class, "onItemRootPlaced", "onItemRootPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V", 0);
                        composer.q(calendarMonthsKt$CalendarMonths$2$1$1);
                        objX2 = calendarMonthsKt$CalendarMonths$2$1$1;
                    }
                    Modifier modifierA = OnPlacedModifierKt.a(dTFunctionNameModifier, (Function1) ((KFunction) objX2));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierA);
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
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.a(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    CalendarMonthsKt.f35923a.D(lazyItemScope, calendarMonth, ComposableLambdaKt.b(791318209, new bi(z2, lazyItemScope, z, function4, calendarMonth, itemCoordinatesStore, composableLambdaImpl), composer), composer, Integer.valueOf((i4 & 14) | KyberEngine.KyberPolyBytes));
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            }
        }), 4);
    }
}

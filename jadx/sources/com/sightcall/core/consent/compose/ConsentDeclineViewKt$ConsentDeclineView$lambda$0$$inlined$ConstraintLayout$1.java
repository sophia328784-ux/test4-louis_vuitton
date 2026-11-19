package com.sightcall.core.consent.compose;

import android.content.Context;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.text.TextStyle;
import androidx.constraintlayout.compose.CompositionSource;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutScope;
import androidx.constraintlayout.compose.RawConstraintSet;
import com.sightcall.core.R;
import com.sightcall.graphik.Colors;
import com.sightcall.graphik.ColorsKt;
import com.sightcall.graphik.composent.ButtonsKt;
import com.sightcall.graphik.composent.DividersKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "invoke", "(Landroidx/compose/runtime/Composer;I)V", "<anonymous>"}, k = 3, mv = {2, 3, 0})
public final class ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ Channel $channel;
    final /* synthetic */ Ref $compositionSource;
    final /* synthetic */ MutableState $contentTracker;
    final /* synthetic */ Context $context$inlined;
    final /* synthetic */ String $declineBody$inlined;
    final /* synthetic */ String $declineTitle$inlined;
    final /* synthetic */ MutableState $end;
    final /* synthetic */ Function0 $onDeclineBack$inlined;
    final /* synthetic */ ConstraintLayoutScope $scope;
    final /* synthetic */ MutableState $start;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1(MutableState mutableState, Ref ref, ConstraintLayoutScope constraintLayoutScope, Channel channel, MutableState mutableState2, MutableState mutableState3, String str, String str2, Context context, Function0 function0) {
        super(2);
        this.$contentTracker = mutableState;
        this.$compositionSource = ref;
        this.$scope = constraintLayoutScope;
        this.$channel = channel;
        this.$start = mutableState2;
        this.$end = mutableState3;
        this.$declineTitle$inlined = str;
        this.$declineBody$inlined = str2;
        this.$context$inlined = context;
        this.$onDeclineBack$inlined = function0;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0139  */
    /* JADX WARN: Code duplicated, block: B:29:0x017e  */
    /* JADX WARN: Code duplicated, block: B:33:0x01b0  */
    public final void invoke(Composer composer, int i2) {
        Object obj;
        boolean zK;
        Object objX;
        Object obj2;
        Object objX2;
        boolean zY;
        final ConstraintLayoutScope constraintLayoutScope;
        final MutableState mutableState;
        final MutableState mutableState2;
        final Channel channel;
        Object objX3;
        if ((i2 & 3) == 2 && composer.i()) {
            composer.D();
            return;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        this.$contentTracker.setValue(Unit.f71739a);
        Ref ref = this.$compositionSource;
        if (ref.f9828a == CompositionSource.Unknown) {
            ref.f9828a = CompositionSource.Content;
        }
        this.$scope.d();
        ConstraintLayoutScope constraintLayoutScope2 = this.$scope;
        composer.L(876141467);
        ConstraintLayoutScope constraintLayoutScope3 = ConstraintLayoutScope.this;
        ConstrainedLayoutReference constrainedLayoutReferenceB = constraintLayoutScope3.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB2 = constraintLayoutScope3.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB3 = constraintLayoutScope3.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB4 = constraintLayoutScope3.b();
        ConstrainedLayoutReference constrainedLayoutReferenceB5 = constraintLayoutScope3.b();
        TextStyle textStyle = MaterialTheme.b(composer).g;
        Colors colors = (Colors) composer.k(ColorsKt.getLocalVisionAppColors());
        int i3 = Colors.$stable;
        TextStyle textStyleA = TextStyle.a(textStyle, colors.getConsentTitleTextColor(composer, i3), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
        boolean zK2 = composer.K(constrainedLayoutReferenceB);
        Object objX4 = composer.x();
        Object obj3 = Composer.Companion.f7939a;
        if (zK2 || objX4 == obj3) {
            objX4 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$1$1(constrainedLayoutReferenceB);
            composer.q(objX4);
        }
        TextKt.b(this.$declineTitle$inlined, ConstraintLayoutScope.a(constrainedLayoutReferenceB2, (Function1) objX4), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA, composer, 0, 65532);
        boolean zK3 = composer.K(constrainedLayoutReferenceB2);
        Object objX5 = composer.x();
        if (!zK3) {
            obj = obj3;
            if (objX5 == obj) {
            }
            DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX5), composer, 0, 0);
            TextStyle textStyleA2 = TextStyle.a(MaterialTheme.b(composer).f7450k, ((Colors) composer.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer, i3), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
            zK = composer.K(constrainedLayoutReferenceB3);
            objX = composer.x();
            if (zK || objX == obj) {
                objX = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
                composer.q(objX);
            }
            obj2 = obj;
            TextKt.b(this.$declineBody$inlined, ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA2, composer, 0, 65532);
            String string = this.$context$inlined.getString(R.string.consent_declined_button_back);
            string.getClass();
            Function0 function0 = this.$onDeclineBack$inlined;
            objX2 = composer.x();
            if (objX2 == obj2) {
                objX2 = ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1.INSTANCE;
                composer.q(objX2);
            }
            ButtonsKt.LargeConfirmButton(string, function0, ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX2), composer, 0, 0);
            composer.F();
            zY = composer.y(this.$scope) | composer.y(this.$channel);
            constraintLayoutScope = this.$scope;
            mutableState = this.$start;
            mutableState2 = this.$end;
            channel = this.$channel;
            objX3 = composer.x();
            if (zY || objX3 == obj2) {
                objX3 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    public final void invoke() {
                        RawConstraintSet rawConstraintSet = new RawConstraintSet(constraintLayoutScope.f11238a.clone());
                        if (mutableState.getF10755b() != null && mutableState2.getF10755b() != null) {
                            channel.b(rawConstraintSet);
                        } else {
                            mutableState.setValue(rawConstraintSet);
                            mutableState2.setValue(mutableState.getF10755b());
                        }
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public /* bridge */ /* synthetic */ Object mo47invoke() {
                        invoke();
                        return Unit.f71739a;
                    }
                };
                composer.q(objX3);
            }
            EffectsKt.i((Function0) objX3, composer);
        }
        obj = obj3;
        objX5 = new ConsentDeclineViewKt$ConsentDeclineView$1$1$2$1(constrainedLayoutReferenceB2);
        composer.q(objX5);
        DividersKt.VisionDivider(ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX5), composer, 0, 0);
        TextStyle textStyleA3 = TextStyle.a(MaterialTheme.b(composer).f7450k, ((Colors) composer.k(ColorsKt.getLocalVisionAppColors())).getConsentBodyTextColor(composer, i3), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
        zK = composer.K(constrainedLayoutReferenceB3);
        objX = composer.x();
        if (zK) {
            objX = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
            composer.q(objX);
        } else {
            objX = new ConsentDeclineViewKt$ConsentDeclineView$1$1$3$1(constrainedLayoutReferenceB3);
            composer.q(objX);
        }
        obj2 = obj;
        TextKt.b(this.$declineBody$inlined, ConstraintLayoutScope.a(constrainedLayoutReferenceB4, (Function1) objX), 0L, 0L, 0L, 0L, 0, false, 0, 0, textStyleA3, composer, 0, 65532);
        String string2 = this.$context$inlined.getString(R.string.consent_declined_button_back);
        string2.getClass();
        Function0 function1 = this.$onDeclineBack$inlined;
        objX2 = composer.x();
        if (objX2 == obj2) {
            objX2 = ConsentDeclineViewKt$ConsentDeclineView$1$1$4$1.INSTANCE;
            composer.q(objX2);
        }
        ButtonsKt.LargeConfirmButton(string2, function1, ConstraintLayoutScope.a(constrainedLayoutReferenceB5, (Function1) objX2), composer, 0, 0);
        composer.F();
        zY = composer.y(this.$scope) | composer.y(this.$channel);
        constraintLayoutScope = this.$scope;
        mutableState = this.$start;
        mutableState2 = this.$end;
        channel = this.$channel;
        objX3 = composer.x();
        if (zY) {
            objX3 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                public final void invoke() {
                    RawConstraintSet rawConstraintSet = new RawConstraintSet(constraintLayoutScope.f11238a.clone());
                    if (mutableState.getF10755b() != null && mutableState2.getF10755b() != null) {
                        channel.b(rawConstraintSet);
                    } else {
                        mutableState.setValue(rawConstraintSet);
                        mutableState2.setValue(mutableState.getF10755b());
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public /* bridge */ /* synthetic */ Object mo47invoke() {
                    invoke();
                    return Unit.f71739a;
                }
            };
            composer.q(objX3);
        } else {
            objX3 = new Function0<Unit>() { // from class: com.sightcall.core.consent.compose.ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                public final void invoke() {
                    RawConstraintSet rawConstraintSet = new RawConstraintSet(constraintLayoutScope.f11238a.clone());
                    if (mutableState.getF10755b() != null && mutableState2.getF10755b() != null) {
                        channel.b(rawConstraintSet);
                    } else {
                        mutableState.setValue(rawConstraintSet);
                        mutableState2.setValue(mutableState.getF10755b());
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public /* bridge */ /* synthetic */ Object mo47invoke() {
                    invoke();
                    return Unit.f71739a;
                }
            };
            composer.q(objX3);
        }
        EffectsKt.i((Function0) objX3, composer);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.f71739a;
    }
}

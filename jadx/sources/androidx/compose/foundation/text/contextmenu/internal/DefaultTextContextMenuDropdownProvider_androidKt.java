package androidx.compose.foundation.text.contextmenu.internal;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProvider;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.dt;
import defpackage.i6;
import defpackage.ll0;
import defpackage.rs;
import defpackage.ss;
import defpackage.tf;
import defpackage.v1;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", DbParams.KEY_DATA, "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DefaultTextContextMenuDropdownProvider_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PopupProperties f6100a = new PopupProperties(true, false, false, false, false, 30, (DefaultConstructorMarker) null);

    public static final void a(final TextContextMenuSession textContextMenuSession, final TextContextMenuData textContextMenuData, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1904307118);
        int i3 = 2;
        int i4 = (gapComposerH.K(textContextMenuSession) ? 4 : 2) | i2 | (gapComposerH.y(textContextMenuData) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-1009482584);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            gapComposerH.Z(false);
            boolean zY = gapComposerH.y(textContextMenuData) | ((i4 & 14) == 4) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new Function1() { // from class: androidx.compose.foundation.text.contextmenu.internal.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        ContextMenuScope contextMenuScope = (ContextMenuScope) obj;
                        PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                        List list = textContextMenuData.f6068a;
                        int size = list.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i5);
                            if (textContextMenuComponent instanceof TextContextMenuItem) {
                                final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                                ContextMenuScope.b(contextMenuScope, new defpackage.c(textContextMenuItem, 20), textContextMenuItem.f6070c != 0 ? new ComposableLambdaImpl(-1930700965, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object A(Object obj2, Object obj3, Object obj4) {
                                        long j2 = ((Color) obj2).f8872a;
                                        Composer composer2 = (Composer) obj3;
                                        int iIntValue = ((Number) obj4).intValue();
                                        if ((iIntValue & 6) == 0) {
                                            iIntValue |= composer2.e(j2) ? 4 : 2;
                                        }
                                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                            DefaultTextContextMenuDropdownProvider_androidKt.b(textContextMenuItem.f6070c, j2, composer2, (iIntValue << 3) & 112);
                                        } else {
                                            composer2.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }) : null, new dt(textContextMenuItem, textContextMenuSession, 0), 6);
                            } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                                TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                                final Context context2 = context;
                                if (context2 != null) {
                                    int i6 = textContextMenuTextClassificationItem.f6077c;
                                    final TextClassification textClassification = textContextMenuTextClassificationItem.f6076b;
                                    if (i6 < 0) {
                                        ll0 ll0Var = new ll0(textClassification, 24);
                                        final Drawable icon = textClassification.getIcon();
                                        ContextMenuScope.b(contextMenuScope, ll0Var, icon != null ? new ComposableLambdaImpl(-1123224187, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$2$1
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object A(Object obj2, Object obj3, Object obj4) {
                                                long j2 = ((Color) obj2).f8872a;
                                                Composer composer2 = (Composer) obj3;
                                                int iIntValue = ((Number) obj4).intValue();
                                                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                                    TextContextMenuHelperApi28.f6107a.a(icon, composer2, 48);
                                                } else {
                                                    composer2.D();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }) : null, new Function0() { // from class: androidx.compose.foundation.text.contextmenu.internal.e
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() throws PendingIntent.CanceledException {
                                                TextClassification textClassification2 = textClassification;
                                                String text = textClassification2.getText();
                                                PendingIntent activity = PendingIntent.getActivity(context2, text != null ? text.hashCode() : 0, textClassification2.getIntent(), 201326592);
                                                if (Build.VERSION.SDK_INT >= 34) {
                                                    TextClassificationHelper34.a(activity);
                                                } else {
                                                    activity.send();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, 6);
                                    } else {
                                        final RemoteAction remoteAction = textClassification.getActions().get(i6);
                                        ContextMenuScope.b(contextMenuScope, new ll0(remoteAction, 25), ((i6 == 0) || remoteAction.shouldShowIcon()) ? new ComposableLambdaImpl(-1261173016, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$5
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object A(Object obj2, Object obj3, Object obj4) {
                                                long j2 = ((Color) obj2).f8872a;
                                                Composer composer2 = (Composer) obj3;
                                                int iIntValue = ((Number) obj4).intValue();
                                                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                                    TextContextMenuHelperApi28.f6107a.b(remoteAction.getIcon(), composer2, 48);
                                                } else {
                                                    composer2.D();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }) : null, new Function0() { // from class: androidx.compose.foundation.text.contextmenu.internal.f
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() throws PendingIntent.CanceledException {
                                                PendingIntent actionIntent = remoteAction.getActionIntent();
                                                if (Build.VERSION.SDK_INT >= 34) {
                                                    TextClassificationHelper34.a(actionIntent);
                                                } else {
                                                    actionIntent.send();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, 6);
                                    }
                                }
                            } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                                SnapshotStateList snapshotStateList = contextMenuScope.f4323b;
                                ComposableSingletons$ContextMenuUiKt.f4313a.getClass();
                                snapshotStateList.add(ComposableSingletons$ContextMenuUiKt.f4315c);
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            ContextMenuUiKt.b(null, null, (Function1) objX, gapComposerH, 0, 3);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(textContextMenuSession, textContextMenuData, i2, i3);
        }
    }

    public static final void b(final int i2, final long j2, Composer composer, final int i3) {
        final int i4;
        int i5;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        GapComposer gapComposerH = composer.h(-1240244237);
        if ((i3 & 6) == 0) {
            i4 = i2;
            i5 = i3 | (gapComposerH.d(i4) ? 4 : 2);
        } else {
            i4 = i2;
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.e(j2) ? 32 : 16;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zK = ((i5 & 14) == 4) | gapComposerH.K(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = Integer.valueOf(context.obtainStyledAttributes(new int[]{i4}).getResourceId(0, -1));
                gapComposerH.q(objX);
            }
            int iIntValue = ((Number) objX).intValue();
            if (iIntValue == -1) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i6 = 1;
                function2 = new Function2() { // from class: ct
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i7 = i6;
                        Composer composer2 = (Composer) obj;
                        ((Integer) obj2).intValue();
                        switch (i7) {
                            case 0:
                                DefaultTextContextMenuDropdownProvider_androidKt.b(i4, j2, composer2, RecomposeScopeImplKt.a(i3 | 1));
                                break;
                            default:
                                DefaultTextContextMenuDropdownProvider_androidKt.b(i4, j2, composer2, RecomposeScopeImplKt.a(i3 | 1));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                Painter painterA = PainterResources_androidKt.a(iIntValue, gapComposerH, 0);
                boolean z = (i5 & 112) == 32;
                Object objX2 = gapComposerH.x();
                if (z || objX2 == composer$Companion$Empty$1) {
                    objX2 = j2 == 16 ? null : ColorFilter.Companion.a(ColorFilter.f8873b, j2);
                    gapComposerH.q(objX2);
                }
                Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("IconBox-RPmYEkk"), ContextMenuSpec.f4331j);
                ContentScale.f9447a.getClass();
                BoxKt.a(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9450c, Call.Parameters.DEFAULT_CAMERA_ZOOM, (ColorFilter) objX2, 22), gapComposerH, 0);
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i7 = 0;
            function2 = new Function2() { // from class: ct
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i8 = i7;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).intValue();
                    switch (i8) {
                        case 0:
                            DefaultTextContextMenuDropdownProvider_androidKt.b(i2, j2, composer2, RecomposeScopeImplKt.a(i3 | 1));
                            break;
                        default:
                            DefaultTextContextMenuDropdownProvider_androidKt.b(i2, j2, composer2, RecomposeScopeImplKt.a(i3 | 1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }

    public static final void c(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-2040393164);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(textContextMenuSession) : gapComposerH.y(textContextMenuSession) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(textContextMenuDataProvider) : gapComposerH.y(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        boolean z = false;
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = (i3 & 112) == 32 || ((i3 & 64) != 0 && gapComposerH.K(textContextMenuDataProvider));
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new MaintainWindowPositionPopupPositionProvider(new ContextMenuPopupPositionProvider(new tf(textContextMenuDataProvider, function0, 29), (Function2) null, 2, (DefaultConstructorMarker) null));
                gapComposerH.q(objX);
            }
            MaintainWindowPositionPopupPositionProvider maintainWindowPositionPopupPositionProvider = (MaintainWindowPositionPopupPositionProvider) objX;
            if ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposerH.y(textContextMenuSession))) {
                z = true;
            }
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new ss(textContextMenuSession, i4);
                gapComposerH.q(objX2);
            }
            AndroidPopup_androidKt.a(maintainWindowPositionPopupPositionProvider, (Function0) objX2, f6100a, ComposableLambdaKt.b(1315155414, new c(textContextMenuDataProvider, textContextMenuSession), gapComposerH), gapComposerH, 3456, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(textContextMenuSession, textContextMenuDataProvider, function0, i2, 11);
        }
    }

    public static final void d(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ProvideDefaultTextContextMenuDropdown");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1392105195);
        int i4 = 2;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextContextMenuProviderKt.f6153a;
            ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6097a.getClass();
            composableLambdaImpl2 = composableLambdaImpl;
            BasicTextContextMenuProviderKt.a(modifier2, dynamicProvidableCompositionLocal, ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.f6098b, composableLambdaImpl2, gapComposerH, (i3 & 14) | 432 | ((i3 << 6) & 7168));
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i6(modifier2, composableLambdaImpl2, i2, i4);
        }
    }
}

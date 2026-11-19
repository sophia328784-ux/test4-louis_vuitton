package defpackage;

import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v00 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GenericBottomSheet f80459c;

    public /* synthetic */ v00(GenericBottomSheet genericBottomSheet, int i2) {
        this.f80458b = i2;
        this.f80459c = genericBottomSheet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object[] objArr = 0;
        final int i2 = 2;
        final int i3 = 1;
        switch (this.f80458b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                GenericBottomSheet.Companion companion = GenericBottomSheet.R;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-240961057, new v00(this.f80459c, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                GenericBottomSheet.Companion companion2 = GenericBottomSheet.R;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final GenericBottomSheet genericBottomSheet = this.f80459c;
                    Bundle arguments = genericBottomSheet.getArguments();
                    String string = arguments != null ? arguments.getString("KEY_TITLE") : null;
                    Bundle arguments2 = genericBottomSheet.getArguments();
                    String string2 = arguments2 != null ? arguments2.getString("KEY_MESSAGE") : null;
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str = string2;
                    Bundle arguments3 = genericBottomSheet.getArguments();
                    String string3 = arguments3 != null ? arguments3.getString("KEY_POSITIVE_TEXT") : null;
                    Bundle arguments4 = genericBottomSheet.getArguments();
                    String string4 = arguments4 != null ? arguments4.getString("KEY_NEGATIVE_TEXT") : null;
                    boolean zY = composer2.y(genericBottomSheet);
                    Object objX = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        objX = new Function0() { // from class: w00
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i4 = objArr2;
                                GenericBottomSheet genericBottomSheet2 = genericBottomSheet;
                                switch (i4) {
                                    case 0:
                                        GenericBottomSheet.OnPositiveClickListener onPositiveClickListener = genericBottomSheet2.O;
                                        if (onPositiveClickListener != null) {
                                            onPositiveClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    case 1:
                                        GenericBottomSheet.OnNegativeClickListener onNegativeClickListener = genericBottomSheet2.P;
                                        if (onNegativeClickListener != null) {
                                            onNegativeClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    default:
                                        Function0 function0 = genericBottomSheet2.Q;
                                        if (function0 != null) {
                                            function0.mo47invoke();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zY2 = composer2.y(genericBottomSheet);
                    Object objX2 = composer2.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function0() { // from class: w00
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i4 = i3;
                                GenericBottomSheet genericBottomSheet2 = genericBottomSheet;
                                switch (i4) {
                                    case 0:
                                        GenericBottomSheet.OnPositiveClickListener onPositiveClickListener = genericBottomSheet2.O;
                                        if (onPositiveClickListener != null) {
                                            onPositiveClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    case 1:
                                        GenericBottomSheet.OnNegativeClickListener onNegativeClickListener = genericBottomSheet2.P;
                                        if (onNegativeClickListener != null) {
                                            onNegativeClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    default:
                                        Function0 function1 = genericBottomSheet2.Q;
                                        if (function1 != null) {
                                            function1.mo47invoke();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    boolean zY3 = composer2.y(genericBottomSheet);
                    Object objX3 = composer2.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new Function0() { // from class: w00
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i4 = i2;
                                GenericBottomSheet genericBottomSheet2 = genericBottomSheet;
                                switch (i4) {
                                    case 0:
                                        GenericBottomSheet.OnPositiveClickListener onPositiveClickListener = genericBottomSheet2.O;
                                        if (onPositiveClickListener != null) {
                                            onPositiveClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    case 1:
                                        GenericBottomSheet.OnNegativeClickListener onNegativeClickListener = genericBottomSheet2.P;
                                        if (onNegativeClickListener != null) {
                                            onNegativeClickListener.a();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                    default:
                                        Function0 function2 = genericBottomSheet2.Q;
                                        if (function2 != null) {
                                            function2.mo47invoke();
                                        }
                                        genericBottomSheet2.dismiss();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX3);
                    }
                    genericBottomSheet.V(string, str, string3, string4, function0, function1, (Function0) objX3, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

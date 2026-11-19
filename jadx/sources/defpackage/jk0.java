package defpackage;

import android.content.Context;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPEntryUiModel f71417c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f71418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f71419f;
    public final /* synthetic */ Function0 g;

    public /* synthetic */ jk0(PLPEntryUiModel pLPEntryUiModel, String str, Context context, int i2, Function0 function0, int i3) {
        this.f71416b = i3;
        this.f71417c = pLPEntryUiModel;
        this.d = str;
        this.f71418e = context;
        this.f71419f = i2;
        this.g = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71416b;
        Function0 function0 = this.g;
        int i3 = this.f71419f;
        Context context = this.f71418e;
        String str = this.d;
        PLPEntryUiModel pLPEntryUiModel = this.f71417c;
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        switch (i2) {
            case 0:
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10292f);
                if (Intrinsics.c(pLPEntryUiModel.f55373b, str)) {
                    String string = context.getString(R.string.alt_selected);
                    string.getClass();
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver, string);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, pLPEntryUiModel.f55374c);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 1, i3, 1));
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new ee0(function0, 12));
                break;
            default:
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10292f);
                if (Intrinsics.c(pLPEntryUiModel.f55373b, str)) {
                    String string2 = context.getString(R.string.alt_selected);
                    string2.getClass();
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver, string2);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, pLPEntryUiModel.f55374c);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 1, i3, 1));
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new w11(function0, 3));
                break;
        }
        return Unit.f71739a;
    }
}

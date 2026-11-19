package androidx.compose.foundation.text.contextmenu.internal;

import android.graphics.drawable.Drawable;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.window.PopupProperties;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6114b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6115c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(TextContextMenuHelperApi28 textContextMenuHelperApi28, Drawable drawable, int i2) {
        this.f6115c = textContextMenuHelperApi28;
        this.d = drawable;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f6114b;
        Object obj3 = this.d;
        Object obj4 = this.f6115c;
        switch (i2) {
            case 0:
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj4;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zK = composer.K(textContextMenuDataProvider);
                    Object objX = composer.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = SnapshotStateKt.e(new DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1(0, textContextMenuDataProvider, TextContextMenuDataProvider.class, DbParams.KEY_DATA, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", 0));
                        composer.q(objX);
                    }
                    DefaultTextContextMenuDropdownProvider_androidKt.a(textContextMenuSession, (TextContextMenuData) ((State) objX).getF10755b(), composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                ((TextContextMenuHelperApi28) obj4).a((Drawable) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ c(TextContextMenuDataProvider textContextMenuDataProvider, TextContextMenuSession textContextMenuSession) {
        this.f6115c = textContextMenuDataProvider;
        this.d = textContextMenuSession;
    }
}

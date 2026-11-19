package defpackage;

import android.content.Intent;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.account.editavatar.AvatarTrackingUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarActivity;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import defpackage.pv;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditAvatarActivity f78930c;

    public /* synthetic */ pv(EditAvatarActivity editAvatarActivity, int i2) {
        this.f78929b = i2;
        this.f78930c = editAvatarActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78929b;
        final EditAvatarActivity editAvatarActivity = this.f78930c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                EditAvatarActivity.Companion companion = EditAvatarActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-756336549, new Function2() { // from class: com.vuitton.android.presentation.screen.account.editavatar.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            EditAvatarActivity.Companion companion2 = EditAvatarActivity.q;
                            int i3 = 1;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                EditAvatarActivity editAvatarActivity2 = editAvatarActivity;
                                EditAvatarViewModel editAvatarViewModel = (EditAvatarViewModel) editAvatarActivity2.p.getF71699b();
                                boolean zY = composer2.y(editAvatarActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    EditAvatarActivity$onCreate$1$1$1$1 editAvatarActivity$onCreate$1$1$1$1 = new EditAvatarActivity$onCreate$1$1$1$1(0, editAvatarActivity2, EditAvatarActivity.class, "onBackClicked", "onBackClicked()V", 0);
                                    composer2.q(editAvatarActivity$onCreate$1$1$1$1);
                                    objX = editAvatarActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer2.y(editAvatarActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new pv(editAvatarActivity2, i3);
                                    composer2.q(objX2);
                                }
                                EditAvatarComposableKt.a(editAvatarViewModel, function0, (Function2) objX2, composer2, 0);
                                boolean zY3 = composer2.y(editAvatarActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    EditAvatarActivity$onCreate$1$1$3$1 editAvatarActivity$onCreate$1$1$3$1 = new EditAvatarActivity$onCreate$1$1$3$1(0, editAvatarActivity2, EditAvatarActivity.class, "onBackClicked", "onBackClicked()V", 0);
                                    composer2.q(editAvatarActivity$onCreate$1$1$3$1);
                                    objX3 = editAvatarActivity$onCreate$1$1$3$1;
                                }
                                BackHandlerKt.a(false, (Function0) ((KFunction) objX3), composer2, 0, 1);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) obj;
                String str = (String) obj2;
                EditAvatarActivity.Companion companion2 = EditAvatarActivity.q;
                avatarItemUiModel.getClass();
                str.getClass();
                ((EditAvatarViewModel) editAvatarActivity.p.getF71699b()).d6(new AvatarTrackingUiModel.SaveEdit(avatarItemUiModel.f52326a));
                Intent intent = new Intent();
                intent.putExtra("extra_success_message", str);
                editAvatarActivity.setResult(-1, intent);
                editAvatarActivity.finish();
                break;
        }
        return Unit.f71739a;
    }
}

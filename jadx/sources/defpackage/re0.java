package defpackage;

import android.os.Parcelable;
import com.vuitton.android.presentation.screen.cart.models.CartItemIdUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class re0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79325c;
    public final /* synthetic */ CartItemUiModel d;

    public /* synthetic */ re0(Function1 function1, CartItemUiModel cartItemUiModel, int i2) {
        this.f79324b = i2;
        this.f79325c = function1;
        this.d = cartItemUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79324b;
        CartItemUiModel cartItemUiModel = this.d;
        Function1 function1 = this.f79325c;
        switch (i2) {
            case 0:
                function1.invoke(cartItemUiModel);
                break;
            case 1:
                function1.invoke(cartItemUiModel);
                break;
            case 2:
                function1.invoke(cartItemUiModel);
                break;
            case 3:
                String str = cartItemUiModel.f55151j;
                Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
                str.getClass();
                function1.invoke(new CartItemIdUiModel(str));
                break;
            default:
                String str2 = cartItemUiModel.f55151j;
                Parcelable.Creator<CartItemIdUiModel> creator2 = CartItemIdUiModel.CREATOR;
                str2.getClass();
                function1.invoke(new CartItemIdUiModel(str2));
                break;
        }
        return Unit.f71739a;
    }
}

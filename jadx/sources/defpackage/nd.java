package defpackage;

import android.os.Parcelable;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.cart.models.CartItemIdUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaDestinations;
import com.vuitton.android.presentation.screen.osa.OsaDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nd implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76498c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76500f;

    public /* synthetic */ nd(MutableState mutableState, String str, Function1 function1, boolean z) {
        this.f76497b = 2;
        this.f76499e = mutableState;
        this.f76500f = str;
        this.d = function1;
        this.f76498c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76497b;
        Object obj = this.f76500f;
        Object obj2 = this.f76499e;
        boolean z = this.f76498c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj3;
                BeautyAddToCartUiModel beautyAddToCartUiModel = (BeautyAddToCartUiModel) obj2;
                Function0 function0 = (Function0) obj;
                if (z) {
                    function1.invoke(beautyAddToCartUiModel);
                } else {
                    function0.mo47invoke();
                }
                break;
            case 1:
                Function3 function3 = (Function3) obj2;
                BookingExperienceViewState bookingExperienceViewState = (BookingExperienceViewState) obj;
                Function1 function2 = (Function1) obj3;
                int i3 = BookingReservationScreenKt.f54457b;
                if (z) {
                    BookingExperienceViewState.Success success = (BookingExperienceViewState.Success) bookingExperienceViewState;
                    String str = success.f54504c;
                    PreBookId preBookId = str != null ? new PreBookId(str) : null;
                    String str2 = success.d;
                    function3.A(preBookId, str2 != null ? new BookingId(str2) : null, success.f54502a);
                } else {
                    function2.invoke(((BookingExperienceViewState.Success) bookingExperienceViewState).f54502a);
                }
                break;
            case 2:
                ((MutableState) obj2).setValue(new ExposedDropdownMenuAnchorType((String) obj));
                ((Function1) obj3).invoke(Boolean.valueOf(!z));
                break;
            case 3:
                Function1 function4 = (Function1) obj3;
                Function1 function5 = (Function1) obj;
                String str3 = ((CartItemUiModel) obj2).f55151j;
                if (z) {
                    Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
                    str3.getClass();
                    function4.invoke(new CartItemIdUiModel(str3));
                } else {
                    Parcelable.Creator<CartItemIdUiModel> creator2 = CartItemIdUiModel.CREATOR;
                    str3.getClass();
                    function5.invoke(new CartItemIdUiModel(str3));
                }
                break;
            default:
                OsaActivity osaActivity = (OsaActivity) obj3;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj2;
                ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj;
                OsaActivity.Companion companion = OsaActivity.u;
                if (!z) {
                    managedActivityResultLauncher = managedActivityResultLauncher2;
                }
                IntentExtensionKt.b(OsaDestinationsKt.a(OsaDestinations.ToRegisterPage.f60570a, osaActivity), managedActivityResultLauncher);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ nd(OsaActivity osaActivity, boolean z, ManagedActivityResultLauncher managedActivityResultLauncher, ManagedActivityResultLauncher managedActivityResultLauncher2) {
        this.f76497b = 4;
        this.d = osaActivity;
        this.f76498c = z;
        this.f76499e = managedActivityResultLauncher;
        this.f76500f = managedActivityResultLauncher2;
    }

    public /* synthetic */ nd(boolean z, Function1 function1, Object obj, Function function, int i2) {
        this.f76497b = i2;
        this.f76498c = z;
        this.d = function1;
        this.f76499e = obj;
        this.f76500f = function;
    }

    public /* synthetic */ nd(boolean z, Function3 function3, BookingExperienceViewState bookingExperienceViewState, Function1 function1) {
        this.f76497b = 1;
        this.f76498c = z;
        this.f76499e = function3;
        this.f76500f = bookingExperienceViewState;
        this.d = function1;
    }
}

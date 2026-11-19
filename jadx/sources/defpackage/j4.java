package defpackage;

import androidx.camera.camera2.internal.SupportedSurfaceCombination;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j4 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71285c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Serializable f71287f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71288h;

    public /* synthetic */ j4(Object obj, Object obj2, Object obj3, Serializable serializable, Object obj4, Object obj5, int i2) {
        this.f71284b = i2;
        this.f71285c = obj;
        this.d = obj2;
        this.f71286e = obj3;
        this.f71287f = serializable;
        this.f71288h = obj4;
        this.g = obj5;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71284b;
        Object obj = this.g;
        Object obj2 = this.f71288h;
        Serializable serializable = this.f71287f;
        Object obj3 = this.f71286e;
        Object obj4 = this.d;
        Object obj5 = this.f71285c;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj4;
                TrackingAuthOrigin trackingAuthOrigin = (TrackingAuthOrigin) obj3;
                TrackingAuthEntryPoint trackingAuthEntryPoint = (TrackingAuthEntryPoint) serializable;
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj2;
                MutableState mutableState = (MutableState) obj;
                if (((AddressAutocompleteScreenContext) obj5) == AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS && function1 != null) {
                    function1.invoke(new NativeRegisterAddressTrackingUiModel.OnSendSearchClickedEvent(trackingAuthOrigin, trackingAuthEntryPoint, ((AddressAutocompleteViewState) mutableState.getF10755b()).f52118c.length()));
                }
                addressAutocompleteViewModel.w7();
                return Unit.f71739a;
            case 1:
                Function1 function2 = (Function1) obj4;
                TrackingAuthOrigin trackingAuthOrigin2 = (TrackingAuthOrigin) obj3;
                TrackingAuthEntryPoint trackingAuthEntryPoint2 = (TrackingAuthEntryPoint) serializable;
                Function0 function0 = (Function0) obj2;
                MutableState mutableState2 = (MutableState) obj;
                if (((AddressAutocompleteScreenContext) obj5) == AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS && function2 != null) {
                    function2.invoke(new NativeRegisterAddressTrackingUiModel.OnCloseSearchClickedEvent(trackingAuthOrigin2, trackingAuthEntryPoint2, ((AddressAutocompleteViewState) mutableState2.getF10755b()).f52118c.length()));
                }
                function0.mo47invoke();
                return Unit.f71739a;
            default:
                return Boolean.valueOf(((SupportedSurfaceCombination) obj5).a((SupportedSurfaceCombination.FeatureSettings) obj4, (List) obj3, (HashMap) serializable, (ArrayList) obj2, (ArrayList) obj));
        }
    }
}
